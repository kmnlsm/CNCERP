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

	echo '<!DOCTYPE html>';

	echo '<head>
			<meta http-equiv="Content-Type" content="application/html; charset=utf-8; cache-control: no-cache, no-store, must-revalidate; Pragma: no-cache" />
			<title>', $Title, '</title>
			<link rel="icon" href="', $RootPath, '/favicon.ico" />
			<!--link href="', $RootPath, '/css/menu.css" rel="stylesheet" type="text/css" /-->
			<link href="', $RootPath, '/css/print.css" rel="stylesheet" type="text/css" media="print" />
			<link href="', $RootPath, '/css/', $_SESSION['Theme'], '/CNCERP.default.min.css" rel="stylesheet" type="text/css" media="screen"/>
			<link href="', $RootPath, '/css/', $_SESSION['Theme'], '/css/roboto.css" rel="stylesheet" type="text/css" media="screen"/>
			<link href="', $RootPath, '/css/', $_SESSION['Theme'], '/css/material-design.css" rel="stylesheet" type="text/css" media="screen"/>
			<link href="', $RootPath, '/css/', $_SESSION['Theme'], '/css/small-n-flat.css" rel="stylesheet" type="text/css" media="screen"/>
			<link href="', $RootPath, '/css/', $_SESSION['Theme'], '/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="screen"/>
			<link href="', $RootPath, '/css/', $_SESSION['Theme'], '/default.css" rel="stylesheet" type="text/css" media="screen"/>
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<script defer="defer" src="', $RootPath, '/javascripts/MiscFunctions.js"></script>
			<script>
				localStorage.setItem("DateFormat", "', $_SESSION['DefaultDateFormat'], '");
				localStorage.setItem("Theme", "', $_SESSION['Theme'], '");
			</script>';

	// If it is set the $_SESSION['ShowPageHelp'] parameter AND it is FALSE, hides the page help text:显示页面帮助
	if(isset($_SESSION['ShowPageHelp']) AND !$_SESSION['ShowPageHelp']) {
		echo '<style>
				.page_help_text, div.page_help_text {
					display:none;
				}
			</style>';
	}

	echo '</head>',
		'<body class="CNCERP-1-navbar">',
		'<input type="hidden" name="Lang" id="Lang" value="', $Lang, '" />';

if (isset($_GET['Application'])){ /*点击模块选择This is sent by this page (to itself) when the user clicks on a tab */
	$_SESSION['Module'] = $_GET['Application'];
}

	if (isset($Title)) {
		echo '<div id="CNCERP-menu">',
              '<nav class="CNCERP-navbar CNCERP-navbar-primary">',
                '<div class="CNCERP-flex"><a href="#" class="CNCERP-logo"></a></div>',
                '<div class="btn btn-primary md-menu-white" data-toggle="CNCERP-menu"></div>',
              '</nav>',
              '<div id="CNCERP-menu-content">',
                '<div id="CNCERP-menu-items-wrapper">',
                    '<div id="CNCERP-menu-scroller">',
                        '<ul class="CNCERP-menu-items">';
						
		                               if (count($_SESSION['AllowedPageSecurityTokens'])>1){
			                           echo '<li><a href="', $RootPath, '/Dashboard.php" class="sf-dashboard-alt">', _('Dashboard'), '</a></li>';
			                           echo '<li><a href="', $RootPath, '/SelectCustomer.php" class="sf-profile-group">', _('Customers'), '</a></li>';
			                           echo '<li><a href="', $RootPath, '/SelectProduct.php" class="sf-cncncerp-shangping">', _('Items'), '</a></li>';
			                           echo '<li><a href="', $RootPath, '/SelectSupplier.php" class="sf-cncerp-gongying">', _('Suppliers'), '</a></li>';
			                           }

                                      include('includes/MainMenuLinksArray.php');
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
 $linkico = 'sf-shop' ;
 break;
 case "1":
 $linkico = 'sf-money';
 break;
 case '2':
 $linkico = 'sf-box-in';
 break;
 case '3':
 $linkico = 'sf-bitcoin';
 break;
 case '4':
 $linkico =  'sf-institution';
 break;
 case '5':
 $linkico = 'sf-clock';
 break;
 case '6':
 $linkico = 'sf-calculator';
 break;
 case '7':
 $linkico = 'sf-tag-alt';
 break;
 case '8':
 $linkico = 'sf-notepad';
 break;
 case '9':
 $linkico = 'sf-cogs';
 break;
 case '10':
 $linkico = 'sf-wrench-screwdriver';
 break;
 default:
 $linkico = 'sf-puzzle';
 break;
}
if ($ModuleLink[$i] == $_SESSION['Module']){
	                                       		$linkico = 'sf-sign-check';
                                       		}
	                                       	echo '<li><a href="index.php?Application='. $ModuleLink[$i] . '" class="'.$linkico.'" >' . $ModuleList[$i] . '</a></li>';
                                       	}
                                       	$i++;
                                       }
/* 									echo'<li class="CNCERP-submenu">
                                <a class="sf-cat">Icons <span class="caret"></span></a>
                                <ul>
                                    <li><a href="ico-sf.html">Small-n-flat</a></li>
                                    <li><a href="ico-md.html">Material Design</a></li>
                                    <li><a href="ico-fa.html">Font Awesome</a></li>
                                </ul>
                            </li>
                            <li><a href="notepad.html" class="sf-notepad">Text Editor</a></li>
                            <li><a href="login.html" class="sf-lock-open">Login page</a></li';   */
									   
									   
						echo '<li><button type="button" class="btn btn-info">',DisplayDateTime(),'</button></li>';
                            echo
                        '</ul>',
                    '</div>',
                '</div>',
            '</div>',
        '</div>';

	   echo '<header id="CNCERP-header" class="noprint">',
			'<nav class="CNCERP-navbar CNCERP-navbar-primary">',
                '<div class="btn btn-primary md-menu-white hidden-md hidden-lg" data-toggle="CNCERP-menu"></div>',
                '<div class="CNCERP-flex">',
				'<h1>',stripslashes($_SESSION['CompanyRecord']['coyname']).'——'.$Title ,'</h1>',
				 '</div>',
                '<div class="dropdown pull-right">',
				 '<a class="btn btn-primary md-now-widgets-white" href="', $RootPath, '/index.php"></a>',
                '</div>';
//=================//
		if (isset($_POST['AddToMenu'])) {
			if (!isset($_SESSION['Favourites'][$_POST['ScriptName']])) {
				$_SESSION['Favourites'][$_POST['ScriptName']] = $_POST['Title'];
			}
		}

		if (isset($_POST['DelFromMenu'])) {
			unset($_SESSION['Favourites'][$_POST['ScriptName']]);
		}
//=================//
//////////////////////////////////
			echo '<div class="dropdown pull-right">',
                    '<button class="btn btn-primary md-favorite-white" data-toggle="dropdown"></button>',
                    '<ul class="dropdown-menu">';//添加按钮
		$BaseName = basename($_SERVER['PHP_SELF']);
        $ScriptName = $BaseName.'?'.$_SERVER['QUERY_STRING'];
            if ( $BaseName != 'index.php' AND !isset($_SESSION['Favourites'][$ScriptName])) {
	           $ShowAdd = '<li class="disabled text-center"><input type="submit" value="' . _('收藏当前页') . '" name="AddToMenu" /></li>';
               } else {
	           $ShowAdd = '';
                           }
            if (isset($_SESSION['Favourites'][$ScriptName])) {
	           $ShowDel = '<li class="disabled text-center"><input type="submit" value="' . _('取消收藏当前页') . '" name="DelFromMenu" /></li>';
               } else {
	           $ShowDel = '';
                 }			
////////////////////////////////////////////////////					
	echo '<div>
	<form action="' . htmlspecialchars($_SERVER['PHP_SELF']) . '" method="post">
	<input type="hidden" name="FormID" value="' . $_SESSION['FormID'] . '" />
	<input type="hidden" name="ScriptName" value="' . htmlspecialchars($ScriptName,ENT_QUOTES,'UTF-8') . '" />
	<input type="hidden" name="Title" value="' . $Title . '" />
	' . $ShowAdd . $ShowDel . '
		</form>
	</div>',
                        '<li class="disabled text-center">',
                            '<a style="cursor:default;"><strong>', _('我的收藏夹'), '</strong></a>',
                        '</li>',
                        '<li class="divider"></li>';
						
			foreach ($_SESSION['Favourites'] as $url=>$ttl) {
				echo '<li><a href="', $url, '">',
					'<i class="fa fa-fw fa-link"></i>', _($ttl), '</a>',
                    '</li>';
                    }
                    echo '</ul>',
                '</div>';
/////////////////////////////////////////////////////
				
	
            echo'<div class="dropdown pull-right">',
                    '<button class="btn btn-primary md-account-circle-white" data-toggle="dropdown"></button>',
                    '<ul class="dropdown-menu">',
                        '<li class="disabled text-center">',
                            '<a style="cursor:default;"><strong>', _('当前用户：'), '', stripslashes($_SESSION['UsersRealName']), '</strong></a>',
                        '</li>',
                        '<li class="divider"></li>',
                        '<li>',
                        '<a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '?Language='.
					($_SESSION['Language']=='zh_CN.utf8'?'en_US.utf8':'zh_CN.utf8')
					.'"><i class="fa fa-fw fa-language"></i>', _('语言切换'), '</a>',
                        '</li>',
                        '<li>',
                            '<a href="', $RootPath, '/UserSettings.php">',
							'<i class="fa fa-fw fa-cog"></i>', _('User Settings'),'</a>',
                        '</li>',
						'<li>',
                            '<a href="', $RootPath, '/ManualContents.php', $ViewTopic, $BookMark, '" rel="external" accesskey="8">',
							'<i class="fa fa-fw fa-book"></i>', _('Manual'),'</a>',
                        '</li>',
                        '<li>',
                            '<a href="', $RootPath, '/Logout.php" onclick="return confirm(\'', _('Are you sure you wish to logout?'), '\');"><i class="fa fa-fw fa-sign-out"></i>', _('Logout'), '</a>',
                        '</li>',
                    '</ul>',
                '</div>',
            '</nav>',
        '</header>';

	}


	echo '<div id="CNCERP-CanvasDiv">
	
	<div class="container-fluid">';/*
			'<!--div id="HeaderDiv"-->',//不要
				'<!--div id="HeaderWrapDiv"-->',//不要
				'</div>',// Close HeaderWrapDiv
			'</div>',// Close Headerdiv
			'<div id="BodyDiv">',
				'<div id="BodyWrapDiv">',*/
					echo '<div id="MessageContainerHead"></div>'; 
?>
