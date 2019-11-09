<?php
//CNCERP20191026  CQZ
header('Content-type:text/json;charset=utf-8');
include_once 'includes/CNCERP/pinyin/Pinyin.php';
include ('includes/session.php');
include ('includes/Transby.php');/*
$type = $_POST['type'];
$typeno = $_POST['typeno'];*/
if( isset($_POST['type']) OR isset($_POST['typeno'])) {
$type = $_POST['type'];
$typeno = $_POST['typeno'];
}else{
$type = $_GET['type'];
$typeno = $_GET['typeno'];
}
	if( !isset($type) OR !isset($typeno) OR  $typeno==0  OR $type<0) {
	echo '     <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                            <h1 class="modal-title" id="myModalLabel">
                                ',_('报告：'),'
                            </h1>
                        </div>
                        <div class="modal-body">
                            <h1 id="text-in-a-modal">
                             ',_('没有有效的凭证编号或凭证类型'),'！
                            </h1>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        </div>
                    </div>';  

} else {
	$typeSQL = "SELECT typename,
						typeno
				FROM systypes
				WHERE typeid = '" . $type . "'";

	$TypeResult = DB_query($typeSQL);

	$GetGLSQL = "SELECT
					gltrans.trandate
					FROM gltrans 
				WHERE gltrans.type= '" . $type . "'
				AND gltrans.typeno = '" . $typeno . "' ";
	$GetGLResult = DB_query($GetGLSQL);
	
	if( DB_num_rows($TypeResult) == 0 ) {
			echo '     <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                            <h1 class="modal-title" id="myModalLabel">
                                ',_('报告：'),'
                            </h1>
                        </div>
                        <div class="modal-body">
                            <h1 id="text-in-a-modal">
                             ', _('没有找到这种凭证类型：')  . $type,'！
                            </h1>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        </div>
                    </div>';  
	} else{
		$myrow = DB_fetch_row($TypeResult);
		DB_free_result($TypeResult);
		$TransName = $myrow[0];
	}
	
	if( DB_num_rows($GetGLResult ) == 0 ) {
			echo '     <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                            <h1 class="modal-title" id="myModalLabel">
                                ',_('报告：'),'
                            </h1>
                        </div>
                        <div class="modal-body">
                            <h1 id="text-in-a-modal">
                             ',$TransName . _(' 时下而今眼目前——真没有') ,'！
                            </h1>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        </div>
                    </div>';  
	} else {
		$myrowdata = DB_fetch_row($GetGLResult);
		DB_free_result($GetGLResult);
		$TransDateheader = $myrowdata[0];
		// Context Navigation and Title
		//echo $MenuURL;
		//
		//========[ SHOW SYNOPSYS ]===========
		//
		$data = '
                        <div class="modalGL-header">
                            <button  class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
							<h2 class="modal-title" id="myModalLabel"><b>' . _($TransName) . '&nbsp;' . $typeno.' </b></h2>
						</div>		
            <b id="text-in-a-modal" class="float text">' . _('记账日期') . ' :' . Date("Y年m月d日", strtotime($TransDateheader)). ' </b>		 
			<table class="selection GLshows" style="width:100%">
			<thead>
			<tr>
				<th>' . _('GL Account') . '</th>
				<th>' . _('Description') . '</th>
				<th>' . _('Debits') . '</th>
				<th>' . _('Credits') . '</th>
				<th>' . _('是否过账') . '</th>
			</tr>
			</thead>
			<tbody>';
		$SQL = "SELECT
					gltrans.periodno,
					gltrans.trandate,
					gltrans.type,
					gltrans.account,
					chartmaster.accountname,
					gltrans.narrative,
					gltrans.amount,
					gltrans.posted,
					periods.lastdate_in_period
				FROM gltrans INNER JOIN chartmaster
				ON gltrans.account = chartmaster.accountcode
				INNER JOIN periods
				ON periods.periodno=gltrans.periodno
				WHERE gltrans.type= '" . $type . "'
				AND gltrans.typeno = '" . $typeno . "'
				ORDER BY gltrans.amount DESC";
		$TransResult = DB_query($SQL);
		$Posted = _('Yes');
		$CreditTotal = 0;
		$DebitTotal = 0;
		$AnalysisCompleted = 'Not Yet';

		while( $TransRow = DB_fetch_array($TransResult) ) {
			$TranDate = ConvertSQLDate($TransRow['trandate']);
			$DetailResult = false;
 
			if( $TransRow['amount'] > 0) {
				$DebitAmount = locale_number_format($TransRow['amount'],$_SESSION['CompanyRecord']['decimalplaces']);
				$DebitTotal += $TransRow['amount'];
				$CreditAmount = '&nbsp;';
			} else {
				$CreditAmount = locale_number_format(-$TransRow['amount'],$_SESSION['CompanyRecord']['decimalplaces']);
				$CreditTotal += $TransRow['amount'];
				$DebitAmount = '&nbsp;';
			}
			if( $TransRow['posted']==0 ) {
				$Posted = _('No');
			}
			if( $TransRow['account'] == $_SESSION['CompanyRecord']['debtorsact'] AND $AnalysisCompleted == 'Not Yet') {
					$URL = $RootPath . '/CustomerInquiry.php?CustomerID=';
					$FromDate = '&amp;TransAfterDate=' . $TranDate;

					$DetailSQL = "SELECT debtortrans.debtorno AS otherpartycode,
										debtortrans.ovamount,
										debtortrans.ovdiscount,
										debtortrans.ovgst,
										debtortrans.ovfreight,
										debtortrans.rate,
										debtorsmaster.name AS otherparty
									FROM debtortrans INNER JOIN debtorsmaster
									ON debtortrans.debtorno = debtorsmaster.debtorno
									WHERE debtortrans.type = '" . $TransRow['type'] . "'
									AND debtortrans.transno = '" . $typeno. "'";
					$DetailResult = DB_query($DetailSQL);

			} elseif( $TransRow['account'] == $_SESSION['CompanyRecord']['creditorsact'] AND $AnalysisCompleted == 'Not Yet' ) {
					$URL = $RootPath . '/SupplierInquiry.php?SupplierID=';
					$FromDate = '&amp;FromDate=' . $TranDate;

					$DetailSQL = "SELECT supptrans.supplierno AS otherpartycode,
										supptrans.ovamount,
										supptrans.ovgst,
										supptrans.rate,
										suppliers.suppname AS otherparty
									FROM supptrans INNER JOIN suppliers
									ON supptrans.supplierno = suppliers.supplierid
									WHERE supptrans.type = '" . $TransRow['type'] . "'
									AND supptrans.transno = '" . $typeno . "'";
					$DetailResult = DB_query($DetailSQL);

			} else {
					// 如果允许用户查看，我们显示帐户，否则显示“其他帐户”if user is allowed to see the account we show it, other wise we show "OTHERS ACCOUNTS"
					$CheckSql = "SELECT count(*)
								 FROM glaccountusers
								 WHERE accountcode= '" . $TransRow['account'] . "'
									 AND userid = '" . $_SESSION['UserID'] . "'
									 AND canview = '1'";
					$CheckResult = DB_query($CheckSql);
					$CheckRow = DB_fetch_row($CheckResult);

					if ($CheckRow[0] > 0) {
						$AccountName = $TransRow['accountname'];
						$URL = $RootPath . '/GLAccountInquiry.php?Account=' . $TransRow['account'];
					}else{
						$AccountName = _('Other GL Accounts');
						$URL = "";
					}

					if( mb_strlen($TransRow['narrative'])==0 ) {
						$TransRow['narrative'] = '&nbsp;';
					}

					/*echo '<tr class="striped_row">
							<td>' . MonthAndYearFromSQLDate($TransRow['lastdate_in_period']) . '</td>
							<td>' . $TranDate . '</td>';*/

					if ($URL == ""){
						//不允许用户查看此总账帐户，不显示详细信息 User is not allowed to see this GL account, don't show the details
						$data .= '	<tr>
						        <td class="text">' . $AccountName . '</td>
								<td class="text">' . $AccountName . '</td>';
					}else{
						$data .= '	<td class="text"><a href="' . $URL . '">' . $TransRow['account'] .' - '. $AccountName . '</a></td>
								<td class="text">' . $TransRow['narrative'] . '</td>';
					}

					$data .= '	<td class="number">' . $DebitAmount . '</td>
							<td class="number">' . $CreditAmount . '</td>
							<td class="centre">' . $Posted . '</td>
						</tr>';
			}

			if($DetailResult AND $AnalysisCompleted == 'Not Yet') {
				while( $DetailRow = DB_fetch_array($DetailResult) ) {
					if( $TransRow['amount'] > 0) {
						if($TransRow['account'] == $_SESSION['CompanyRecord']['debtorsact']) {
							$Debit = locale_number_format(($DetailRow['ovamount'] + $DetailRow['ovdiscount'] + $DetailRow['ovgst']+ $DetailRow['ovfreight']) / $DetailRow['rate'],$_SESSION['CompanyRecord']['decimalplaces']);
							$Credit = '&nbsp;';
						} else {
							$Debit = locale_number_format(-($DetailRow['ovamount'] + $DetailRow['ovdiscount'] + $DetailRow['ovgst']) / $DetailRow['rate'],$_SESSION['CompanyRecord']['decimalplaces']);
							$Credit = '&nbsp;';
						}
					} else {
						if($TransRow['account'] == $_SESSION['CompanyRecord']['debtorsact']) {
							if(($DetailRow['ovamount'] + $DetailRow['ovdiscount'] + $DetailRow['ovgst'] + $DetailRow['ovfreight']) <0){
							$Credit = locale_number_format(-($DetailRow['ovamount'] + $DetailRow['ovdiscount'] + $DetailRow['ovgst'] + $DetailRow['ovfreight']) / $DetailRow['rate'],$_SESSION['CompanyRecord']['decimalplaces']);
							$Debit = '&nbsp;';
							}else{
							$Credit = '<font color="red">' . locale_number_format(($DetailRow['ovamount'] + $DetailRow['ovdiscount'] + $DetailRow['ovgst'] + $DetailRow['ovfreight']) / $DetailRow['rate'],$_SESSION['CompanyRecord']['decimalplaces']) .'</font>';
							$Debit = '&nbsp;';				//特殊情况下显示负号，更改为显示红字CQZ	
							}
						} else {
							$Credit = locale_number_format(($DetailRow['ovamount'] + $DetailRow['ovdiscount'] + $DetailRow['ovgst']) / $DetailRow['rate'],$_SESSION['CompanyRecord']['decimalplaces']);
							$Debit = '&nbsp;';
						}
					}

					//echo '/*<tr class="striped_row">
							/*<td>' . MonthAndYearFromSQLDate($TransRow['lastdate_in_period']) . '</td>
							<td>' . $TranDate . '</td>*/
						$data .= '<tr>
						<td class="text"><a href="' . $URL . $DetailRow['otherpartycode'] . $FromDate . '">' .
								$TransRow['account'] .' - '. $TransRow['accountname'].' - ' . $DetailRow['otherparty'] . '</a></td>
							<td class="text">' . $TransRow['narrative'] . '</td>
							<td class="number">' . $Debit . '</td>
							<td class="number">' . $Credit . '</td>
							<td class="centre">' . $Posted . '</td></tr>';
				}
				DB_free_result($DetailResult);
				$AnalysisCompleted = 'Done';
			}
		}
		DB_free_result($TransResult);
		list($userid,$realname,$stepdate)=getTransBy($type,$typeno);
		$data .= '<tr>
				<td class="number" colspan="2"><b>' . _('Total') . '</b></td>
				<td class="number"><b>' .
					locale_number_format(($DebitTotal),$_SESSION['CompanyRecord']['decimalplaces']) . '</b></td>
				<td class="number"><b>' .
					locale_number_format((-$CreditTotal),$_SESSION['CompanyRecord']['decimalplaces']) . '</b></td>
				<td>&nbsp;</td>
			</tr>
<!--tr-->

<!--/tr-->
			</tbody></table>
			<div><b class="float-right">' . _('制单:') . $realname .  '</b></div></br>
			</div>
			     <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
							<a type="button" class="btn btn-primary" href="PDFGLJournalCN.php?JournalNo='.$typeno.'&Type=' . $type. '">' . _('Print') . 'PDF</a> ';
	}

}







//var_dump($_POST['stockid']);
/*	$getnamesql = "SELECT stockmaster.description
			FROM stockmaster
			WHERE stockmaster.stockid = " . $_POST['stockid']  . " ";
	$result = DB_query($getnamesql);
	$myrow = DB_fetch_array($result);
*/
//$stocknamepinyin = Pinyin::getShortPinyin($myrow['description']);//转化为拼音首字字母
//$stocknamepinyin = Pinyin::getShortPinyin($_POST['stockid']);//转化为拼音首字字母
//$data='{pinyin:"' . strtoupper($stocknamepinyin).  '"}';//合成json
echo  $data;//输出
//return  $data;//输出
/*
echo Pinyin::getPinyin("早上好");
echo '</br>';
echo Pinyin::getShortPinyin("早上好");
*/