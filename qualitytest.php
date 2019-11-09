<?php
/* $Id: qualitytest.php 0.1 2014-03-16 01:12:02 by tools $*/

include('includes/session.php');
$Title = '检测档案';
include('includes/header.php');

//$_POST=array_merge($_POST,$_GET);

if (isset($_GET['qtid'])){
	$PkId =mb_strtoupper($_GET['qtid']);
} elseif(isset($_POST['qtid'])){
	$PkId =mb_strtoupper($_POST['qtid']);
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

		$sql = "UPDATE qualitytest SET	
					inputdate='" . $_POST['inputdate'] . "', 
					qtdate='" . $_POST['qtdate'] . "', 
					loccode='" . $_POST['loccode'] . "', 
					conclusion='" . $_POST['conclusion'] . "', 
					narrative='" . $_POST['narrative'] . "' 
				WHERE qtid = '".$PkId."'";

		$msg = '更新成功';

	} elseif ($InputError !=1) {

		$sql = "INSERT INTO qualitytest (
					inputdate, 
					qtdate, 
					loccode, 
					conclusion, 
					narrative 
				)
				VALUES (
					'" . $_POST['inputdate'] . "', 
					'" . $_POST['qtdate'] . "', 
					'" . $_POST['loccode'] . "', 
					'" . $_POST['conclusion'] . "', 
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
		unset($_POST['inputdate']);
		unset($_POST['qtdate']);
		unset($_POST['loccode']);
		unset($_POST['conclusion']);
		unset($_POST['narrative']);
	}

} elseif (isset($_GET['delete'])) {
	$CanDel=false;
	
	if($CanDel){
		try{
			$sql="DELETE FROM qualitytest WHERE qtid='". $PkId."'";
			$ErrMsg = '删除记录失败';
			$result = DB_query($sql,$ErrMsg);

			prnMsg(' ' . $PkId . ' 已经删除','success');
		}catch(Exception $e){
			$e->getMessage();
		}
	}
}

if (!isset($PkId)) {

	$sql = "SELECT qtid,
					inputdate, 
					qtdate, 
					loccode, 
					conclusion, 
					narrative 
			FROM qualitytest";
	$result = DB_query($sql);

	echo '<table class="selection">';
	echo '<tr>
			<th>' . '录入日期' . '</th>
			<th>' . '检测日期' . '</th>
			<th>' . '仓库' . '</th>
			<th>' . '结论' . '</th>
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
		<td>%s</td>
		<td><a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '?PkId=%s">' .  '编辑' . '</a></td>
		<td><a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '?PkId=%s&amp;delete=1" onclick="return confirm(\'' . '确实删除？' . '\');">' . '删除' . '</a></td>
		</tr>',
		$myrow['inputdate'],
		$myrow['qtdate'],
		$myrow['loccode'],
		$myrow['conclusion'],
		$myrow['narrative'],
		$myrow['qtid'],
		$myrow['qtid']);
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

		$sql = "SELECT qtid,
						inputdate, 
						qtdate, 
						loccode, 
						conclusion, 
						narrative 
				FROM qualitytest
				WHERE qtid='".$PkId."'";

		$result = DB_query($sql);
		$myrow = DB_fetch_array($result);
	
		$_POST['inputdate'] = $myrow['inputdate'];
		$_POST['qtdate'] = $myrow['qtdate'];
		$_POST['loccode'] = $myrow['loccode'];
		$_POST['conclusion'] = $myrow['conclusion'];
		$_POST['narrative'] = $myrow['narrative'];

		echo '<input type="hidden" name="qtid" value="' . $PkId . '" />';
		echo '<table class="selection">
				<tr>
					<td>' . '编号' . ':</td>
					<td>' . $PkId . '</td>
				</tr>';

	} else { //end of if $PkId only do the else when a new record is being entered

		echo '<table class="selection">';
	}
	if (!isset($_POST['inputdate'])){
		$_POST['inputdate']='';
	}
	if (!isset($_POST['qtdate'])){
		$_POST['qtdate']='';
	}
	if (!isset($_POST['loccode'])){
		$_POST['loccode']='';
	}
	if (!isset($_POST['conclusion'])){
		$_POST['conclusion']='';
	}
	if (!isset($_POST['narrative'])){
		$_POST['narrative']='';
	}
	echo '<tr>
			<td>' . _('录入日期') . ':</td>
			<td><input class="date" type="text" '. (in_array('inputdate',$Errors) ? 'class="inputerror"' : '' ) .' name="inputdate"  size="30" maxlength="30" value="' . $_POST['inputdate'] . '" /></td>
		</tr>';
	echo '<tr>
			<td>' . _('检测日期') . ':</td>
			<td><input class="date" type="text" '. (in_array('qtdate',$Errors) ? 'class="inputerror"' : '' ) .' name="qtdate"  size="30" maxlength="30" value="' . $_POST['qtdate'] . '" /></td>
		</tr>';
	echo '<tr>
			<td>' . _('仓库') . ':</td>
			<td><input type="text" '. (in_array('loccode',$Errors) ? 'class="inputerror"' : '' ) .' name="loccode"  size="30" maxlength="30" value="' . $_POST['loccode'] . '" /></td>
		</tr>';
	echo '<tr>
			<td>' . _('结论') . ':</td>
			<td><input type="text" '. (in_array('conclusion',$Errors) ? 'class="inputerror"' : '' ) .' name="conclusion"  size="30" maxlength="30" value="' . $_POST['conclusion'] . '" /></td>
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
