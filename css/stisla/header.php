<?php
	// Titles and screen header
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
			<link rel="stylesheet" href="', $RootPath, '/css/', $_SESSION['Theme'], '/default.css">
			<link href="', $RootPath, '/css/', $_SESSION['Theme'], '/default.css" rel="stylesheet" type="text/css" media="screen"/>
			<!--link href="', $RootPath, '/css/print.css" rel="stylesheet" type="text/css" media="print" /-->
			<script defer="defer" src="', $RootPath, '/javascripts/MiscFunctions.js"></script>
			<script>
				localStorage.setItem("DateFormat", "', $_SESSION['DefaultDateFormat'], '");
				localStorage.setItem("Theme", "', $_SESSION['Theme'], '");
			</script>';

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
		  <P class="navbar-nav nav-link">',stripslashes($_SESSION['CompanyRecord']['coyname']),'</P>
          </div>
        </div >';

		echo '<ul class="navbar-nav navbar-right right">
		<li><a href="', $RootPath, '/index.php"  class="nav-link nav-link-lg"><i class="fas fa-home"></i></a></li>
		<li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link nav-link-lg message-toggle beep"><i class="fas fa-share-square"></i></a>
            <div class="dropdown-menu dropdown-list dropdown-menu-right">
              <div class="dropdown-header">', _('快速访问'), '
                <div class="float-right">
                  <a href="#">常用功能</a>
                </div>
              </div>
			  <div class="dropdown-list-content dropdown-list-message">';
	if (count($_SESSION['AllowedPageSecurityTokens'])>1){
               echo ' <a href="', $RootPath, '/SelectCustomer.php" class="dropdown-item dropdown-item-unread">
                  <div class="dropdown-item-avatar">
                    <img alt="image" src="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/img/avatar/avatar-1.png" class="rounded-circle">
                    <div class="is-online"></div>
                  </div>
                  <div class="dropdown-item-desc">
                    <b>', _('Customers'), '</b>
                    <p>', _('进行客户或会员管理，并针对客户发起交易或查询报告等'), '</p>
                  </div>
                  </a>
                <a href="', $RootPath, '/SelectProduct.php" class="dropdown-item dropdown-item-unread">
                  <div class="dropdown-item-avatar">
                    <img alt="image" src="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/img/avatar/avatar-2.png" class="rounded-circle">
                  </div>
                  <div class="dropdown-item-desc">
                    <b>', _('Items'), '</b>
                    <p>', _('进行物料管理，并针对物料进行相关设置、查询及为存货报告等'), '</p>
                  </div>
                </a>
                <a href="', $RootPath, '/SelectSupplier.php" class="dropdown-item dropdown-item-unread">
                  <div class="dropdown-item-avatar">
                    <img alt="image" src="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/img/avatar/avatar-3.png" class="rounded-circle">
                    <div class="is-online"></div>
                  </div>
                  <div class="dropdown-item-desc">
                    <b>', _('Suppliers'), '</b>
                    <p>', _('管理供应商，并针对供应商发起交易或查询报告等'), '</p>
                  </div>
                </a>
              </div>
              <div class="dropdown-footer text-center">
                <a href="#">系统快捷访问工具栏 <i class="fas fa-chevron-right"></i></a>
              </div>
            </div>
          </li>';
                 }
				 
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
              <div class="dropdown-header">', _('我的收藏夹'), '
		        <form action="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '" method="post">
	              <input type="hidden" name="FormID" value="' . $_SESSION['FormID'] . '" />
			      <input type="hidden" name="ScriptName" value="' . htmlspecialchars($ScriptName,ENT_QUOTES,'UTF-8') . '" />   
                <div class="float-right">
                  <input type="hidden" name="Title" value="' . $Title . '" />	' . $ShowAdd . $ShowDel . '
                </div>
				</form>
              </div>';
		
		
		if (isset($_SESSION['Favourites']) AND count($_SESSION['Favourites'])>0) {
			echo ' <div class="dropdown-list-content dropdown-list-icons">';
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
		}
		echo '
              </div>
              <div class="dropdown-footer text-center">
                <a href="#">', _('我的收藏夹'), '<i class="fas fa-chevron-right"></i></a>
              </div>
            </div>
          </li>
		  
		  <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
            <img alt="image" src="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/img/avatar/avatar-1.png" class="rounded-circle mr-1">
            <div class="d-sm-none d-lg-inline-block">', stripslashes($_SESSION['UsersRealName']), '</div></a>
            <div class="dropdown-menu dropdown-menu-right">
              <div class="dropdown-title">', _('当前登录用户：'), '&nbsp;', stripslashes($_SESSION['UsersRealName']), '</div>
              <a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '?Language='.($_SESSION['Language']=='zh_CN.utf8'?'en_US.utf8':'zh_CN.utf8').'" class="dropdown-item has-icon">
                <i class="far fa-language"></i> ', _('语言切换'), '
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

// 显示左侧 ===========================================================
// Option 1:
echo '<div class="main-sidebar sidebar-style-2">
        <aside id="sidebar-wrapper">
          <div class="sidebar-brand">
            <a href="index.html">CN Cloud ERP</a>
          </div>
          <div class="sidebar-brand sidebar-brand-sm">
            <a href="index.html">ERP</a>
          </div>
          <ul class="sidebar-menu">
			<li><a class="nav-link" href="credits.html"><i class="fas fa-fire"></i> <span>仪表</span></a></li>';

	$i=0;
while ($i < count($ModuleLink)){
	// This determines if the user has display access to the module see config.php and header.php
	// for the authorisation and security code
	if ($_SESSION['ModulesEnabled'][$i]==1)	{
		// If this is the first time the application is loaded then it is possible that
		// SESSION['Module'] is not set if so set it to the first module that is enabled for the user
		/*if (!isset($_SESSION['Module']) OR $_SESSION['Module']==''){
			$_SESSION['Module']=$ModuleLink[$i];
		}*/
	      echo '  <li class="dropdown">
              <a href="' . htmlspecialchars($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') . '?Application='. $ModuleLink[$i] . '" class="nav-link has-dropdown"><i class="fas fa-shopping-cart"></i><span>' . $ModuleList[$i] . '</span></a>';
			echo '<ul class="dropdown-menu" style="display: block;">';
				
			if ($ModuleList[$i]){	
				$i=0;
            foreach ($MenuItems[$ModuleLink[$i]]['Transactions']['Caption'] as $Caption) {
               /* Transactions Menu Item */
	          $ScriptNameArray = explode('?', substr($MenuItems[$ModuleLink[$i]]['Transactions']['URL'][$i],1));
	          $PageSecurity = $_SESSION['PageSecurityArray'][$ScriptNameArray[0]];
	          if ((in_array($PageSecurity, $_SESSION['AllowedPageSecurityTokens']) OR !isset($PageSecurity))) {
		        echo '<li><a href="' . $RootPath . $MenuItems[$ModuleLink[$i]]['Transactions']['URL'][$i] .'"><i class="fas fa-random"></i>' . $Caption . '</a></li>';
	                }
	                  $i++;
                              }	
							  }
			if ($ModuleList[$i]){				  
            $i=0;
            foreach ($MenuItems[$ModuleLink[$i]]['Reports']['Caption'] as $Caption) {
                  /* Transactions Menu Item */
	           $ScriptNameArray = explode('?', substr($MenuItems[$ModuleLink[$i]]['Reports']['URL'][$i],1));
	           $PageSecurity = $_SESSION['PageSecurityArray'][$ScriptNameArray[0]];
	          if ((in_array($PageSecurity, $_SESSION['AllowedPageSecurityTokens']) OR !isset($PageSecurity))) {
		         echo '<li><a href="' . $RootPath . $MenuItems[$ModuleLink[$i]]['Reports']['URL'][$i] .'"><i class="fas fa-search"></i>' . $Caption . '</a></li>';
	                  }
	                     $i++;
                                }
								}

			if ($ModuleList[$i]){

            $i=0;
            foreach ($MenuItems[$ModuleLink[$i]]['Maintenance']['Caption'] as $Caption) {
               /* Transactions Menu Item */
	            $ScriptNameArray = explode('?', substr($MenuItems[$ModuleLink[$i]]['Maintenance']['URL'][$i],1));
	            $PageSecurity = $_SESSION['PageSecurityArray'][$ScriptNameArray[0]];
	         if ((in_array($PageSecurity, $_SESSION['AllowedPageSecurityTokens']) OR !isset($PageSecurity))) {
		          echo ' <li><a href="' . $RootPath . $MenuItems[$ModuleLink[$i]]['Maintenance']['URL'][$i] .'"><i class="fas fa-cog"></i>' . $Caption . '</a></li>';
	                      }
	              $i++;
                }
	
		      } 
			  
echo '    </ul>
            </li>';
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
		  <div id="MessageContainerHead"></div>';
?>