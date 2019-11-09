<?php

/* $Id: PDFWorkOrderReceived.php 5668 2013-01-07 15:32:21Z CQZ $*/

include('includes/session.php');

if (!isset($_GET['WO'])){
	if (isset($_POST['WO'])){
		if (is_numeric($_POST['WO'])){
			$_GET['WO'] = $_POST['WO'];
		} else {
			prnMsg(_('The entered transfer reference is expected to be numeric'),'error');
			unset($_POST['WO']);
		}
	}
	if (!isset($_GET['WO'])){ //still not set from a post then
	//open a form for entering a transfer number
		$Title = _('打印生产入库单');
		include('includes/header.php');
		$sql='select distinct reference,type from stockmoves where stockmoves.type=26 order by reference desc';
	    $result=DB_query($sql, $db);
		echo '<a href="WorkOrderReceive.php?WO=' .$_POST['WO'] . '&amp;StockID=' . $_POST['StockID'].'">' . _('返回') .'</a>';
		echo '<p class="page_title_text"><img src="'.$RootPath.'/css/'.$Theme.'/images/printer.png" title="' . _('Print Transfer Note') . '" alt="" />' . ' ' . $Title.'</p><br />';
		echo '<form method="post" action="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '">';
        echo '<div>';
		echo '<input type="hidden" name="FormID" value="' . $_SESSION['FormID'] . '" />';
		echo '<table>
			<tr>
				<td>'._('请选择：产成品己入库的工单号').'</td>
				<td>';
	    echo '<select name="WO">';
	    while ($myrow=DB_fetch_array($result)) {
		echo '<option value="'.$myrow['reference'].'">'.$myrow['reference'].'</option>';
	     }
	     echo '</select>';
	echo '</td>
			</tr>
		</table>';
	echo '<br />
          <div class="centre">
			<input type="submit" name="Print" value="' . _('Print') .'" />
          </div>';
    echo '</div>
          </form>';
	include ('includes/footer.php');
	exit;

	}
}

/*Print out the category totals */

$sql="SELECT stockmoves.stkmoveno,
			stockmoves.stockid,
			stockmoves.debtorno,
			stockmoves.transno,
			stockmoves.trandate,
			stockmaster.description,
			stockmaster.units,
			description,
			transno,
			stockmoves.loccode,
			locationname,
			trandate,
			qty,
			reference
		FROM stockmoves
		INNER JOIN stockmaster
		ON stockmoves.stockid=stockmaster.stockid
		INNER JOIN locations
		ON stockmoves.loccode=locations.loccode
		WHERE type=26 AND reference='".$_GET['WO']."'
		";

$result=DB_query($sql, $db);
if (DB_num_rows($result) == 0){
	$Title = _('无收货记录');
	include ('includes/header.php');
	prnMsg(_('无收货记录可供打印，工作单编号：') . ': ' . $_GET['WO'], 'error');
	echo '<a href="WorkOrderReceive.php?WO=' .$_POST['WO'] . '&amp;StockID=' . $_POST['StockID'].'">' . _('返回') .'</a>';
	include ('includes/footer.php');
	exit;
}

if(!isset($_POST['PDFPrint'])){
	$Title = _('打印生产入库单');
	include('includes/header.php');
	echo '<a href="WorkOrderReceive.php?WO=' .$_POST['WO'] . '&amp;StockID=' . $_POST['StockID'].'">' . _('返回') .'</a>';
	echo '<p class="page_title_text"><img src="'.$RootPath.'/css/'.$Theme.'/images/printer.png" title="' . _('Print Transfer Note') . '" alt="" />' . ' ' . $Title.'</p><br />';
	echo '<form action="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '" method="post" id="form">';
	echo '<div>';
	echo '<input type="hidden" name="FormID" value="' . $_SESSION['FormID'] . '" />';
	echo '<table class="selection">
		<tr>
			<td>'._('选择您要打印的第').' '.$_GET['WO'].'号'.' '.'工作单入库记录'.' : '.'</td></tr><tr>
			<td>';
	while ($myrow=DB_fetch_array($result)) {
		$StockID=$myrow['stockid'];
		$From = $myrow['locationname'];
		$Date=$myrow['trandate'];
		$To = $myrow['reference'];
		$Quantity=-$myrow['qty'];
		$Description=$myrow['description'];
		echo '<li><input type="checkbox" name="stkmv_'.$myrow['stkmoveno'].'" '.((empty($myrow['debtorno']))?'checked="checked"':'').'/>';
		echo '入库日期：'.$myrow['trandate'].'-'.'移动号：'.$myrow['transno'].'－〉'.$myrow['stockid'].'-'.$myrow['description'].' X '.$myrow['qty'].$myrow['units'].'</li>';
	}
	echo 	'</td>
		</tr>
		</table>';
	echo '<input type="hidden" name="WO" value="'.$_POST['WO'].'"/>
				 <input type="hidden" name="StockID" value="'.$_POST['StockID'].'"/>';
	echo '<br />
		<div class="centre">
			<input type="hidden" name="PDFWorkOrderReceived" value="" />
			<input type="submit" name="PDFPrint" value="' . _('打印选中的收货记录') . '" />
		</div>
		</div>
		</form>';
	include('includes/footer.php');
	exit();
}

//---接收将要打印的入库记录
$stkmvnos=array();
while ($myrow=DB_fetch_array($result)) {
	if(isset($_POST['stkmv_'.$myrow['stkmoveno']])){
		$stkmvnos[]=$myrow['stkmoveno'];
	}
}
if(count($stkmvnos)==0){}

//DB_data_seek($result,0);

$sql.=" AND stockmoves.stkmoveno IN (".implode(",",$stkmvnos).")";
$result=DB_query($sql, $db);

DB_query(" update stockmoves set debtorno='1' where stkmoveno IN (".implode(",",$stkmvnos).")", $db);

//---真正开始打印
$PaperSize='BillsGB';//定义纸张
include('includes/PDFStarter.php');
$pdf->addInfo('Title', _('生产入库单') );
$PageNumber=1;
$line_height=15;

include('includes/PDFWorkOrderReceivedHeader.inc');
include_once('includes/Transby.php');
$line_height=15;
$FontSize=10;
//get the first stock movement which will be the quantity taken from the initiating location
while ($myrow=DB_fetch_array($result)) {
	$StockID=$myrow['stockid'];
	$From = $myrow['locationname'];
	$Date=$myrow['trandate'];
	//$To = $myrow['reference'];
	$Quantity=$myrow['qty'];
	$Description=$myrow['description'];

	if(strcmp($myrow['debtorno'],'1')==0){
		$TER= '小心重复！';
	}else{
		$TER= ' ';
	}
			
	
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
	$LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos,105-$Left_Margin,$FontSize, $StockID,'center');
	$LeftOvers = $pdf->addTextWrap($Left_Margin+55,$YPos,180-$Left_Margin,$FontSize, $Description,'lift');
	$LeftOvers = $pdf->addTextWrap($Left_Margin+190,$YPos,100-$Left_Margin,$FontSize, locale_number_format($Quantity,2),'right');
    $LeftOvers = $pdf->addTextWrap($Left_Margin+240,$YPos,80-$Left_Margin,$FontSize, $myrow['units'],'center');
	$pdf->SetTextColor(255,0,0);
	$LeftOvers = $pdf->addTextWrap($Left_Margin+160,$YPos+5,200-$Left_Margin,$FontSize, $TER,'lift');
	$pdf->SetTextColor(0,0,0);
	$LeftOvers = $pdf->addTextWrap($Left_Margin+270,$YPos,150-$Left_Margin,$FontSize, $myrow['trandate'].'-'.$myrow['transno'],'lift');
	$LeftOvers = $pdf->addTextWrap($Left_Margin+373,$YPos,300-$Left_Margin,$FontSize, $From);
	list($userid,$realname,$stepdate)=getTransBy(26,$myrow['transno']);
	//$LeftOvers = $pdf->addTextWrap($Left_Margin+477,$YPos,95-$Left_Margin,$FontSize, $realname, 'center');
	
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
	$YPos=$YPos-$line_height;

	if ($YPos < $Bottom_Margin + 2*$line_height){
		$PageNumber++;
	   include('includes/PDFWorkOrderReceivedHeader.inc');
	}
}
//$LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos-70,300-$Left_Margin,$FontSize, _('打印日期: ').$Date);
//$LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos-70,300-$Left_Margin,$FontSize, _('入库签字：').'_____________');

$pdf->OutputD($_SESSION['DatabaseName'] . '_WORecv_' . date('Y-m-d') . '.pdf');
$pdf->__destruct();
?>