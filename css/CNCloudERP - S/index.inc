<?php

$PageSecurity=0;


$Title=_('Main Menu');
include('css/'. $_SESSION['Theme'].'/header.inc');



/* echo'<nav class="CNCERP-navbar CNCERP-navbar-default CNCERP-navbar-slideup">
                <div class="CNCERP-flex">
                    <div class="nav-tabs-container">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#">交易</a></li>
                            <li><a href="#">查询</a></li>
                            <li><a href="#">设置</a></li>
                        </ul>
                    </div>
                </div>
            </nav>';  */
			
/*if (isset($SupplierLogin) AND $SupplierLogin==1){//供方登录
	echo '<nav class="cm-navbar cm-navbar-default cm-navbar-slideup" style="transform: translateY(0px);">',
                '<div class="cm-flex">',
                    '<div class="nav-tabs-container">',
                        '<ul class="nav nav-tabs">',
                            '<li class="active"><a href="' . $RootPath . '/SupplierTenders.php?TenderType=1">' . _('View or Amend outstanding offers') . '</a></li>',
                            '<li><a href="' . $RootPath . '/SupplierTenders.php?TenderType=2">' . _('Create a new offer') . '</a></li>',
                            '<li><a href="' . $RootPath . '/SupplierTenders.php?TenderType=3">' . _('View any open tenders without an offer') . '</a></li>',
                        '</ul>',
                    '</div>',
                '</div>',
            '</nav>';
	include('includes/footer.php');
	exit;
} elseif (isset($CustomerLogin) AND $CustomerLogin==1){//客户登录
	echo '<nav class="cm-navbar cm-navbar-default cm-navbar-slideup" style="transform: translateY(0px);">',
                '<div class="cm-flex">',
                    '<div class="nav-tabs-container">',
                        '<ul class="nav nav-tabs">',
                            '<li class="active"><a href="' . $RootPath . '/CustomerInquiry.php?CustomerID=' . $_SESSION['CustomerID'] . '">' . _('Account Status') . '</a></li>',
                            '<li><a href="' . $RootPath . '/SelectOrderItems.php?NewOrder=Yes">' . _('Place An Order') . '</a></li>',
                            '<li><a href="' . $RootPath . '/SelectCompletedOrder.php?SelectedCustomer=' . $_SESSION['CustomerID'] . '">' . _('Order Status') . '</a></li>',
                        '</ul>',
                    '</div>',
                '</div>',
            '</nav>';

	include('includes/footer.php');
	exit;
}*/


                            $i=0;
                            foreach ($MenuItems[$_SESSION['Module']]['Transactions']['Caption'] as $Caption) {
                            	$i++;
                               }
							   if ($i > 0){

               echo ' <div class="panel panel-default">
                    <!--div class="panel-heading">交易<span class="badge pull-right"></span></div-->
                    <div class="panel-body">';
					$i=0;
							foreach ($MenuItems[$_SESSION['Module']]['Transactions']['Caption'] as $Caption) {
							/* Transactions Menu Item */
								$ScriptNameArray = explode('?', substr($MenuItems[$_SESSION['Module']]['Transactions']['URL'][$i],1));
								$PageSecurity = $_SESSION['PageSecurityArray'][$ScriptNameArray[0]];
								if ((in_array($PageSecurity, $_SESSION['AllowedPageSecurityTokens']) OR !isset($PageSecurity))) {
									echo '<div class="col-sm-6 col-md-4 col-lg-4">
									        <a href="' . $RootPath . $MenuItems[$_SESSION['Module']]['Transactions']['URL'][$i] .'" class="btn btn-success btn-lg btn-block" role="button">' . $Caption . '</a>
                                             </p>
										 </div> ';
                        	              }
								$i++;
							     } 
//__________
$i=0;
                            foreach ($MenuItems[$_SESSION['Module']]['Reports']['Caption'] as $Caption) {
                            	$ScriptNameArray = explode('?', substr($MenuItems[$_SESSION['Module']]['Reports']['URL'][$i],1));
                            	$PageSecurity = $_SESSION['PageSecurityArray'][$ScriptNameArray[0]];
                            	if ((in_array($PageSecurity, $_SESSION['AllowedPageSecurityTokens']) OR !isset($PageSecurity))) {
									echo '<div class="col-sm-6 col-md-4 col-lg-4">
									   <a href="' . $RootPath . $MenuItems[$_SESSION['Module']]['Reports']['URL'][$i] .'" class="btn btn-info btn-lg btn-block" role="button">' . $Caption . '</a>
									   </p>
	                        		  </div>';
                            	}
                            	$i++;
                               }
//_________
 $i=0;
                        foreach ($MenuItems[$_SESSION['Module']]['Maintenance']['Caption'] as $Caption) {
                        	$ScriptNameArray = explode('?', substr($MenuItems[$_SESSION['Module']]['Maintenance']['URL'][$i],1));
	                        $PageSecurity = $_SESSION['PageSecurityArray'][$ScriptNameArray[0]];
	                        if ((in_array($PageSecurity, $_SESSION['AllowedPageSecurityTokens']) OR !isset($PageSecurity))) {
                        		echo '<div class="col-sm-6 col-md-4 col-lg-4">
									   <a href="' . $RootPath . $MenuItems[$_SESSION['Module']]['Maintenance']['URL'][$i] .'" class="btn btn-warning btn-lg btn-block" role="button">' . $Caption . '</a></p>
	                        		  </div>';
	                        }
	                        $i++;
                        }
//_________

                        echo'
                        </div>
                        </div>
                        </div>';}


				//echo GetRptLinks($_SESSION['Module']);
		/* echo'<div class="container-fluid">
                <div class="panel panel-default demo-icons">
                    <div class="panel-heading">自定义报表<span class="badge pull-right"></span></div>
                    <div class="panel-body">
                        <div class="col-sm-6 col-md-4 col-lg-2">
                            <img src="', $RootPath, '/css/', $_SESSION['Theme'], '/img/sf/address-book-alt.svg" height="24" width="24">
                            &nbsp;&nbsp;sf-address-book-alt 
                        </div>';
						echo GetRptLinks($_SESSION['Module']);
                        echo'
                        <div class="col-sm-6 col-md-4 col-lg-2">
                            <img src="', $RootPath, '/css/', $_SESSION['Theme'], '/img/sf/wrench.svg" height="24" width="24">
                            &nbsp;&nbsp;sf-wrench 
                        </div>

                        </div>
                </div>
            </div>	
			
			'; */


include('css/'. $_SESSION['Theme'].'/footer.inc');

function GetRptLinks($GroupID) {
/*
报表This function retrieves the reports given a certain group id as defined in /reports/admin/defaults.php
in the acssociative array $ReportGroups[]. It will fetch the reports belonging solely to the group
specified to create a list of links for insertion into a table to choose a report. Two table sections will
be generated, one for standard reports and the other for custom reports.
*/
	global $RootPath, $ReportList;
	require_once('reportwriter/languages/en_US/reports.php');
	require_once('reportwriter/admin/defaults.php');
	$GroupID=$ReportList[$GroupID];
	$Title= array(_('Custom Reports'), _('Standard Reports and Forms'));

	$sql= "SELECT id,
				reporttype,
				defaultreport,
				groupname,
				reportname
			FROM reports
			ORDER BY groupname,
					reportname";
	$Result=DB_query($sql,'','',false,true);
	$ReportList = array();
	while ($Temp = DB_fetch_array($Result)) {
		$ReportList[] = $Temp;
	}
	$RptLinks = '';

	for ($Def=1; $Def>=0; $Def--) {
        $RptLinks .= '<div class="container-fluid">
                <div class="panel panel-default demo-icons">';
        $RptLinks .= '
                    <div class="panel-heading">' .  $Title[$Def] . '<span class="badge pull-right"></span></div>
                    <div class="panel-body">';
        $RptLinks .= '</div>';
		$NoEntries = true;
		if ($ReportList) { // then there are reports to show, show by grouping
			foreach ($ReportList as $Report) {
				if ($Report['groupname']==$GroupID AND $Report['defaultreport']==$Def) {
                    $RptLinks .= '<div class="col-sm-6 col-md-4 col-lg-2">';
					$RptLinks .= '<a href="' . $RootPath . '/reportwriter/ReportMaker.php?action=go&amp;reportid=' . $Report['id'] . '">' . _($Report['reportname']) . '</a>';
					$RptLinks .= '</div></div>
                </div>
            </div>';
					$NoEntries = false;
				}
			}
			// now fetch the form groups that are a part of this group (List after reports)
			$NoForms = true;
			foreach ($ReportList as $Report) {
				$Group=explode(':',$Report['groupname']); // break into main group and form group array
				if ($NoForms AND $Group[0]==$GroupID AND $Report['reporttype']=='frm' AND $Report['defaultreport']==$Def) {
                    $RptLinks .= '<div class="col-sm-6 col-md-4 col-lg-2">';
					$RptLinks .= '<img src="' . $RootPath . '/css/' . $_SESSION['Theme'] . '/images/folders.gif" width="16" height="13" alt="" />&nbsp;';
					$RptLinks .= '<p>&bull; <a href="' . $RootPath . '/reportwriter/FormMaker.php?id=' . $Report['groupname'] . '"></p>';
					$RptLinks .= $FormGroups[$Report['groupname']] . '</a>';
					$RptLinks .= '</div></div>
                </div>
            </div>';
					$NoForms = false;
					$NoEntries = false;
				}
			}
		}
		if ($NoEntries) $RptLinks .= '<div class="col-sm-6 col-md-4 col-lg-2">' . _('There are no reports to show!') . '</div>';
	}
	return $RptLinks;
                            
}
		?>