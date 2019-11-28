<?php
// Display demo user name and password within login form if $AllowDemoMode is true

//include ('LanguageSetup.php');
if ((isset($AllowDemoMode)) AND ($AllowDemoMode == True) AND (!isset($demo_text))) {
	$demo_text = _('Login as user') .': <i>' . _('cncerp') . '</i><br />' ._('with password') . ': <i>' . _('123456') . '</i>' .
		'<br /><a href="../">' . _('Return') . '</a>';// This line is to add a return link.
} elseif (!isset($demo_text)) {
	$demo_text = '';
}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//CN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
	<title>CNCERP Login screen</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="<?php echo $RootPath?>/css/stisla/assets/modules/bootstrap/css/bootstrap.css"/>
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
	<link href="<?php echo $RootPath?>/css/login.css" rel="stylesheet">
</head>
<body>
<?php

if (get_magic_quotes_gpc()){
	echo '<p style="background:white">';
	echo _('Your webserver is configured to enable Magic Quotes. This may cause problems if you use punctuation (such as quotes) when doing data entry. You should contact your webmaster to disable Magic Quotes');
	echo '</p>';
}

?>
<div id="container" class="form-signin">
	<div title="Login CN Cloud ERP"  id="login_logo"class="text-center mb-4">
	<img class="mb-4" src="<?php echo $RootPath.'/css/CNCloudERP'?>/logoUI.svg" alt="CNCERP" width="260" >
	<h1 title="CN Cloud ERP" class="h3 mb-3 font-weight-normal"><?php echo _('Login'); ?> CNCERP</h1>
	</div>
	<div id="login_box" class="form-login">
	<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8');?>" method="post">
    <div>
	<input type="hidden" name="FormID" value="<?php echo $_SESSION['FormID']; ?>" />
	<span>
<?php

	    if (isset($CompanyList) AND is_array($CompanyList)) {
            foreach ($CompanyList as $key => $CompanyEntry){
                if ($DefaultDatabase == $CompanyEntry['database']) {
                    $CompanyNameField = "$key";
                    $DefaultCompany = $CompanyEntry['company'];
                }
            }
	        if ($AllowCompanySelectionBox === 'Hide'){
			    // do not show input or selection box
			    echo '<input type="hidden" name="CompanyNameField"  value="' .  $CompanyNameField . '" />';
		    } elseif ($AllowCompanySelectionBox === 'ShowInputBox'){
			    // show input box
			   // echo _('Company') .': <br />' .  '<input type="text" name="DefaultCompany"  autofocus="autofocus" required="required" value="' .  htmlspecialchars($DefaultCompany ,ENT_QUOTES,'UTF-8') . '" disabled="disabled"/>';//use disabled input for display consistency
		        echo '<input type="hidden" name="CompanyNameField"  value="' .  $CompanyNameField . '" />';
		    } else {
                // Show selection box ($AllowCompanySelectionBox == 'ShowSelectionBox')
                //echo _('Company') . ':<br />';
                echo '<select  class="custom-select d-block w-100" name="CompanyNameField">';
                foreach ($CompanyList as $key => $CompanyEntry){
                    if (is_dir('companies/' . $CompanyEntry['database']) ){
                        if ($CompanyEntry['database'] == $DefaultDatabase) {
                            echo '<option selected="selected" label="'.htmlspecialchars($CompanyEntry['company'],ENT_QUOTES,'UTF-8').'" value="'.$key.'">' . htmlspecialchars($CompanyEntry['company'],ENT_QUOTES,'UTF-8') . '</option>';
                        } else {
                            echo '<option label="'.htmlspecialchars($CompanyEntry['company'],ENT_QUOTES,'UTF-8').'" value="'.$key.'">' . htmlspecialchars($CompanyEntry['company'],ENT_QUOTES,'UTF-8') . '</option>';
                        }
                    }
                }
                echo '</select>';
            }
	    }
	      else { //provision for backward compat - remove when we have a reliable upgrade for config.php
            if ($AllowCompanySelectionBox === 'Hide'){
			    // do not show input or selection box
			    echo '<input type="hidden" name="CompanyNameField"  value="' . $DefaultCompany . '" />';
		    } else if ($AllowCompanySelectionBox === 'ShowInputBox'){
			    // show input box
			    echo _('Company') . '<input type="text" name="CompanyNameField"  autofocus="autofocus" required="required" value="' . $DefaultCompany . '" />';
		    } else {
      			// Show selection box ($AllowCompanySelectionBox == 'ShowSelectionBox')
    			//echo _('Company') . ':<br />';
	    		echo '<select name="CompanyNameField">';
	    		$Companies = scandir('companies/', 0);
			    foreach ($Companies as $CompanyEntry){
                    if (is_dir('companies/' . $CompanyEntry) AND $CompanyEntry != '..' AND $CompanyEntry != '' AND $CompanyEntry!='.svn' AND $CompanyEntry!='.'){
                        if ($CompanyEntry==$DefaultDatabase) {
                            echo '<option selected="selected" label="'.$CompanyEntry.'" value="'.$CompanyEntry.'">' . $CompanyEntry . '</option>';
                        } else {
                            echo '<option label="'.$CompanyEntry.'" value="'.$CompanyEntry.'">' . $CompanyEntry . '</option>';
                        }
                    }
    	        }
    	         echo '</select>';
            }
        } //end provision for backward compat
?>

	</span>
	<br />
	<!--span><?php //echo _('User name'); ?>:</span><br /-->
	<input class="form-control" type="text" name="UserNameEntryField" required="required" autofocus="autofocus" maxlength="20" placeholder="<?php echo _('User name'); ?>" /><br />
	<!--span><?php //echo _('Password'); ?>:</span><br /-->
	<input class="form-control" type="password" required="required" name="Password" placeholder="<?php echo _('Password'); ?>" /><br />
	<div id="demo_text">
<?php

	if (isset($demo_text)){
		echo $demo_text;
	}
?>

	</div>
	<button type="button" class="btn btn-primary pull-right" style="width:48%"   data-toggle="modal" data-target="#exampleModalCenter">
		 企业微信扫码登录
		</button><!-- Button trigger modal -->
		<input class="btn btn-primary float-right" style="width:48%" title="Login CN Cloud ERP" type="submit" value="<?php echo _('Login'); ?>" name="SubmitUser" />
	<p class="mt-5 mb-3 text-muted text-center"><?php echo   _('Be based on').' WebERP4.15 '.'  ' . _('Copyright') . ' &copy; 2004 - ' . Date('Y'). ' <a target="_blank" href="http://www.weberp.org/weberp/doc/Manual/ManualContributors.html">weberp.org</a>';?></p>
	
	</div>
	</form>
	</div>
	<br />
</div>

</body>
	<!--企业微信登录Modal-->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalCenterTitle">企业微信扫码登录</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body text-center" id="wx_reg">
	        
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
	      </div>
	    </div>
	  </div>
	</div>
<!--  JS Scripts -->
  <script src="css/stisla/assets/modules/jquery.min.js"></script>
  <script src="css/stisla/assets/modules/bootstrap/js/bootstrap.min.js"></script>
  <script src="http://rescdn.qqmail.com/node/ww/wwopenmng/js/sso/wwLogin-1.0.0.js"></script>
	<script><!--这里是二维码-->
	  window.WwLogin({
	          "id" : "wx_reg",  
	          "appid" : "<?php echo $WorkWeixinCORP_ID; ?>",
	          "agentid" : "<?php echo $WorkWeixinAPPROVAL_APP_ID; ?>",
	          "redirect_uri" :"<?php echo $WorkWeixin2CNCERPurl ?>",
	          "state" : "<?php echo $_SESSION['FormID']; ?>",
	          "href" : "",
	  });
  </script>
</html>