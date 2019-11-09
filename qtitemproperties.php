<?php
/* $Id: qtitemproperties.php 0.1 2014-03-16 01:12:02 by tools $*/

include('includes/session.php');
$Title = '检测数据';
include('includes/header.php');

//$_POST=array_merge($_POST,$_GET);

if (isset($_GET['qtpropid'])){
	$PkId =mb_strtoupper($_GET['qtpropid']);
} elseif(isset($_POST['qtpropid'])){
	$PkId =mb_strtoupper($_POST['qtpropid']);
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

		$sql = "UPDATE qtitemproperties SET	
					qtitemid='" . $_POST['qtitemid'] . "', 
					value='" . $_POST['value'] . "', 
					consule='" . $_POST['consule'] . "' 
				WHERE qtpropid = '".$PkId."'";

		$msg = '更新成功';

	} elseif ($InputError !=1) {

		$sql = "INSERT INTO qtitemproperties (
					qtitemid, 
					value, 
					consule 
				)
				VALUES (
					'" . $_POST['qtitemid'] . "', 
					'" . $_POST['value'] . "', 
					'" . $_POST['consule'] . "' 
				)";

		$msg = '保存成功';
	}
	if ($InputError !=1) {

		$ErrMsg = 'SQL执行失败';
		$DbgMsg = '执行失败的SQL语句为';
		$result = DB_query($sql,$ErrMsg, $DbgMsg);

		prnMsg($msg , 'success');

		unset($PkId);
		unset($_POST['qtitemid']);
		unset($_POST['value']);
		unset($_POST['consule']);
	}

} elseif (isset($_GET['delete'])) {
	$CanDel=false;
	
	if($CanDel){
		try{
			$sql="DELETE FROM qtitemproperties WHERE qtpropid='". $PkId."'";
			$ErrMsg = '删除记录失败';
			$result = DB_query($sql,$ErrMsg);

			prnMsg(' ' . $PkId . ' 已经删除','success');
		}catch(Exception $e){
			$e->getMessage();
		}
	}
}

if (!isset($PkId)) {

	$sql = "SELECT qtpropid,
					qtitemid, 
					value, 
					consule 
			FROM qtitemproperties";
	$result = DB_query($sql);

	echo '<table class="selection">';
	echo '<tr>
			<th>' . '检测物' . '</th>
			<th>' . '检测值' . '</th>
			<th>' . '合格' . '</th>
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
		<td>%s</td>
		<td><a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '?PkId=%s">' .  '编辑' . '</a></td>
		<td><a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '?PkId=%s&amp;delete=1" onclick="return confirm(\'' . '确实删除？' . '\');">' . '删除' . '</a></td>
		</tr>',
		$myrow['qtitemid'],
		$myrow['value'],
		$myrow['consule'],
		$myrow['qtpropid'],
		$myrow['qtpropid']);
	} //END WHILE LIST LOOP
	echo '</table><br />';
} //end of ifs and buts!

if (isset($PkId)) {
	echo '<div class="centre"><a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '">' . '显示所有记录' . '</a></div>';
}

if (! isset($_GET['delete'])) {

	echo '<form method="post" action="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '">';
    echo '<div>';
	echo '<input type="hidden" name="FormID" value="' . $_SESSION['FormID'] . '" />';

	if (isset($PkId)) {

		$sql = "SELECT qtpropid,
						qtitemid, 
						value, 
						consule 
				FROM qtitemproperties
				WHERE qtpropid='".$PkId."'";

		$result = DB_query($sql);
		$myrow = DB_fetch_array($result);
	
		$_POST['qtitemid'] = $myrow['qtitemid'];
		$_POST['value'] = $myrow['value'];
		$_POST['consule'] = $myrow['consule'];

		echo '<input type="hidden" name="qtpropid" value="' . $PkId . '" />';
		echo '<table class="selection">
				<tr>
					<td>' . '编号' . ':</td>
					<td>' . $PkId . '</td>
				</tr>';

	} else { //end of if $PkId only do the else when a new record is being entered

		echo '<table class="selection">';
	}
	if (!isset($_POST['qtitemid'])){
		$_POST['qtitemid']='';
	}
	if (!isset($_POST['value'])){
		$_POST['value']='';
	}
	if (!isset($_POST['consule'])){
		$_POST['consule']='';
	}
	echo '<tr>
			<td>' . _('检测物') . ':</td>
			<td><input type="text" '. (in_array('qtitemid',$Errors) ? 'class="inputerror"' : '' ) .' name="qtitemid"  size="30" maxlength="30" value="' . $_POST['qtitemid'] . '" /></td>
		</tr>';
	echo '<tr>
			<td>' . _('检测值') . ':</td>
			<td><input type="text" '. (in_array('value',$Errors) ? 'class="inputerror"' : '' ) .' name="value"  size="30" maxlength="30" value="' . $_POST['value'] . '" /></td>
		</tr>';
	echo '<tr>
			<td>' . _('合格') . ':</td>
			<td><input type="text" '. (in_array('consule',$Errors) ? 'class="inputerror"' : '' ) .' name="consule"  size="30" maxlength="30" value="' . $_POST['consule'] . '" /></td>
		</tr>';
	echo '</table>
		<br />
		<div class="centre">
			<input type="submit" name="submit" value="' . '保存' . '" />
		</div>
        </div>
		</form>';

} //end if record deleted no point displaying form to add record

include('includes/footer.php');
?>
