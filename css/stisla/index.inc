<?php

$PageSecurity=0;
$Title=_('Main Menu');
include('css/'. $_SESSION['Theme'].'/header.inc');

if (isset($SupplierLogin) AND $SupplierLogin==1){
	echo '
	<table class="table_index">
			<tr>
			<td class="menu_group_item">
				<p>&bull; <a href="' . $RootPath . '/SupplierTenders.php?TenderType=1">' . _('View or Amend outstanding offers') . '</a></p>
			</td>
			</tr>
			<tr>
			<td class="menu_group_item">
				<p>&bull; <a href="' . $RootPath . '/SupplierTenders.php?TenderType=2">' . _('Create a new offer') . '</a></p>
			</td>
			</tr>
			<tr>
			<td class="menu_group_item">
				<p>&bull; <a href="' . $RootPath . '/SupplierTenders.php?TenderType=3">' . _('View any open tenders without an offer') . '</a></p>
			</td>
			</tr>
		</table>

		
		';
	include('includes/footer.inc');
	exit;
} elseif (isset($CustomerLogin) AND $CustomerLogin==1){
	echo '
	<table class="table_index">
			<tr>
			<td class="menu_group_item">
				<p>&bull; <a href="' . $RootPath . '/CustomerInquiry.php?CustomerID=' . $_SESSION['CustomerID'] . '">' . _('Account Status') . '</a></p>
			</td>
			</tr>
			<tr>
			<td class="menu_group_item">
				<p>&bull; <a href="' . $RootPath . '/SelectOrderItems.php?NewOrder=Yes">' . _('Place An Order') . '</a></p>
			</td>
			</tr>
			<tr>
			<td class="menu_group_item">
				<p>&bull; <a href="' . $RootPath . '/SelectCompletedOrder.php?SelectedCustomer=' . $_SESSION['CustomerID'] . '">' . _('Order Status') . '</a></p>
			</td>
			</tr>
		</table>
		

		
		';

	include('css/'. $_SESSION['Theme'].'/footer.inc');
	exit;
}




echo '<div class="row">';
//__________
    $i=0;
	foreach ($MenuItems[$_SESSION['Module']]['Transactions']['Caption'] as $Caption) {
							/* Transactions Menu Item */
	$ScriptNameArray = explode('?', substr($MenuItems[$_SESSION['Module']]['Transactions']['URL'][$i],1));
	$PageSecurity = $_SESSION['PageSecurityArray'][$ScriptNameArray[0]];
	if ((in_array($PageSecurity, $_SESSION['AllowedPageSecurityTokens']) OR !isset($PageSecurity))) {
		echo '<div class="col-sm-6 col-md-4 col-lg-4 indexbutton">
		<a href="' . $RootPath . $MenuItems[$_SESSION['Module']]['Transactions']['URL'][$i] .'" class="btn btn-icon icon-left btn-success btn-lg btn-block" role="button"><i class="fas fa-random"></i>' . $Caption . '</a><p></p>
</div>';
        }
	$i++;
	} 
//__________
$i=0;
    foreach ($MenuItems[$_SESSION['Module']]['Reports']['Caption'] as $Caption) {
    	$ScriptNameArray = explode('?', substr($MenuItems[$_SESSION['Module']]['Reports']['URL'][$i],1));
    	$PageSecurity = $_SESSION['PageSecurityArray'][$ScriptNameArray[0]];
    	if ((in_array($PageSecurity, $_SESSION['AllowedPageSecurityTokens']) OR !isset($PageSecurity))) {
			echo '<div class="col-sm-6 col-md-4 col-lg-4 indexbutton">
 <a href="' . $RootPath . $MenuItems[$_SESSION['Module']]['Reports']['URL'][$i] .'" class="btn btn-icon icon-left btn-info btn-lg btn-block" role="button"><i class="fas fa-search"></i>' . $Caption . '</a>
<p></p></div>';
    	}
    	$i++;
       }
	   
echo GetRptLinks($_SESSION['Module']); //=== GetRptLinks() must be modified!!! ===
//_________
 $i=0;
    foreach ($MenuItems[$_SESSION['Module']]['Maintenance']['Caption'] as $Caption) {
    	$ScriptNameArray = explode('?', substr($MenuItems[$_SESSION['Module']]['Maintenance']['URL'][$i],1));
	    $PageSecurity = $_SESSION['PageSecurityArray'][$ScriptNameArray[0]];
	    if ((in_array($PageSecurity, $_SESSION['AllowedPageSecurityTokens']) OR !isset($PageSecurity))) {
    		echo '<div class="col-sm-6 col-md-4 col-lg-4 indexbutton"><a href="' . $RootPath . $MenuItems[$_SESSION['Module']]['Maintenance']['URL'][$i] .'" class="btn btn-icon icon-left btn-warning btn-lg btn-block" role="button"><i class="fas fa-cog"></i>' . $Caption . '</a><p></p>
			</div>';
	    }
	    $i++;
    }
	

//_________	
echo '</div>';

include('css/'. $_SESSION['Theme'].'/footer.inc');

function GetRptLinks($GroupID) {
/*
This function retrieves the reports given a certain group id as defined in /reports/admin/defaults.php
in the acssociative array $ReportGroups[]. It will fetch the reports belonging solely to the group
specified to create a list of links for insertion into a table to choose a report. Two table sections will
be generated, one for standard reports and the other for custom reports.
*/
	global $RootPath, $ReportList;
	require_once('reportwriter/languages/en_US/reports.php');
	require_once('reportwriter/admin/defaults.php');
	$GroupID=$ReportList[$GroupID];
	//$Title= array(_('Custom Reports'), _('Standard Reports and Forms'));

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
        /*$RptLinks .= '<li class="menu_group_headers">';
        $RptLinks .= '<b>' .  $Title[$Def] . '</b>';
        $RptLinks .= '</li>';*/
		$NoEntries = true;
		if ($ReportList) { // then there are reports to show, show by grouping
			foreach ($ReportList as $Report) {
				if ($Report['groupname']==$GroupID AND $Report['defaultreport']==$Def) {
                    //$RptLinks .= '<li class="menu_group_item">';
					$RptLinks .= '<div class="col-sm-6 col-md-4 col-lg-4 indexbutton">
		<a href="' . $RootPath . '/reportwriter/ReportMaker.php?action=go&amp;reportid=' . $Report['id'] . '" class="btn btn-icon icon-left btn-danger btn-lg btn-block" role="button"><i class="fas fa-search"></i>' . _($Report['reportname']) . '</a><p></p></div>';
					//$RptLinks .= '</li>';
					$NoEntries = false;
				}
			}
			// now fetch the form groups that are a part of this group (List after reports)
			$NoForms = true;
			foreach ($ReportList as $Report) {
				$Group=explode(':',$Report['groupname']); // break into main group and form group array
				if ($NoForms AND $Group[0]==$GroupID AND $Report['reporttype']=='frm' AND $Report['defaultreport']==$Def) {
                    //$RptLinks .= '<li class="menu_group_item">';
					$RptLinks .= '<div class="col-sm-6 col-md-4 col-lg-4 indexbutton">
		<a href="' . $RootPath . '/reportwriter/FormMaker.php?id=' . $Report['groupname'] . '" class="btn btn-icon icon-left btn-primary btn-lg btn-block" role="button"><i class="fas fa-search"></i>' . $FormGroups[$Report['groupname']] . '</a><p></p></div>';
					
					//$RptLinks .= '<img src="' . $RootPath . '/css/' . $_SESSION['Theme'] . '/images/folders.gif" width="16" height="13" alt="" />&nbsp;';
					//$RptLinks .= '<p>&bull; <a href="' . $RootPath . '/reportwriter/FormMaker.php?id=' . $Report['groupname'] . '"></p>';
					//$RptLinks .= $FormGroups[$Report['groupname']] . '</a>';
					//$RptLinks .= '</li>';
					$NoForms = false;
					$NoEntries = false;
				}
			}
		}
		//if ($NoEntries) $RptLinks .= '<li class="menu_group_item">' . _('There are no reports to show!') . '</li>';
	}
	return $RptLinks;
}

?>
