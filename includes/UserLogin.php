<?php

/* Performs login checks and $_SESSION initialisation */

define('UL_OK',  0);		/* User verified, session initialised */
define('UL_NOTVALID', 1);	/* User/password do not agree */
define('UL_BLOCKED', 2);	/* Account locked, too many failed logins */
define('UL_CONFIGERR', 3);	/* Configuration error in webERP or server */
define('UL_SHOWLOGIN', 4);  //
define('UL_MAINTENANCE', 5);//

/*	UserLogin
 *  Function to validate user name,  perform validity checks and initialise
 *  $_SESSION data.
 *  Returns:
 *	See define() statements above.
 */

function userLogin($Name, $Password, $SysAdminEmail = '') {
	//传入企业微信变量准备发送错误通知
	global $WorkWeixinCORP_ID;//企业微信公司ID
	global $WorkWeixinAPPROVAL_APP_SECRET;//自建运用secret
	global $WorkWeixinAPPROVAL_APP_ID;//默认自建运用id
	global $SysAdminWorkWeixinID;//管理员ID
	global $WorkWeixin2CNCERPurl;//CNCERP地址
	global $debug;
	global $PathPrefix;
	if (!isset($_SESSION['AccessLevel']) OR $_SESSION['AccessLevel'] == '' OR
		(isset($Name) AND $Name != '')) {
	/* if not logged in */
		$_SESSION['AccessLevel'] = '';
		$_SESSION['CustomerID'] = '';
		$_SESSION['UserBranch'] = '';
		$_SESSION['SalesmanLogin'] = '';
		$_SESSION['Module'] = '';
		$_SESSION['PageSize'] = '';
		$_SESSION['UserStockLocation'] = '';
		$_SESSION['AttemptsCounter']++;

		// Show login screen
		if (!isset($Name) or $Name == '') {
			$_SESSION['DatabaseName'] = '';
		    $_SESSION['CompanyName'] = '';
			return  UL_SHOWLOGIN;
		}
		/* The SQL to get the user info must use the * syntax because the field name could change between versions if the fields are specifed directly then the sql fails and the db upgrade will fail */
		$sql = "SELECT *
				FROM www_users
				WHERE www_users.userid='" . $Name . "'";

		$ErrMsg = _('无法在登录时检索用户详细信息，因为');
		$debug =1;
        $PasswordVerified = false;
		$Auth_Result = DB_query($sql,$ErrMsg);

		if (DB_num_rows($Auth_Result) > 0) {
			$myrow = DB_fetch_array($Auth_Result);
			if (VerifyPass($Password,$myrow['password'])) {
				$PasswordVerified = true;
			} elseif (isset($GLOBALS['CryptFunction'])) {
				/*if the password stored in the DB was compiled the old way,
				 * the previous comparison will fail,
				 * try again with the old hashing algorithm,
				 * then re-hash the password using the new algorithm.
				 * The next version should not have $CryptFunction any more for new installs.
				 */
				
				switch ($GLOBALS['CryptFunction']) {
					case 'sha1':
						if ($myrow['password'] == sha1($Password)) {
							$PasswordVerified = true;
						}
						break;
					case 'md5':
						if ($myrow['password'] == md5($Password)) {
							$PasswordVerified = true;
						}
						break;
					default:
						if ($myrow['password'] == $Password) {
							$PasswordVerified = true;
						}
				}
				if ($PasswordVerified) {
					$sql = "UPDATE www_users SET password = '" . CryptPass($Password) . "'"
							. " WHERE userid = '" . $Name . "';";
					DB_query($sql);
				}

			}
		}


		// Populate session variables with data base results
		if ($PasswordVerified) {

			if ($myrow['blocked']==1){
			//the account is blocked
			$_SESSION['DatabaseName'] = NULL ;
			$_SESSION['CompanyName'] = NULL;
				return  UL_BLOCKED;
			}
			/*reset the attempts counter on successful login */
			$_SESSION['UserID'] = $myrow['userid'];
			$_SESSION['AttemptsCounter'] = 0;
			$_SESSION['AccessLevel'] = $myrow['fullaccess'];
			$_SESSION['CustomerID'] = $myrow['customerid'];
			$_SESSION['UserBranch'] = $myrow['branchcode'];
			$_SESSION['DefaultPageSize'] = $myrow['pagesize'];
			$_SESSION['UserStockLocation'] = $myrow['defaultlocation'];
			$_SESSION['UserEmail'] = $myrow['email'];
			$_SESSION['ModulesEnabled'] = explode(",", $myrow['modulesallowed']);
			$_SESSION['UsersRealName'] = $myrow['realname'];
			$_SESSION['Theme'] = $myrow['theme'];
			$_SESSION['Language'] = $myrow['language'];
			$_SESSION['SalesmanLogin'] = $myrow['salesman'];
			$_SESSION['CanCreateTender'] = $myrow['cancreatetender'];
			$_SESSION['AllowedDepartment'] = $myrow['department'];
			$_SESSION['ShowDashboard'] = $myrow['showdashboard'];
			$_SESSION['ShowPageHelp'] = $myrow['showpagehelp'];
			$_SESSION['ShowFieldHelp'] = $myrow['showfieldhelp'];

			if (isset($myrow['pdflanguage'])) {
				$_SESSION['PDFLanguage'] = $myrow['pdflanguage'];
			} else {
				$_SESSION['PDFLanguage'] = '2'; //default to languages
			}

			if ($myrow['displayrecordsmax'] > 0) {
				$_SESSION['DisplayRecordsMax'] = $myrow['displayrecordsmax'];
			} else {
				$_SESSION['DisplayRecordsMax'] = $_SESSION['DefaultDisplayRecordsMax'];  //config.php default comes from config.php
			}
			$sql = "UPDATE www_users SET lastvisitdate='". date('Y-m-d H:i:s') ."'
							WHERE www_users.userid='" . $Name . "'";
			$Auth_Result = DB_query($sql);
			/*get the security tokens that the user has access to */
			$sql = "SELECT tokenid
					FROM securitygroups
					WHERE secroleid =  '" . $_SESSION['AccessLevel'] . "'";
			$Sec_Result = DB_query($sql);
			$_SESSION['AllowedPageSecurityTokens'] = array();
			if (DB_num_rows($Sec_Result)==0){
				return  UL_CONFIGERR;
			} else {
				$i=0;
				$UserIsSysAdmin = FALSE;
				while ($myrow = DB_fetch_row($Sec_Result)){
					if ($myrow[0] == 15){
						$UserIsSysAdmin = TRUE;
					}
					$_SESSION['AllowedPageSecurityTokens'][$i] = $myrow[0];
					$i++;
				}
			}


			/*User is logged in so get configuration parameters  - save in session*/
			include($PathPrefix . 'includes/GetConfig.php');


			if(isset($_SESSION['DB_Maintenance'])){
				if ($_SESSION['DB_Maintenance']>0)  { //run the DB maintenance script
					if (DateDiff(Date($_SESSION['DefaultDateFormat']),
							ConvertSQLDate($_SESSION['DB_Maintenance_LastRun'])
							,'d')	>= 	$_SESSION['DB_Maintenance']){

						/*Do the DB maintenance routing for the DB_type selected */
						DB_Maintenance();
						$_SESSION['DB_Maintenance_LastRun'] = Date('Y-m-d');

						/* Audit trail purge only runs if DB_Maintenance is enabled */
						if (isset($_SESSION['MonthsAuditTrail'])){
							 $sql = "DELETE FROM audittrail
									WHERE  transactiondate <= '" . Date('Y-m-d', mktime(0,0,0, Date('m')-$_SESSION['MonthsAuditTrail'])) . "'";
							$ErrMsg = _('There was a problem deleting expired audit-trail history');
							$result = DB_query($sql);
						}
					}
				}
			}

			/*Check to see if currency rates need to be updated */
			if (isset($_SESSION['UpdateCurrencyRatesDaily'])){
				if ($_SESSION['UpdateCurrencyRatesDaily']!=0)  {
					/* Only run the update to currency rates if today is after the last update i.e. only runs once a day */
					if (DateDiff(Date($_SESSION['DefaultDateFormat']),
						ConvertSQLDate($_SESSION['UpdateCurrencyRatesDaily']),'d')> 0){

						if ($_SESSION['ExchangeRateFeed']=='ECB') {
							$CurrencyRates = GetECBCurrencyRates(); //includes/MiscFunctions.php gets rates from ECB see includes/MiscFunctions.php
							/*Loop around the defined currencies and get the rate from ECB */
							if ($CurrencyRates!=false) {
								$CurrenciesResult = DB_query("SELECT currabrev FROM currencies");
								while ($CurrencyRow = DB_fetch_row($CurrenciesResult)){
									if ($CurrencyRow[0]!=$_SESSION['CompanyRecord']['currencydefault']){

										$UpdateCurrRateResult = DB_query("UPDATE currencies SET rate='" . GetCurrencyRate($CurrencyRow[0],$CurrencyRates) . "'
																			WHERE currabrev='" . $CurrencyRow[0] . "'");
									}
								}
							}
						} else {
							$CurrenciesResult = DB_query("SELECT currabrev FROM currencies");
							while ($CurrencyRow = DB_fetch_row($CurrenciesResult)){
								if ($CurrencyRow[0]!=$_SESSION['CompanyRecord']['currencydefault']){
									$UpdateCurrRateResult = DB_query("UPDATE currencies SET rate='" . google_currency_rate($CurrencyRow[0]) . "'
																		WHERE currabrev='" . $CurrencyRow[0] . "'");
								}
							}
						}
						$_SESSION['UpdateCurrencyRatesDaily'] = Date('Y-m-d');
						$UpdateConfigResult = DB_query("UPDATE config SET confvalue = '" . Date('Y-m-d') . "' WHERE confname='UpdateCurrencyRatesDaily'");
					}
				}
			}


			/* Set the logo if not yet set.
			 * will be done only once per session and each time
			 * we are not in session (i.e. before login)
			 */
			if (empty($_SESSION['LogoFile'])) {
				/*find a logo in companies/CompanyDir 如果换成SVG则要对应改过PDF脚本，否则打印logo错误，因此暂注释掉*/
				// if (file_exists($PathPrefix . 'companies/' . $_SESSION['DatabaseName'] . '/logo.svg')) {
				// 	$_SESSION['LogoFile'] = 'companies/' .  $_SESSION['DatabaseName'] . '/logo.svg';
				// } elseif (file_exists($PathPrefix . 'companies/' . $_SESSION['DatabaseName'] . '/logo.png')) {
				if (file_exists($PathPrefix . 'companies/' . $_SESSION['DatabaseName'] . '/logo.png')) {
					$_SESSION['LogoFile'] = 'companies/' .  $_SESSION['DatabaseName'] . '/logo.png';
				} elseif (file_exists($PathPrefix . 'companies/' . $_SESSION['DatabaseName'] . '/logo.jpg')) {
					$_SESSION['LogoFile'] = 'companies/' .  $_SESSION['DatabaseName'] . '/logo.jpg';
				}
			}


			if(!isset($_SESSION['DB_Maintenance'])){
				return  UL_CONFIGERR;
			} else {

				if ($_SESSION['DB_Maintenance']==-1 AND !in_array(15, $_SESSION['AllowedPageSecurityTokens'])){
					//the configuration setting has been set to -1 ==> Allow SysAdmin Access Only
					// the user is NOT a SysAdmin
					return  UL_MAINTENANCE;
				}
			}
		} else {     // Incorrect password
			// 5 login attempts, show failed login screen
			if (!isset($_SESSION['AttemptsCounter'])) {
				$_SESSION['AttemptsCounter'] = 0;
			} elseif ($_SESSION['AttemptsCounter'] >= 5 AND isset($Name)) {
				/*User blocked from future accesses until sysadmin releases */
				$sql = "UPDATE www_users
							SET blocked=1
							WHERE www_users.userid='" . $Name . "'";
				$Auth_Result = DB_query($sql);

				if ($SysAdminEmail != ''){
					$EmailSubject = _('User access blocked'). ' ' . $Name ;
					$EmailText =  _('User ID') . ' ' . $Name . ' - ' . $Password . ' - ' . _('has been blocked access at') . ' ' .
								Date('Y-m-d H:i:s') . ' ' . _('from IP') . ' ' . $_SERVER["REMOTE_ADDR"] . ' ' . _('due to too many failed attempts.');
					if($_SESSION['SmtpSetting']==0){
							mail($SysAdminEmail,$EmailSubject,$EmailText);

					} else{
							include('includes/htmlMimeMail.php');
							$mail = new htmlMimeMail();
							$mail->setSubject($EmailSubject);
							$mail->setText($EmailText);
							$result = SendmailBySmtp($mail,array($SysAdminEmail));
					}

				}
				if ($SysAdminWorkWeixinID != ''){//准备发送管理员企业微信消息
				include_once("includes/weworkapi/api/src/CorpAPI.class.php");
				$api = new CorpAPI($corpId= $WorkWeixinCORP_ID, $secret= $WorkWeixinAPPROVAL_APP_SECRET);
				 	$agentId = $WorkWeixinAPPROVAL_APP_ID;
					$EmailSubject = _('用户账户锁定：'). ' '. $Name .' ' . $Password ;
					$EmailText =  _('用户手机') . ' ' . $Name . ' - ' .$Password . ' - ' . _('账户锁定,时间:') . ' ' . Date('Y-m-d H:i:s') . ' ' . _('访问IP') . ' ' . $_SERVER["REMOTE_ADDR"] . ' ' . _('原因是错误密码次数太多了，点击链接去给他解锁');
					$message = new Message();
				    {
				        $message->sendToAll = false;
				        $message->touser = $SysAdminWorkWeixinID ;
				        $message->agentid = $agentId;
				        $message->safe = 0;
				        $message->messageContent = new NewsMessageContent(
				            array(
				                new NewsArticle(
				                    $title =  $EmailSubject  , 
				                    $description = $EmailText , 
				                    $url = $WorkWeixin2CNCERPurl , 
				                    $picurl = htmlentities($WorkWeixin2CNCERPurl) .'/css/WXMSG.png', 
				                    $btntxt = "btntxt"
				                ),
				            )
				        );
				    }
				    $invalidUserIdList = null;
				    $invalidPartyIdList = null;
				    $invalidTagIdList = null;
				    $api->MessageSend($message, $invalidUserIdList, $invalidPartyIdList, $invalidTagIdList);
				}
				$_SESSION['DatabaseName'] = NULL ;
				$_SESSION['CompanyName'] = NULL;
				return  UL_BLOCKED;
			}
			$_SESSION['DatabaseName'] = NULL;
			$_SESSION['CompanyName'] = NULL;
			return  UL_NOTVALID;
		}
	}		// End of userid/password check
	// Run with debugging messages for the system administrator(s) but not anyone else

	return   UL_OK;		    /* All is well */
}

function CorpUserLogin($WXLOGIN) {
	global $debug;
	global $PathPrefix; 
	global $WorkWeixinCORP_ID;//企业微信公司ID
	global $WorkWeixinAPPROVAL_APP_SECRET;//自建运用secret
	global $WorkWeixinAPPROVAL_APP_ID;//默认自建运用id
	global $SysAdminWorkWeixinID;//管理员ID
	global $WorkWeixin2CNCERPurl;//CNCERP访问地址
		include_once("includes/weworkapi/api/src/CorpAPI.class.php");
		//实例化企业微信API___用到的corpID 和secret要么存库要么写入config,要么专门配置企业微信的config,包含更多的运用ID一些功能就作为一个运用
		$api = new CorpAPI($corpId= $WorkWeixinCORP_ID, $secret= $WorkWeixinAPPROVAL_APP_SECRET);
		//通过返回的code去拿用户id
		if (isset($WXLOGIN) AND ($WXLOGIN !='') AND ($WXLOGIN != $_SESSION['LoginbyWXcode'])){
			$UserInfoByCode = $api->GetUserInfoByCode($WXLOGIN);//消费CODE
			$_SESSION['LoginbyWXcode'] = $WXLOGIN;//这里暂时不好处理无效code的返回界面，只报错或500，所以把用过的暂存防刷新报错
			}else{
				header('Location: ' . $PathPrefix .'index.php');
			}
			//以token和企业微信用户userid获取该user基本信息
			if(isset($UserInfoByCode->UserId)){//如果拿到用户ID去拿用户基本信息
				$UserDetail = $api->UserGet($UserInfoByCode->UserId);
				}else{
				header('Location: ' . $PathPrefix .'index.php');
			}
	if (!isset($_SESSION['AccessLevel']) OR $_SESSION['AccessLevel'] == '' OR
		(isset($UserDetail) AND $UserDetail != '')) {
	/* if not logged in */
		$_SESSION['AccessLevel'] = '';
		$_SESSION['CustomerID'] = '';
		$_SESSION['UserBranch'] = '';
		$_SESSION['SalesmanLogin'] = '';
		$_SESSION['Module'] = '';
		$_SESSION['PageSize'] = '';
		$_SESSION['UserStockLocation'] = '';
		$_SESSION['AttemptsCounter']++;

		// Show login screen
		if (!isset($UserDetail) or $UserDetail == '') {
			$_SESSION['DatabaseName'] = '';
		    $_SESSION['CompanyName'] = '';
			return  UL_SHOWLOGIN;
		} elseif ( $UserDetail->enable === 0 ) {//如果用户被企业微信停用、离职、禁用，部门职务等也可以用来更新系统相应权限的
		    $_SESSION['DatabaseName'] = '';
		    $_SESSION['CompanyName'] = '';
		    return  UL_SHOWLOGIN;
		} else {//这就使用用户信息了
			$Mobile = $UserDetail->mobile ;
			$UserName = $UserDetail->name ;
		}
		/*  The SQL to get the user info must use the * syntax because the field name could change between versions if the fields are specifed directly then the sql fails and the db upgrade will fail */
		$sql = "SELECT *
				FROM www_users
				WHERE www_users.phone=" . $Mobile . "";

		$ErrMsg = _('无法在登录时检索用户详细信息，请检查企业微信与本系统用户信息是否绑定一致');
		$debug =1;
        $PasswordVerified = false;
		$Auth_Result = DB_query($sql,$ErrMsg);
 if (DB_num_rows($Auth_Result) > 0) {
			$myrow = DB_fetch_array($Auth_Result);
			if ($UserName === $myrow['realname']) {
				$PasswordVerified = true;
			}else{
				$ErrMsg = _('无法在登录时检索用户姓名UsersRealName不一致，可能企业微信与系统信息不一致请检查再试！');
				$debug =1;
				$PasswordVerified = false;
				$Auth_Result = DB_query($sql,$ErrMsg);
				
			}
			}
		// Populate session variables with data base results
		if ($PasswordVerified) {

			if ($myrow['blocked']==1){
			//the account is blocked
			$_SESSION['DatabaseName'] = NULL ;
			$_SESSION['CompanyName'] = NULL;
				return  UL_BLOCKED;
			}
			/*reset the attempts counter on successful login */
			$_SESSION['UserWXMobile'] = $Mobile;//与微信、企业微信关联的手机号码
			$_SESSION['UserWXUserID'] = $UserInfoByCode->UserId;//本企业微信内唯一
			$_SESSION['UserWXposition'] = $UserDetail->position;//职务信息——可作为系统内的职务进行对接
			$_SESSION['UserWXemail'] = $UserDetail->email;//这个是员工企业邮箱，可用来更新用户默认邮箱减少增加用户时的填写
			$_SESSION['UserWXgender'] = $UserDetail->gender;//性别0未知1男2女
			$_SESSION['UserID'] = $myrow['userid'];
			$_SESSION['AttemptsCounter'] = 0;
			$_SESSION['AccessLevel'] = $myrow['fullaccess'];
			$_SESSION['CustomerID'] = $myrow['customerid'];
			$_SESSION['UserBranch'] = $myrow['branchcode'];
			$_SESSION['DefaultPageSize'] = $myrow['pagesize'];
			$_SESSION['UserStockLocation'] = $myrow['defaultlocation'];
			$_SESSION['UserEmail'] = $myrow['email'];
			$_SESSION['ModulesEnabled'] = explode(",", $myrow['modulesallowed']);
			$_SESSION['UsersRealName'] = $myrow['realname'];
			$_SESSION['Theme'] = $myrow['theme'];
			$_SESSION['Language'] = $myrow['language'];
			$_SESSION['SalesmanLogin'] = $myrow['salesman'];
			$_SESSION['CanCreateTender'] = $myrow['cancreatetender'];
			$_SESSION['AllowedDepartment'] = $myrow['department'];
			if($myrow['showdashboard']){
				$_SESSION['ShowDashboard'] = $myrow['showdashboard'];
			}else{
				$_SESSION['ShowDashboard'] = 3 ;//企业微信登录后重定向一下去掉地址栏后面的GET内容,以防误刷新
							}
			$_SESSION['ShowPageHelp'] = $myrow['showpagehelp'];
			$_SESSION['ShowFieldHelp'] = $myrow['showfieldhelp'];

			if (isset($myrow['pdflanguage'])) {
				$_SESSION['PDFLanguage'] = $myrow['pdflanguage'];
			} else {
				$_SESSION['PDFLanguage'] = '2'; //default to latin western languages
			}

			if ($myrow['displayrecordsmax'] > 0) {
				$_SESSION['DisplayRecordsMax'] = $myrow['displayrecordsmax'];
			} else {
				$_SESSION['DisplayRecordsMax'] = $_SESSION['DefaultDisplayRecordsMax'];  //config.php default comes from config.php
			}
			$sql = "UPDATE www_users SET lastvisitdate='". date('Y-m-d H:i:s') ."'
							WHERE www_users.phone='" . $Mobile . "'";
			$Auth_Result = DB_query($sql);
			/*get the security tokens that the user has access to */
			$sql = "SELECT tokenid
					FROM securitygroups
					WHERE secroleid =  '" . $_SESSION['AccessLevel'] . "'";
			$Sec_Result = DB_query($sql);
			$_SESSION['AllowedPageSecurityTokens'] = array();
			if (DB_num_rows($Sec_Result)==0){
				return  UL_CONFIGERR;
			} else {
				$i=0;
				$UserIsSysAdmin = FALSE;
				while ($myrow = DB_fetch_row($Sec_Result)){
					if ($myrow[0] == 15){
						$UserIsSysAdmin = TRUE;
					}
					$_SESSION['AllowedPageSecurityTokens'][$i] = $myrow[0];
					$i++;
				}
			}


			/*User is logged in so get configuration parameters  - save in session*/
			include($PathPrefix . 'includes/GetConfig.php');


			if(isset($_SESSION['DB_Maintenance'])){
				if ($_SESSION['DB_Maintenance']>0)  { //run the DB maintenance script
					if (DateDiff(Date($_SESSION['DefaultDateFormat']),
							ConvertSQLDate($_SESSION['DB_Maintenance_LastRun'])
							,'d')	>= 	$_SESSION['DB_Maintenance']){

						/*Do the DB maintenance routing for the DB_type selected */
						DB_Maintenance();
						$_SESSION['DB_Maintenance_LastRun'] = Date('Y-m-d');

						/* Audit trail purge only runs if DB_Maintenance is enabled */
						if (isset($_SESSION['MonthsAuditTrail'])){
							 $sql = "DELETE FROM audittrail
									WHERE  transactiondate <= '" . Date('Y-m-d', mktime(0,0,0, Date('m')-$_SESSION['MonthsAuditTrail'])) . "'";
							$ErrMsg = _('There was a problem deleting expired audit-trail history');
							$result = DB_query($sql);
						}
					}
				}
			}

			/*Check to see if currency rates need to be updated */
			if (isset($_SESSION['UpdateCurrencyRatesDaily'])){
				if ($_SESSION['UpdateCurrencyRatesDaily']!=0)  {
					/* Only run the update to currency rates if today is after the last update i.e. only runs once a day */
					if (DateDiff(Date($_SESSION['DefaultDateFormat']),
						ConvertSQLDate($_SESSION['UpdateCurrencyRatesDaily']),'d')> 0){

						if ($_SESSION['ExchangeRateFeed']=='ECB') {
							$CurrencyRates = GetECBCurrencyRates(); //includes/MiscFunctions.php gets rates from ECB see includes/MiscFunctions.php
							/*Loop around the defined currencies and get the rate from ECB */
							if ($CurrencyRates!=false) {
								$CurrenciesResult = DB_query("SELECT currabrev FROM currencies");
								while ($CurrencyRow = DB_fetch_row($CurrenciesResult)){
									if ($CurrencyRow[0]!=$_SESSION['CompanyRecord']['currencydefault']){

										$UpdateCurrRateResult = DB_query("UPDATE currencies SET rate='" . GetCurrencyRate($CurrencyRow[0],$CurrencyRates) . "'
																			WHERE currabrev='" . $CurrencyRow[0] . "'");
									}
								}
							}
						} else {
							$CurrenciesResult = DB_query("SELECT currabrev FROM currencies");
							while ($CurrencyRow = DB_fetch_row($CurrenciesResult)){
								if ($CurrencyRow[0]!=$_SESSION['CompanyRecord']['currencydefault']){
									$UpdateCurrRateResult = DB_query("UPDATE currencies SET rate='" . google_currency_rate($CurrencyRow[0]) . "'
																		WHERE currabrev='" . $CurrencyRow[0] . "'");
								}
							}
						}
						$_SESSION['UpdateCurrencyRatesDaily'] = Date('Y-m-d');
						$UpdateConfigResult = DB_query("UPDATE config SET confvalue = '" . Date('Y-m-d') . "' WHERE confname='UpdateCurrencyRatesDaily'");
					}
				}
			}


			/* Set the logo if not yet set.
			 * will be done only once per session and each time
			 * we are not in session (i.e. before login)
			 */

			if (empty($_SESSION['LogoFile'])) {
				/* find a logo in companies/CompanyDir */
				// if (file_exists($PathPrefix . 'companies/' . $_SESSION['DatabaseName'] . '/logo.svg')) {
					// $_SESSION['LogoFile'] = 'companies/' .  $_SESSION['DatabaseName'] . '/logo.svg';
				// } elseif (file_exists($PathPrefix . 'companies/' . $_SESSION['DatabaseName'] . '/logo.png')) {
				if (file_exists($PathPrefix . 'companies/' . $_SESSION['DatabaseName'] . '/logo.png')) {
					$_SESSION['LogoFile'] = 'companies/' .  $_SESSION['DatabaseName'] . '/logo.png';
				} elseif (file_exists($PathPrefix . 'companies/' . $_SESSION['DatabaseName'] . '/logo.jpg')) {
					$_SESSION['LogoFile'] = 'companies/' .  $_SESSION['DatabaseName'] . '/logo.jpg';
				}
			}


			if(!isset($_SESSION['DB_Maintenance'])){
				return  UL_CONFIGERR;
			} else {

				if ($_SESSION['DB_Maintenance']==-1 AND !in_array(15, $_SESSION['AllowedPageSecurityTokens'])){
					// the configuration setting has been set to -1 ==> Allow SysAdmin Access Only
					// the user is NOT a SysAdmin
					return  UL_MAINTENANCE;
				}
			}
		} else {     // Incorrect password
			// 5 login attempts, show failed login screen
			if (!isset($_SESSION['AttemptsCounter'])) {
				$_SESSION['AttemptsCounter'] = 0;
			} elseif ($_SESSION['AttemptsCounter'] >= 5 AND isset($Mobile)) {
				/*User blocked from future accesses until sysadmin releases */
				$sql = "UPDATE www_users
							SET blocked=1
							WHERE www_users.phone='" . $Mobile . "'";
				$Auth_Result = DB_query($sql);

				  if ($SysAdminWorkWeixinID != ''){
				 	$agentId = $WorkWeixinAPPROVAL_APP_ID;
					$EmailSubject = _('用户账户锁定：'). ' '. $UserName .' ' . $Mobile ;
					$EmailText =  _('用户手机') . ' ' . $Mobile . ' - ' .$UserName . ' - ' . _('账户锁定,时间:') . ' ' . Date('Y-m-d H:i:s') . ' ' . _('访问IP') . ' ' . $_SERVER["REMOTE_ADDR"] . ' ' . _('原因是错误密码次数太多了，点击链接去给他解锁');
					$message = new Message();
				    {
				        $message->sendToAll = false;
				        $message->touser = $SysAdminWorkWeixinID ;
				        $message->agentid = $agentId;
				        $message->safe = 0;
				        $message->messageContent = new NewsMessageContent(
				            array(
				                new NewsArticle(
				                    $title =  $EmailSubject  , 
				                    $description = $EmailText , 
				                    $url = $WorkWeixin2CNCERPurl , 
				                    $picurl = htmlentities($WorkWeixin2CNCERPurl) .'/css/WXMSG.png', 
				                    $btntxt = "btntxt"
				                ),
				            )
				        );
				    }
				    $invalidUserIdList = null;
				    $invalidPartyIdList = null;
				    $invalidTagIdList = null;
				    $api->MessageSend($message, $invalidUserIdList, $invalidPartyIdList, $invalidTagIdList);
				}
				 if ($SysAdminEmail != ''){
				 	$EmailSubject = _('User access blocked'). ' ' . $Name ;
				 	$EmailText =  _('User ID') . ' ' . $Name . ' - ' . $Password . ' - ' . _('has been blocked access at') . ' ' .
				 				Date('Y-m-d H:i:s') . ' ' . _('from IP') . ' ' . $_SERVER["REMOTE_ADDR"] . ' ' . _('due to too many failed attempts.');
				 	if($_SESSION['SmtpSetting']==0){
				 			mail($SysAdminEmail,$EmailSubject,$EmailText);
				
				 	} else{
				 			include('includes/htmlMimeMail.php');
							$mail = new htmlMimeMail();
							$mail->setSubject($EmailSubject);
							$mail->setText($EmailText);
			 			$result = SendmailBySmtp($mail,array($SysAdminEmail));
				 	}
				
				 }
				$_SESSION['DatabaseName'] = NULL ;
				$_SESSION['CompanyName'] = NULL;
				return  UL_BLOCKED;
			}
			$_SESSION['DatabaseName'] = NULL ;
			$_SESSION['CompanyName'] = NULL ;
			return  UL_NOTVALID;
		}
	}		// End of userid/password check
	// Run with debugging messages for the system administrator(s) but not anyone else
	return   UL_OK;		    /* All is well */
}

?>
