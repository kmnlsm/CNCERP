<?php

/* $Id: FixedAssetTransfer.php 5105 2012-03-16 22:34:02Z vvs2012 $*/

include('includes/session.php');

$Title = _('Record Asset Usage');

include('includes/header.php');

if (isset($_GET['AssetID'])) {
	$AssetID=$_GET['AssetID'];
} else if (isset($_POST['AssetID'])) {
	$AssetID=$_POST['AssetID'];
}

if(isset($_POST['Move'])){

	$sql="SELECT assetlocation FROM fixedassets WHERE assetid='". $AssetID . "'";

	$result=DB_query($sql);
	if($myrow = DB_fetch_array($result)){
		$sql='INSERT INTO fixedassetmoves(fixedassetid,note,createdby)
		VALUES('.$AssetID.',\''.$_POST['Note'].'\',\''.$_SESSION['UserID'].'\');';
		
		$result=DB_query($sql);

		$sql="UPDATE fixedassets
					SET note='".$_POST['Note'] ."'
					WHERE assetid='". $AssetID . "'";

		$result=DB_query($sql);

	}	
	header('Location:'.htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8').'?rtn=');
	exit();
}
if(isset($_GET['rtn'])){
	$_POST['AssetCat']=$_SESSION['AssetCat'];
	$_POST['Keywords']=$_SESSION['Keywords'];
	$_POST['AssetID']=$_SESSION['AssetID'];
	$_POST['Search']='';
}

{
	$sql="SELECT categoryid, categorydescription FROM fixedassetcategories";
	$result=DB_query($sql);
	echo '<form action="'. htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '" method="post">';
    echo '<div>';
	echo '<input type="hidden" name="FormID" value="' . $_SESSION['FormID'] . '" />';
	echo '<p class="page_title_text"><img src="'.$Rootpath.'/css/'.$Theme.'/images/magnifier.png" title="' . _('Search') .
		'" alt="" />' . ' ' . $Title . '</p>';
	echo '<table class="selection"><tr>';
	echo '<td>'. _('In Asset Category') . ': ';
	echo '<select name="AssetCat">';

	if (!isset($_POST['AssetCat'])) {
		$_POST['AssetCat'] = '';
	}

	while ($myrow = DB_fetch_array($result)) {
		if ($myrow['categoryid'] == $_POST['AssetCat']) {
			echo '<option selected="selected" value="' . $myrow['categoryid'] . '">' . $myrow['categorydescription'] . '</option>';
		} else {
			echo '<option value="' . $myrow['categoryid'] . '">' . $myrow['categorydescription'] . '</option>';
		}
	}

	echo '</select></td>';
	echo '<td>'. _('Enter partial') . '<b> ' . _('Description') . '</b>:</td><td>';


	if (isset($_POST['Keywords'])) {
		echo '<input type="text" name="Keywords" value="' . trim($_POST['Keywords'],'%') . '" size="20" maxlength="25" />';
	} else {
		echo '<input type="text" name="Keywords" size="20" maxlength="25" />';
	}

	echo '</td></tr><tr><td></td>';

	echo '<td><b>' . _('OR').' ' . '</b>' . _('Enter partial') .' <b>'. _('Asset Code') . '</b>:</td>';
	echo '<td>';

	if (isset($_POST['AssetID'])) {
		echo '<input type="text" name="AssetID" value="'. trim($_POST['AssetID'],'%') . '" size="15" maxlength="18" />';
	} else {
		echo '<input type="text" name="AssetID" size="15" maxlength="18" />';
	}

	echo '</td></tr></table><br />';

	echo '<div class="centre"><input type="submit" name="Search" value="'. _('Search Now') . '" /></div>
          </div>
          </form>
          <br />';
}

if (isset($_POST['Search'])) {

	$_SESSION['AssetCat']=$_POST['AssetCat'];
	$_SESSION['Keywords']=$_POST['Keywords'];
	$_SESSION['AssetID']=$_POST['AssetID'];

	if ($_POST['AssetCat']=='All') {
		$_POST['AssetCat']='%';
	}
	if (isset($_POST['Keywords'])) {
		$_POST['Keywords']='%'.$_POST['Keywords'].'%';
	} else {
		$_POST['Keywords']='%';
	}
	if (isset($_POST['AssetID'])) {
		$_POST['AssetID']='%'.$_POST['AssetID'].'%';
	} else {
		$_POST['AssetID']='%';
	}

	

	$sql= "SELECT fixedassets.assetid,
					fixedassets.cost,
					fixedassets.accumdepn,
					fixedassets.description,
					fixedassets.depntype,
					fixedassets.serialno,
					fixedassets.barcode,
					fixedassets.assetlocation,
					fixedassets.note,
					fixedassetlocations.locationdescription
				FROM fixedassets
				INNER JOIN fixedassetlocations
				ON fixedassets.assetlocation=fixedassetlocations.locationid
				WHERE fixedassets.assetcategoryid " . LIKE . "'".$_POST['AssetCat']."'
				AND fixedassets.description " . LIKE . "'".$_POST['Keywords']."'
				AND fixedassets.assetid " . LIKE . "'".$_POST['AssetID']."'
				";//AND fixedassets.serialno " . LIKE . "'".$_POST['SerialNumber']."'

	$Result=DB_query($sql);
	echo '<div>';
	echo '<table class="selection">';
	echo '<tr>
			<th>' . _('Asset ID') . '</th>
			<th>' . _('Description') . '</th>
			<th>' . _('Serial number') . '</th>
			<th>' . _('Purchase Cost') . '</th>
			<th>' . _('Total Depreciation') . '</th>
			<th>' . _('Current Location') . '</th>
			<th>' . _('Note') . '</th>
			<th>' . _('Operating') . '</th>
		</tr>';

	$locationsql="SELECT locationid, locationdescription from fixedassetlocations";
	$LocationResult=DB_query($locationsql);

	while ($myrow=DB_fetch_array($Result)) {
		echo '<form action="'. htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '" method="post">';
		echo '<input type="hidden" name="FormID" value="' . $_SESSION['FormID'] . '" />';
		echo '<tr>
				<td>'.$myrow['assetid'].'</td>
				<td>'.$myrow['description'].'</td>
				<td>'.$myrow['serialno'].'</td>
				<td class="number">'.locale_number_format($myrow['cost'],$_SESSION['CompanyRecord']['decimalplaces']).'</td>
				<td class="number">'.locale_number_format($myrow['accumdepn'],$_SESSION['CompanyRecord']['decimalplaces']).'</td>
				<td>'.$myrow['locationdescription'].'</td>';
		echo '<td><input type="text" name="Note" value="'.$myrow['note'].'" /></td>';
		echo '<input type="hidden" name="AssetID" value="' . $myrow['assetid'].'" />';
		echo '<td><input type="submit" name="Move" value="'._('Enter Information').'" /></td>';
		echo '</tr></form>';
	}
	echo '</table>
          </div>
          ';
}

include('includes/footer.php');

?>