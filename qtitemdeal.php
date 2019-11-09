<?php
/* $Id: qtitemdeal.php 0.1 2014-03-16 01:12:02 by tools $*/

include('includes/session.php');
$Title = '不合格处理';
include('includes/header.php');

//$_POST=array_merge($_POST,$_GET);

if (isset($_GET['dealid'])){
	$PkId =mb_strtoupper($_GET['dealid']);
} elseif(isset($_POST['dealid'])){
	$PkId =mb_strtoupper($_POST['dealid']);
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

		$sql = "UPDATE qtitemdeal SET	
					qtitermid='" . $_POST['qtitermid'] . "', 
					dealtype='" . $_POST['dealtype'] . "', 
					quantity='" . $_POST['quantity'] . "', 
					narrative='" . $_POST['narrative'] . "' 
				WHERE dealid = '".$PkId."'";

		$msg = '更新成功';

	} elseif ($InputError !=1) {

		$sql = "INSERT INTO qtitemdeal (
					qtitermid, 
					dealtype, 
					quantity, 
					narrative 
				)
				VALUES (
					'" . $_POST['qtitermid'] . "', 
					'" . $_POST['dealtype'] . "', 
					'" . $_POST['quantity'] . "', 
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
		unset($_POST['qtitermid']);
		unset($_POST['dealtype']);
		unset($_POST['quantity']);
		unset($_POST['narrative']);
	}

} elseif (isset($_GET['delete'])) {
	$CanDel=false;
	
	if($CanDel){
		try{
			$sql="DELETE FROM qtitemdeal WHERE dealid='". $PkId."'";
			$ErrMsg = '删除记录失败';
			$result = DB_query($sql,$ErrMsg);

			prnMsg(' ' . $PkId . ' 已经删除','success');
		}catch(Exception $e){
			$e->getMessage();
		}
	}
}

if (!isset($PkId)) {

	$sql = "SELECT dealid,
					qtitermid, 
					dealtype, 
					quantity, 
					narrative 
			FROM qtitemdeal";
	$result = DB_query($sql);

	echo '<table class="selection">';
	echo '<tr>
			<th>' . '检测物' . '</th>
			<th>' . '处理' . '</th>
			<th>' . '数量' . '</th>
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

	printf('<td>%s</td>
		<td>%s</td>
		<td>%s</td>
		<td>%s</td>
		<td><a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '?PkId=%s">' .  '编辑' . '</a></td>
		<td><a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '?PkId=%s&amp;delete=1" onclick="return confirm(\'' . '确实删除？' . '\');">' . '删除' . '</a></td>
		</tr>',
		$myrow['qtitermid'],
		$myrow['dealtype'],
		$myrow['quantity'],
		$myrow['narrative'],
		$myrow['dealid'],
		$myrow['dealid']);
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

		$sql = "SELECT dealid,
						qtitermid, 
						dealtype, 
						quantity, 
						narrative 
				FROM qtitemdeal
				WHERE dealid='".$PkId."'";

		$result = DB_query($sql);
		$myrow = DB_fetch_array($result);
	
		$_POST['qtitermid'] = $myrow['qtitermid'];
		$_POST['dealtype'] = $myrow['dealtype'];
		$_POST['quantity'] = $myrow['quantity'];
		$_POST['narrative'] = $myrow['narrative'];

		echo '<input type="hidden" name="dealid" value="' . $PkId . '" />';
		echo '<table class="selection">
				<tr>
					<td>' . '编号' . ':</td>
					<td>' . $PkId . '</td>
				</tr>';

	} else { //end of if $PkId only do the else when a new record is being entered

		echo '<table class="selection">';
	}
	if (!isset($_POST['qtitermid'])){
		$_POST['qtitermid']='';
	}
	if (!isset($_POST['dealtype'])){
		$_POST['dealtype']='';
	}
	if (!isset($_POST['quantity'])){
		$_POST['quantity']='';
	}
	if (!isset($_POST['narrative'])){
		$_POST['narrative']='';
	}
	echo '<tr>
			<td>' . _('检测物') . ':</td>
			<td><input type="text" '. (in_array('qtitermid',$Errors) ? 'class="inputerror"' : '' ) .' name="qtitermid"  size="30" maxlength="30" value="' . $_POST['qtitermid'] . '" /></td>
		</tr>';
	echo '<tr>
			<td>' . _('处理') . ':</td>
			<td><input type="text" '. (in_array('dealtype',$Errors) ? 'class="inputerror"' : '' ) .' name="dealtype"  size="30" maxlength="30" value="' . $_POST['dealtype'] . '" /></td>
		</tr>';
	echo '<tr>
			<td>' . _('数量') . ':</td>
			<td><input type="text" '. (in_array('quantity',$Errors) ? 'class="inputerror"' : '' ) .' name="quantity"  size="30" maxlength="30" value="' . $_POST['quantity'] . '" /></td>
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

} //end if record deleted no point displaying form to add record

include('includes/footer.php');
?>
