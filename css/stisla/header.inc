<?php
	// Needs the file config.php loaded where the variables are defined for
	// $RootPath

	// $Title - should be defined in the page before this file is included
	if (!isset($RootPath)){
		$RootPath = dirname(htmlspecialchars($_SERVER['PHP_SELF']));
		if ($RootPath == '/' OR $RootPath == "\\") {
			$RootPath = '';
		}
	}

	$ViewTopic = isset($ViewTopic) ? '?ViewTopic=' . $ViewTopic : '';
	$BookMark = isset($BookMark) ? '#' . $BookMark : '';

	if(isset($Title) && $Title == _('Copy a BOM to New Item Code')){//solve the cannot modify header information in CopyBOM.php scripts
		ob_start();
	}

	echo '<!DOCTYPE html>
	      <html lang="zh">';

	echo '<head>
	        <meta charset="UTF-8">
            <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>', $Title, '</title>
			<link rel="icon" href="', $RootPath, '/favicon.ico" />
			<!-- General CSS Files -->
			<link rel="stylesheet" href="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/modules/bootstrap/css/bootstrap.min.css">
			<link rel="stylesheet" href="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/modules/fontawesome/css/all.min.css">
			<!-- CSS Libraries -->
			<!-- Template CSS -->
			<link rel="stylesheet" href="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/css/style.css">
			<link rel="stylesheet" href="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/css/components.css">
			<link rel="stylesheet" href="', $RootPath, '/includes/CNCERP/bootstrap-datepicker/css/bootstrap-datepicker3.standalone.min.css">
			<link href="', $RootPath, '/css/', $_SESSION['Theme'], '/default.css" rel="stylesheet" type="text/css" media="screen"/>
			<!--link href="', $RootPath, '/css/print.css" rel="stylesheet" type="text/css" media="print" /-->
			<script defer="defer" src="', $RootPath, '/css/', $_SESSION['Theme'], '/MiscFunctions.js"></script>
			<script>
				localStorage.setItem("DateFormat", "', $_SESSION['DefaultDateFormat'], '");
				localStorage.setItem("Theme", "', $_SESSION['Theme'], '");
			</script>';
     //var_dump($_SESSION['DefaultDateFormat']);
	// If it is set the $_SESSION['ShowPageHelp'] parameter AND it is FALSE, hides the page help text:
	if(isset($_SESSION['ShowPageHelp']) AND !$_SESSION['ShowPageHelp']) {
		echo '<style>
				.page_help_text, div.page_help_text {
					display:none;
				}
			</style>';
	}

	echo '</head>',
		'<body>',
			'<div id="app"><div class="main-wrapper main-wrapper-1">',
			'<input type="hidden" name="Lang" id="Lang" value="', $Lang, '" />',
			'<div class="navbar-bg"></div>',
				'<nav class="navbar navbar-expand-lg main-navbar">',
                '<div class="form-inline mr-auto">',
                    '<ul class="navbar-nav mr-3">',
                       '<li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>',
                    '</ul>',
		      '<div class="search-element">';

	if (isset($Title)) {
		echo '
		  <h5 class="navbar-nav nav-link">',stripslashes($_SESSION['CompanyRecord']['coyname']),'</h5>
          </div>
        </div >';

		echo '<ul class="navbar-nav navbar-right right">
		<li><a href="', $RootPath, '/index.php"  class="nav-link nav-link-lg"><i class="fas fa-home"></i></a></li>';
	/*echo '<li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link nav-link-lg message-toggle beep"><i class="fas fa-share-square"></i></a>
            <div class="dropdown-menu dropdown-list dropdown-menu-right">
              <div class="dropdown-header">', _('快速访问'), ' <b class="float-right">常用功能</b>
              </div>
			  <div class="dropdown-list-content dropdown-list-message">';
	if (count($_SESSION['AllowedPageSecurityTokens'])>1){
               echo ' <a href="', $RootPath, '/SelectCustomer.php" class="dropdown-item dropdown-item-unread">
                  <div class="dropdown-item-avatar">
                    <img alt="image" src="', $RootPath, '/css/', $_SESSION['Theme'], '/images/cncerp-kehu.svg" class="rounded">
                  </div>
                  <div class="dropdown-item-desc">
                    <b>', _('Customers'), '</b>
                    <p>', _('进行客户或会员管理，并针对客户发起交易或查询报告等'), '</p>
                  </div>
                  </a>
                <a href="', $RootPath, '/SelectProduct.php" class="dropdown-item dropdown-item-unread">
                  <div class="dropdown-item-avatar">
                    <img alt="image" src="', $RootPath, '/css/', $_SESSION['Theme'], '/images/inventory.png" class="rounded">
                  </div>
                  <div class="dropdown-item-desc">
                    <b>', _('Items'), '</b>
                    <p>', _('进行物料管理，并针对物料进行相关设置、查询及为存货报告等'), '</p>
                  </div>
                </a>
                <a href="', $RootPath, '/SelectSupplier.php" class="dropdown-item dropdown-item-unread">
                  <div class="dropdown-item-avatar">
                    <img alt="image" src="', $RootPath, '/css/', $_SESSION['Theme'], '/images/cncerp-gongying.svg" class="rounded">
                  </div>
                  <div class="dropdown-item-desc">
                    <b>', _('Suppliers'), '</b>
                    <p>', _('管理供应商，并针对供应商发起交易或查询报告等'), '</p>
                  </div>
                </a>
              </div>
              <div class="dropdown-footer text-center">
               </div>
            </div>
          </li>';
                 }*/
				 
	if (isset($_POST['AddToMenu'])) {
			if (!isset($_SESSION['Favourites'][$_POST['ScriptName']])) {
				$_SESSION['Favourites'][$_POST['ScriptName']] = $_POST['Title'];
			}
		}
	if (isset($_POST['DelFromMenu'])) {
			unset($_SESSION['Favourites'][$_POST['ScriptName']]);
		}			 
	
     $BaseName = basename($_SERVER['PHP_SELF']);
     $ScriptName = $BaseName.'?'.$_SERVER['QUERY_STRING'];
     if ( $BaseName != 'index.php' AND !isset($_SESSION['Favourites'][$ScriptName])) {
	       $ShowAdd = '<input class="btn btn-success" type="submit" value="' . _('收藏当前页') . '" name="AddToMenu" />';
        } else {
	        $ShowAdd = '';
              }
     if (isset($_SESSION['Favourites'][$ScriptName])) {
	        $ShowDel = '<input class="btn btn-danger" type="submit" value="' . _('取消当前页') . '" name="DelFromMenu" />';
        } else {
	        $ShowDel = '';
                }

echo '<li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link notification-toggle nav-link-lg beep"><i class="fa fa-heart"></i></a>
            <div class="dropdown-menu dropdown-list dropdown-menu-right">
              <div class="dropdown-header">
		        <form action="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '" method="post">
	              <input type="hidden" name="FormID" value="' . $_SESSION['FormID'] . '" />
			      <input type="hidden" name="ScriptName" value="' . htmlspecialchars($ScriptName,ENT_QUOTES,'UTF-8') . '" />
				  <input type="hidden" name="Title" value="' . $Title . '" />	' . $ShowAdd . $ShowDel . '   	
				 
                <b class="float-right">
                  ', _('我的收藏夹'), '
				  </b>
				  </form>
              </div>
			  
			  <div class="dropdown-list-content dropdown-list-icons">';
		
		if (isset($_SESSION['Favourites']) AND count($_SESSION['Favourites'])>0) {
			foreach ($_SESSION['Favourites'] as $url=>$ttl) {
				echo '
				 <a href="', $url , '" class="dropdown-item dropdown-item-unread">
                  <div class="dropdown-item-icon bg-primary text-white">
                    <i class="fas fa-code"></i>
                  </div>
                  <div class="dropdown-item-desc">
                    ', _($ttl), '
                  </div>
                </a>';
			}
		}else{
		echo '
				 <a href="#" class="dropdown-item dropdown-item-unread">
                  <div class="dropdown-item-icon bg-primary text-white">
                    <i class="fas fa-code"></i>
                  </div>
                  <div class="dropdown-item-desc">
                    ', _(空的，什么也没有), '
                  </div>
                </a>';
		
		}
		echo '
              </div>
              <div class="dropdown-footer text-center">
                <p>', _('我的收藏夹'), '<i class="fa fa-heart"></i></p>
              </div>
            </div>
          </li>
		  
		  <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
            <img alt="image" src="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/img/avatar/avatar-1.png" class="rounded-circle mr-1">
            <div class="d-sm-none d-lg-inline-block">', stripslashes($_SESSION['UsersRealName']), '</div></a>
            <div class="dropdown-menu dropdown-menu-right">
              <div class="dropdown-title">', _('当前登录用户：'), '&nbsp;', stripslashes($_SESSION['UsersRealName']), '</div>
              <a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '?Language='.($_SESSION['Language']=='zh_CN.utf8'?'en_US.utf8':'zh_CN.utf8').'" class="dropdown-item has-icon">
                <i class="fas fa-language"></i> ', _('语言切换'), '
              </a>
              <a href="', $RootPath, '/UserSettings.php" class="dropdown-item has-icon">
                <i class="fas fa-cog"></i> ', _('User Settings'),'
              </a>
              <a href="', $RootPath, '/ManualContents.php', $ViewTopic, $BookMark, '" rel="external" accesskey="8" class="dropdown-item has-icon">
                <i class="fas fa-book"></i> ', _('Manual'),'
              </a>
              <div class="dropdown-divider"></div>
              <a href="', $RootPath, '/Logout.php" class="dropdown-item has-icon text-danger" onclick="return confirm(\'', _('Are you sure you wish to logout?'), '\');">
                <i class="fas fa-sign-out-alt"></i>', _('Logout'), '
              </a>
            </div>
          </li>
		</ul>
      </nav> ';
	  
	}//导航结束
	
/*The module link codes are hard coded in a switch statement below to determine the options to show for each tab */
include('includes/MainMenuLinksArray.php');
$abcd = '123456';
// 显示左侧 ===========================================================
// Option 1:
echo '<div class="main-sidebar sidebar-style-2">
        <aside id="sidebar-wrapper">
          <div class="sidebar-brand CNCERPsidebar-brand">
            <a href="#"><img src="'. $RootPath . '/' . $_SESSION['LogoFile'] . '" width="160" alt="CNCERP" title="CNCERP ' . _('Copyright') . ' &copy; weberp -cncerp- ' . date('Y') . '" /></a>
          </div>
          <div class="sidebar-brand CNCERPsidebar-brand sidebar-brand-sm">
            <a href="#">ERP</a>
          </div>';
		  
if (count($_SESSION['AllowedPageSecurityTokens'])>1){		
	echo '	  
		  <div class="cncerpnav text-center">
                    <a href="', $RootPath, '/SelectCustomer.php" class="btn btn-social-icon btn-cncerpnav mr-1 " title="',_(客户),'">
                      <i class="fa fa-users"></i>
                    </a>
                    <a href="', $RootPath, '/SelectProduct.php" class="btn btn-social-icon btn-cncerpnav mr-1" title="',_(物料或商品),'">
                      <i class="fa fa-cubes"></i>
                    </a>
                    <a href="', $RootPath, '/SelectSupplier.php" class="btn btn-social-icon btn-cncerpnav mr-1 " title="',_(供应商),'">
                      <i class="fa fa-handshake"></i>
                    </a>
                  </div>';
		  }
		  
		  
		  
  echo '    <ul class="sidebar-menu">
			<li class="list-cnnvlin"><a class="nav-link" href="', $RootPath, '/Dashboard.php"><i class="fas fa-fire"></i> <span>', _('Dashboard'), '</span></a></li>';
if (isset($_GET['Application'])){ /*This is sent by this page (to itself) when the user clicks on a tab */
	$_SESSION['Module'] = $_GET['Application'];
}			
	$i=0;
while ($i < count($ModuleLink)){
	// This determines if the user has display access to the module see config.php and header.php
	// for the authorisation and security code
	if ($_SESSION['ModulesEnabled'][$i]==1)	{
		// If this is the first time the application is loaded then it is possible that
		// SESSION['Module'] is not set if so set it to the first module that is enabled for the user
		if (!isset($_SESSION['Module']) OR $_SESSION['Module']==''){
			$_SESSION['Module']=$ModuleLink[$i];
		}


switch ($i)
{
case "0":
 $linkico = '<i class="fas fa-shopping-cart"></i>' ;
 break;
 case "1":
 $linkico = '<i class="fas fa-qrcode"></i>';
 break;
 case '2':
 $linkico = '<i class="fas fa-truck"></i>';
 break;
 case '3':
 $linkico = '<i class="fas fa-credit-card"></i>';
 break;
 case '4':
 $linkico =  '<i class="fas fa-cubes"></i>';
 break;
 case '5':
 $linkico = '<i class="fas fa-sign-language"></i>';
 break;
 case '6':
 $linkico = '<i class="fas fa-calculator"></i>';
 break;
 case '7':
 $linkico = '<i class="fas fa-tags"></i>';
 break;
 case '8':
 $linkico = '<i class="fas fa-check-square"></i>';
 break;
 case '9':
 $linkico = '<i class="fas fa-cogs"></i>';
 break;
 case '10':
 $linkico = '<i class="fas fa-wrench"></i>';
 break;
 default:
 $linkico = '<i class="fas fa-wrench"></i>';
 break;
}
		if ($ModuleLink[$i] == $_SESSION['Module']){
		echo '<li class="list-cnnvlin active"><a href="index.php?Application='. $ModuleLink[$i] . '"  class="nav-link" style = "color: orange;">'.$linkico.'<span>' . $ModuleList[$i] . '</span></a></li>';//左侧已选
		} else {
		echo '<li class="list-cnnvlin"><a href="index.php?Application='. $ModuleLink[$i] . '"  class="nav-link">'.$linkico.'<span>' . $ModuleList[$i] . '</span></a></li>';//左侧未选择
		}
		
	}
	$i++;
}

echo '
</aside>
      </div>';//左侧结束	
	
	echo  ' <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div  class="section-header">
            <h1>'.$Title.'</h1>
			</div>
          <div class="section-body">
                      <div class="alert-body" id="MessageContainerHead"></div>
		<!--div  class="card"-->';
?>