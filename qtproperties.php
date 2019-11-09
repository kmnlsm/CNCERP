<?php
/* $Id: qtproperties.php 0.1 2014-03-16 01:12:02 by tools $*/

include('includes/session.php');
$Title = '参数设置';
include('includes/header.phps');
$UIType=array('0'=>'输入框','1'=>'选择框','2'=>'复选框','3'=>'日期框');
$_POST=array_merge($_POST,$_GET);

if(empty($_POST['modelid'])){
	prnMsg( _('未指定检测类型'),'error');
	include('includes/footer.php');
	return;
}
$sql = "SELECT name, 
				narrative 
		FROM qtmodel WHERE modelid='".$_POST['modelid']."'";
$resultT = DB_query($sql);
$myrowT=DB_fetch_array($resultT);
if(empty($myrowT['name'])){
	prnMsg( _('所指定检测类型').$_POST['modelid'].'不存在','error');
	include('includes/footer.inc');
	return;
}
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
echo '<a href="qtmodel.php">返回</a>';
if (isset($_POST['submit'])) {

	$InputError = 0;
	$i=1;

	if (mb_strlen($_POST['label']) == 0) {
		$InputError = 1;
		prnMsg(_('名称不能为空'),'error');
		$Errors[$i] = 'label';
		$i++;
	}
/*
	if (!isset($_POST['SManTel'])){
	  $_POST['SManTel']='';
	}
*/

	if (isset($PkId) AND $InputError !=1) {

		$sql = "UPDATE qtproperties SET	
					label='" . $_POST['label'] . "', 
					controltype='" . $_POST['controltype'] . "', 
					defaultvalue='" . $_POST['defaultvalue'] . "', 
					maximumvalue='" . $_POST['maximumvalue'] . "', 
					minimumvalue='" . $_POST['minimumvalue'] . "', 
					numericvalue='" . $_POST['numericvalue'] . "' 
				WHERE qtpropid = '".$PkId."'";

		$msg = '更新成功';

	} elseif ($InputError !=1) {

		$sql = "INSERT INTO qtproperties (
					modelid, 
					label, 
					controltype, 
					defaultvalue, 
					maximumvalue, 
					minimumvalue, 
					numericvalue 
				)
				VALUES (
					'" . $_POST['modelid'] . "', 
					'" . $_POST['label'] . "', 
					'" . $_POST['controltype'] . "', 
					'" . $_POST['defaultvalue'] . "', 
					'" . $_POST['maximumvalue'] . "', 
					'" . $_POST['minimumvalue'] . "', 
					'" . $_POST['numericvalue'] . "' 
				)";

		$msg = '保存成功';
	}
	if ($InputError !=1) {

		$ErrMsg = 'SQL执行失败';
		$DbgMsg = '执行失败的SQL语句为';
		$result = DB_query($sql,$ErrMsg, $DbgMsg);

		prnMsg($msg , 'success');

		unset($PkId);
		unset($_POST['modelid']);
		unset($_POST['label']);
		unset($_POST['controltype']);
		unset($_POST['defaultvalue']);
		unset($_POST['maximumvalue']);
		unset($_POST['minimumvalue']);
		unset($_POST['numericvalue']);
	}

} elseif (isset($_GET['delete'])) {
	$CanDel=false;
	
	if($CanDel){
		try{
			$sql="DELETE FROM qtproperties WHERE qtpropid='". $PkId."'";
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
					modelid, 
					label, 
					controltype, 
					defaultvalue, 
					maximumvalue, 
					minimumvalue, 
					numericvalue 
			FROM qtproperties";
	$result = DB_query($sql);

	echo '<table class="selection">';
	echo '<tr>
			<th>' . '检测类型' . '</th>
			<th>' . '名称' . '</th>
			<th>' . '值类型' . '</th>
			<th>' . '默认值' . '</th>
			<th>' . '最大值' . '</th>
			<th>' . '最小值' . '</th>
			<th>' . '数字类型' . '</th>
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
		<td>%s</td>
		<td>%s</td>
		<td><a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '?PkId=%s">' .  '编辑' . '</a></td>
		<td><a href="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '?PkId=%s&amp;delete=1" onclick="return confirm(\'' . '确实删除？' . '\');">' . '删除' . '</a></td>
		</tr>',
		$myrowT['name'],
		$myrow['label'],
		$myrow['controltype'],
		$myrow['defaultvalue'],
		$myrow['maximumvalue'],
		$myrow['minimumvalue'],
		$myrow['numericvalue'],
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
						modelid, 
						label, 
						controltype, 
						defaultvalue, 
						maximumvalue, 
						minimumvalue, 
						numericvalue 
				FROM qtproperties
				WHERE qtpropid='".$PkId."'";

		$result = DB_query($sql);
		$myrow = DB_fetch_array($result);
	
		$_POST['modelid'] = $myrow['modelid'];
		$_POST['label'] = $myrow['label'];
		$_POST['controltype'] = $myrow['controltype'];
		$_POST['defaultvalue'] = $myrow['defaultvalue'];
		$_POST['maximumvalue'] = $myrow['maximumvalue'];
		$_POST['minimumvalue'] = $myrow['minimumvalue'];
		$_POST['numericvalue'] = $myrow['numericvalue'];

		echo '<input type="hidden" name="qtpropid" value="' . $PkId . '" />';
		echo '<table class="selection">
				<tr>
					<td>' . '编号' . ':</td>
					<td>' . $PkId . '</td>
				</tr>';

	} else { //end of if $PkId only do the else when a new record is being entered

		echo '<table class="selection">';
	}
	if (!isset($_POST['label'])){
		$_POST['label']='';
	}
	if (!isset($_POST['controltype'])){
		$_POST['controltype']='';
	}
	if (!isset($_POST['defaultvalue'])){
		$_POST['defaultvalue']='';
	}
	if (!isset($_POST['maximumvalue'])){
		$_POST['maximumvalue']='';
	}
	if (!isset($_POST['minimumvalue'])){
		$_POST['minimumvalue']='';
	}
	if (!isset($_POST['numericvalue'])){
		$_POST['numericvalue']='';
	}
	echo '<tr>
			<td>' . _('检测类型') . ':</td>
			<td>'.$myrowT['name'].'<input type="hidden" name="modelid" value="' . $_POST['modelid'] . '" /></td>
		</tr>';
	echo '<tr>
			<td>' . _('名称') . ':</td>
			<td><input type="text" '. (in_array('label',$Errors) ? 'class="inputerror"' : '' ) .' name="label"  size="30" maxlength="30" value="' . $_POST['label'] . '" /></td>
		</tr>';//$_POST['controltype']
	echo '<tr>
			<td>' . _('Control Type') . ':</td>
			<td><select '. (in_array('controltype',$Errors) ? 'class="inputerror"' : '' ) .' name="controltype">';
	foreach($UIType as $k=>$v){
		echo '<option value="'.$k.'">'.$v.'</option>';
	}
	echo '</select></td>
		</tr>';
	echo '<tr>
			<td>' . _('默认值') . ':</td>
			<td><input type="text" '. (in_array('defaultvalue',$Errors) ? 'class="inputerror"' : '' ) .' name="defaultvalue"  size="30" maxlength="30" value="' . $_POST['defaultvalue'] . '" alt="当类型是选择框时,选项们用逗号隔开即可"/></td>
		</tr>';
	echo '<tr>
			<td>' . _('最大值') . ':</td>
			<td><input type="text" '. (in_array('maximumvalue',$Errors) ? 'class="inputerror"' : '' ) .' name="maximumvalue"  size="30" maxlength="30" value="' . $_POST['maximumvalue'] . '" /></td>
		</tr>';
	echo '<tr>
			<td>' . _('最小值') . ':</td>
			<td><input type="text" '. (in_array('minimumvalue',$Errors) ? 'class="inputerror"' : '' ) .' name="minimumvalue"  size="30" maxlength="30" value="' . $_POST['minimumvalue'] . '" /></td>
		</tr>';
	echo '<tr>
			<td>' . _('Numeric Value') . ':</td>
			<td><input type="checkbox" '. (in_array('numericvalue',$Errors) ? 'class="inputerror"' : '' ) .' name="numericvalue"  size="30" maxlength="30" value="' . $_POST['numericvalue'] . '" /></td>
		</tr>';
	echo '</table>
		<br />
		<div class="centre">
			<input type="submit" name="submit" value="' . '保存' . '" />
		</div>
        </div>
		</form>';

} //end if record deleted no point displaying form to add record

include('includes/footer.inc');
?>
