<?php
/* $Id: GLAccountsInit.php 0 2013/4/17 11:13 thumb $*/
/*  Used to initialize the balance of gl accounts for Chinese accounting when ERP set up. */

include('includes/session.php');
$Title = _('Initialization of Accounts Settings');

$ViewTopic= 'GeneralLedger';
$BookMark = 'GLAccounts';

include('includes/header.php');

if(isset($_POST['submit'])){//Update initial value manually.
	
	$sql = "SELECT accountcode,
			accountname,
			group_,
			CASE WHEN pandl=0 THEN '" . _('Balance Sheet') . "' ELSE '" . _('Profit/Loss') . "' END AS acttype
		FROM chartmaster,
			accountgroups
		WHERE chartmaster.group_=accountgroups.groupname
		ORDER BY chartmaster.accountcode";

	$ErrMsg = _('The chart accounts could not be retrieved because');

	$result = DB_query($sql,$db,$ErrMsg);
	while ($myrow = DB_fetch_row($result)) {
		if(isset($_POST['old'.$myrow[0]])&&isset($_POST['glacc'.$myrow[0]])&&($_POST['old'.$myrow[0]]!=$_POST['glacc'.$myrow[0]])){

			$sql='UPDATE chartdetails SET bfwd='.floatval($_POST['glacc'.$myrow[0]]).' WHERE period='.intval($_POST['SelectedPeriod']).' AND accountcode='.$myrow[0];
			$ErrMsg = _('Could not update the account initial');//echo $sql,'<br/>';
			DB_query($sql,$db,$ErrMsg);
		}
	}

}

echo '<div class="centre"><p class="page_title_text"><img src="'.$RootPath.'/css/'.$Theme.'/images/transactions.png" title="' .
		_('General Ledger Accounts') . '" alt="" />' . ' ' . $Title . '</p></div>';
echo '<div class="page_help_text">'
	. _('初始化期初用') . '</div>';

if(isset($_POST['ChangePeriod'])){
	$_POST['SelectedPeriod']=$_POST['PeriodSelected'];
}elseif(!isset($_POST['SelectedPeriod'])){
	$_POST['SelectedPeriod']=0;
}

$PeriodsOptions='';
$sql = "SELECT periodno,lastdate_in_period FROM periods";
$ErrMsg = _('The chart periods could not be retrieved because');
$result = DB_query($sql,$db,$ErrMsg);
while ($myrow = DB_fetch_row($result)) {
	$PeriodsOptions.='<option value="'.$myrow[0].'" '.($_POST['SelectedPeriod']==$myrow[0]?'selected="selected"':'').'>'.substr($myrow[1],0,7).'</option>';
}

$sql = "SELECT chartmaster.accountcode,
		chartmaster.accountname,
		chartmaster.group_,
		CASE WHEN accountgroups.pandl=0 THEN '" . _('Balance Sheet') . "' ELSE '" . _('Profit/Loss') . "' END AS acttype,
		chartdetails.bfwd
	FROM chartmaster INNER JOIN accountgroups ON chartmaster.group_=accountgroups.groupname
	INNER JOIN chartdetails ON chartmaster.accountcode=chartdetails.accountcode AND chartdetails.period=".$_POST['SelectedPeriod']."
	ORDER BY chartmaster.accountcode";

$ErrMsg = _('The chart accounts could not be retrieved because');

$result = DB_query($sql,$db,$ErrMsg);


echo '<form method="post" id="form1" action="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '">';
echo '<div>';
echo '<input type="hidden" name="FormID" value="' . $_SESSION['FormID'] . '" />';
echo '<input type="hidden" name="SelectedPeriod" value="' . $_POST['SelectedPeriod'] . '" />';

echo '<br /><table class="selection">';
echo '<tr>
	<th>' . _('P/L or B/S') . '</th>
	<th>' . _('Account Group') . '</th>
	<th>' . _('Account Code') . '</th>
	<th>' . _('Account Name') . '</th>
	<th><select name="PeriodSelected" onchange="ReloadForm(form1.ChangePeriod)">'.$PeriodsOptions.'</select><input type="submit" name="ChangePeriod" value="'._('Change').'"></th>
</tr>';

$k=0; //row colour counter

while ($myrow = DB_fetch_row($result)) {
	if ($k==1){
		echo '<tr class="EvenTableRows">';
		$k=0;
	} else {
		echo '<tr class="OddTableRows">';
		$k=1;
	}
	printf("<td>%s</td>
	<td>%s</td>
	<td>%s</td>
	<td>%s</td>
	<td colspan=\"2\">%s</td>
	</tr>",
	$myrow[3],
	$myrow[2],
	$myrow[0],
	htmlspecialchars($myrow[1],ENT_QUOTES,'UTF-8'),
	'<input type="hidden" name="old'.$myrow[0].'" value="'.$myrow[4].'"><input name="glacc'.$myrow[0].'" value="'.$myrow[4].'">'
	);

}
echo '</table>';
echo '<br /><div class="centre"><input type="submit" name="submit" value="'. _('Enter Information') . '" /></div>';
echo '</div></form>';

include('includes/footer.php');
?>
