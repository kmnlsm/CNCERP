<?php
/* $Id: qtmodel.php 0.1 2014-03-16 01:12:02 by tools $*/

include('includes/session.php');
$Title = '检测类型';
include('includes/header.php');

//$_POST=array_merge($_POST,$_GET);

if (isset($_GET['modelid'])){
	$PkId =mb_strtoupper($_GET['modelid']);
} elseif(isset($_POST['modelid'])){
	$PkId =mb_strtoupper($_POST['modelid']);
}

if (isset($Errors)) {
	unset($Errors);
}

$Errors = array();

echo '<p class="page_title_text"><img src="'.$RootPath.'/css/'.$Theme.'/images/maintenance.png" title="' . '查询' . '" alt="" />' . ' ' . $Title . '</p>';

if (isset($_POST['submit'])) {

	$InputError = 0;
	$i=1;
/*
	if (mb_strlen($_POST['SalesmanCode']) > 3) {
		$InputError = 1;
		prnMsg(_('The salesperson code must be three characters or less long'),'error');
		$Errors[$i] = 'SalesmanCode';
		$i++;
	}

	if (!isset($_POST['SManTel'])){
	  $_POST['SManTel']='';
	}
*/

	if (isset($PkId) AND $InputError !=1) {

		$sql = "UPDATE qtmodel SET	
					name='" . $_POST['name'] . "', 
					narrative='" . $_POST['narrative'] . "' 
				WHERE modelid = '".$PkId."'";

		$msg = '更新成功';

	} elseif ($InputError !=1) {

		$sql = "INSERT INTO qtmodel (
					name, 
					narrative 
				)
				VALUES (
					'" . $_POST['name'] . "', 
					'" . $_POST['narrative'] . "' 
				)";

		$msg = '保存成功';
	}
	if ($InputError !=1) {

		$ErrMsg = 'SQL执行失败';
		$DbgMsg = '执行失败的SQL语句为';
		$result = DB_query($sql,$ErrMsg, $DbgMsg);

		prnMsg($msg , 'success');

		unset($PkId);
		unset($_POST['name']);
		unset($_POST['narrative']);
	}

} elseif (isset($_GET['delete'])) {
	$CanDel=true;
	
	if($CanDel){
		try{
			$sql="DELETE FROM qtmodel WHERE modelid='". $PkId."'";
			echo $sql;
			$ErrMsg = '删除记录失败';
			$result = DB_query($sql,$ErrMsg);

			prnMsg(' ' . $PkId . ' 已经删除','success');
		}catch(Exception $e){
			prnMsg(' 删除失败:'.$e->getMessage(),'success');
		}
	}
}

$sql = "SELECT modelid,
				name, 
				narrative 
		FROM qtmodel";
$result = DB_query($sql);

echo '<table class="selection">';
echo '<tr>
		<th>' . '名称' . '</th>
		<th>' . '产品数' . '</th>
		<th>' . '指标数' . '</th>
		<th>' . '备注' . '</th>
		<th colspan="2">' . '操作' . '</th>
</tr>';
$k=0;
while ($myrow=DB_fetch_array($result)) {

if ($k==1){
	echo '<tr class="EvenTableRows">';
	$k=0;
} else {
	echo '<tr class="OddTableRows">';
	$k++;
}
$sql = "SELECT count(*) as count
		FROM qtmodelstock where modelid=".$myrow['modelid'];
$resultT = DB_query($sql);
$myrowT=DB_fetch_array($resultT);
$StockCount=$myrowT['count'];
$sql = "SELECT count(*) as count
		FROM qtproperties where modelid=".$myrow['modelid'];
$resultT = DB_query($sql);
$myrowT=DB_fetch_array($resultT);
$PropCount=$myrowT['count'];
printf('<td>%s</td>
	<td>%s</td>
	<td>%s</td>
	<td>%s</td>
	<td><a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '?modelid=%s">' .  '编辑' . '</a></td>
	<td><a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '?modelid=%s&amp;delete=1" onclick="return confirm(\'' . '确实删除？' . '\');">' . '删除' . '</a></td>
	</tr>',
	$myrow['name'],
	'<a href="qtmodelstock.php?modelid='.$myrow['modelid'].'">'.$StockCount.'</a>',
	'<a href="qtproperties.php?modelid='.$myrow['modelid'].'">'.$PropCount.'</a>',
	$myrow['narrative'],
	$myrow['modelid'],
	$myrow['modelid']);
} //END WHILE LIST LOOP
echo '</table><br />';


echo '<form method="post" action="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '">';
echo '<div>';
echo '<input type="hidden" name="FormID" value="' . $_SESSION['FormID'] . '" />';

if (isset($PkId)) {

	$sql = "SELECT modelid,
					name, 
					narrative 
			FROM qtmodel
			WHERE modelid='".$PkId."'";

	$result = DB_query($sql);
	$myrow = DB_fetch_array($result);

	$_POST['name'] = $myrow['name'];
	$_POST['narrative'] = $myrow['narrative'];

	echo '<input type="hidden" name="modelid" value="' . $PkId . '" />';
	echo '<table class="selection">
			<tr>
				<td>' . '编号' . ':</td>
				<td>' . $PkId . '</td>
			</tr>';

} else { //end of if $PkId only do the else when a new record is being entered

	echo '<table class="selection">';
}
if (!isset($_POST['name'])){
	$_POST['name']='';
}
if (!isset($_POST['narrative'])){
	$_POST['narrative']='';
}
echo '<tr>
		<td>' . _('名称') . ':</td>
		<td><input type="text" '. (in_array('name',$Errors) ? 'class="inputerror"' : '' ) .' name="name"  size="30" maxlength="30" value="' . $_POST['name'] . '" /></td>
	</tr>';
echo '<tr>
		<td>' . _('备注') . ':</td>
		<td><input type="text" '. (in_array('narrative',$Errors) ? 'class="inputerror"' : '' ) .' name="narrative"  size="30" maxlength="30" value="' . $_POST['narrative'] . '" /></td>
	</tr>';
echo '</table>
	<br />
	<div class="centre">
		<input type="submit" name="submit" value="' . '保存' . '" />
	</div>
	</div>
	</form>';

include('includes/footer.php');
?>
