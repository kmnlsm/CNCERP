<?php
/* $Id: qtmodel.php 0.1 2014-03-16 01:12:02 by tools $*/

include('includes/session.php');
$Title = '检测类型所属物料商品';
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
echo '<a href="qtmodel.php">返回</a>';
if (isset($_POST['submit'])) {

	$InputError = 0;
	$i=1;
	
	$sql="select 1 from stockmaster where stockid='".$_POST['stockid']."' limit 1";
	$result = DB_query($sql);
	if(!DB_fetch_array($result)){
		$InputError = 1;
		prnMsg(_('不存在该商品物料ID').':'.$_POST['stockid'],'error');
		$Errors[$i] = 'stockid';
		$i++;
	}
	$sql="select 1 from qtmodel where modelid='".$_POST['modelid']."' limit 1";
	$result = DB_query($sql);
	if(!DB_fetch_array($result)){
		$InputError = 1;
		prnMsg(_('不存在该检测类型ID').':'.$_POST['modelid'],'error');
		$Errors[$i] = 'modelid';
		$i++;
	}
	if ($InputError !=1) {
		$sql = "INSERT INTO qtmodelstock (
					modelid, 
					stockid 
				)
				VALUES (
					'" . $_POST['modelid'] . "', 
					'" . $_POST['stockid'] . "' 
				)";

		$msg = '保存成功';
		$ErrMsg = 'SQL执行失败';
		$DbgMsg = '执行失败的SQL语句为';
		$result = DB_query($sql,$ErrMsg, $DbgMsg);

		prnMsg($msg , 'success');
		unset($_POST['stockid']);
	}

} elseif (isset($_GET['delete'])) {
	$CanDel=true;
	
	if($CanDel){
		try{
			$sql="DELETE FROM qtmodelstock WHERE modelid='". $PkId."' AND stockid='". $_GET['stockid']."'";
	
			$ErrMsg = '删除记录失败';
			$result = DB_query($sql,$ErrMsg);

			prnMsg(' ' . $_GET['stockid'] . ' 已经删除','success');
		}catch(Exception $e){
			prnMsg(' 删除失败:'.$e->getMessage(),'success');
		}
	}
}

$sql = "SELECT modelid,qtmodelstock.stockid,description 
		FROM qtmodelstock INNER JOIN stockmaster ON stockmaster.stockid=qtmodelstock.stockid";
$result = DB_query($sql);

echo '<table class="selection">';
echo '<tr>
		<th>' . '编号' . '</th>
		<th>' . '名称' . '</th>
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
printf('<td>%s</td>
	<td>%s</td>
	<td><a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '?modelid=%s&amp;stockid=%s&amp;delete=1" onclick="return confirm(\'' . '确实删除？' . '\');">' . '删除' . '</a></td>
	</tr>',
	$myrow['stockid'],
	$myrow['description'],
	$myrow['modelid'],
	$myrow['stockid']);
} //END WHILE LIST LOOP
echo '</table><br />';


echo '<form method="post" action="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '">';
echo '<div>';
echo '<input type="hidden" name="FormID" value="' . $_SESSION['FormID'] . '" />';
echo '<input type="hidden" name="modelid" value="' . $PkId . '" />';

if (isset($PkId)) {

	$sql = "SELECT modelid,
					name, 
					narrative 
			FROM qtmodel
			WHERE modelid='".$PkId."'";

	$result = DB_query($sql);
	$myrow = DB_fetch_array($result);

	echo '<table class="selection">';

} else { //end of if $PkId only do the else when a new record is being entered

	echo '<table class="selection">';
}

echo '<tr>
		<td>' . _('商品物料ID') . ':</td>
		<td><input type="text" '. (in_array('name',$Errors) ? 'class="inputerror"' : '' ) .' name="stockid"  size="30" maxlength="30" value="' . $_POST['name'] . '" /></td>
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
