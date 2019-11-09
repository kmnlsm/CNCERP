<?php
/* $Id: PDFReceipt.php 4739 2011-11-04 04:56:22Z daintree $*/
include('includes/CommonsCQZ.inc');
include('includes/session.php');
$PaperSize='Bills';//定义纸张
include('includes/PDFStarter.php');
include('includes/Transby.php');
$FontSize=10;
$pdf->addInfo('Title', _('Sales Receipt') );

$PageNumber=1;
$line_height=12;
if ($PageNumber>1){
	$pdf->newPage();
}

$FontSize=10;
//$YPos= $Page_Height-$Top_Margin;
$YPos=0;
$XPos=0;
$pdf->addJpegFromFile($_SESSION['LogoFile'] ,$XPos+50,$YPos+200,0,30);

$LeftOvers = $pdf->addTextWrap(160,$YPos+210,400,14,$_SESSION['CompanyRecord']['coyname'].''.'客户收款收据');
$LeftOvers = $pdf->addTextWrap(50,$YPos+15,300,$FontSize,_('地址：').$_SESSION['CompanyRecord']['regoffice1'].'  '.'电话'.':'.$_SESSION['CompanyRecord']['telephone']);
$LeftOvers = $pdf->addTextWrap(310,$YPos+15,300,$FontSize,_('传真').':'.$_SESSION['CompanyRecord']['fax']);
//$LeftOvers = $pdf->addTextWrap(50,$YPos-($line_height*6),300,$FontSize,$_SESSION['CompanyRecord']['coyname'].''.'1');
//$LeftOvers = $pdf->addTextWrap(50,$YPos-($line_height*7),300,$FontSize,$_SESSION['CompanyRecord']['regoffice1'].''.'2');
//$LeftOvers = $pdf->addTextWrap(50,$YPos-($line_height*8),300,$FontSize,$_SESSION['CompanyRecord']['regoffice2'].''.'3');
//$LeftOvers = $pdf->addTextWrap(50,$YPos-($line_height*9),300,$FontSize,$_SESSION['CompanyRecord']['regoffice3'].''.'4');
//$LeftOvers = $pdf->addTextWrap(50,$YPos-($line_height*10),300,$FontSize,$_SESSION['CompanyRecord']['regoffice4'].''.'5');
//$LeftOvers = $pdf->addTextWrap(50,$YPos-($line_height*11),300,$FontSize,$_SESSION['CompanyRecord']['regoffice5'].''.'6');
//$LeftOvers = $pdf->addTextWrap(50,$YPos-($line_height*12),300,$FontSize,$_SESSION['CompanyRecord']['regoffice6'].''.'7');
//$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-180,$YPos-($line_height*3),550,$FontSize, _('Customer Receipt Number ').'  : ' . $_GET['BatchNumber'] .'/'.$_GET['ReceiptNumber'].''.'8' );
//$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-180,$YPos-($line_height*4.5),140,$FontSize, _('Printed').': ' . Date($_SESSION['DefaultDateFormat']) . '   '. _('Page'). ' ' . $PageNumber.''.'9');

//$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-150,$YPos+195,550,$FontSize, _('Customer Receipt Number ').' NO  ' . $_GET['BatchNumber'] .'/'.$_GET['ReceiptNumber'] );//单据号
$BatchNumberS=str_pad($_GET['BatchNumber'], 9, '0', STR_PAD_LEFT);
$LeftOvers = $pdf->addTextWrap(265,$YPos+195,300,$FontSize, _('Customer Receipt Number ').' NO  ' .$BatchNumberS , 'right');//单据号
//$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-350,$YPos+195,140,$FontSize, _('Printed').': ' . Date($_SESSION['DefaultDateFormat']) . '   '. _('Page'). ' ' . $PageNumber);//打印日期页码
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-350,$YPos+195,140,$FontSize, _('Printed').': ' . Date($_SESSION['DefaultDateFormat']) );//打印日期

$YPos -= 50;

$YPos -=$line_height;
//Note, this is ok for multilang as this is the value of a Select, text in option is different

$YPos -=(2*$line_height);

/*Draw a rectangle to put the headings in     */

$pdf->line($Left_Margin, $YPos+$line_height,$Page_Width-$Right_Margin, $YPos+$line_height);

$FontSize=10;
$YPos -= (1.5 * $line_height);

$PageNumber++;

$sql="SELECT MIN(id) as start FROM debtortrans WHERE type=12 AND transno='". $_GET['BatchNumber']. "'";
$result=DB_query($sql);
$myrow=DB_fetch_array($result);
$StartReceiptNumber=$myrow['start'];

$sql="SELECT debtorno,
            inputdate,
            reference,
			ovamount,
			invtext
		FROM debtortrans
		WHERE type=12
		AND transno='" . $_GET['BatchNumber'] . "'
		AND id='". ($StartReceiptNumber-1+$_GET['ReceiptNumber']) ."'";
$result = DB_query($sql);
$myrow = DB_fetch_array($result);
$DebtorNo = $myrow['debtorno'];
$Inputdate = $myrow['inputdate'];
$Reference = $myrow['reference'];
$Amount = $myrow['ovamount'];
$Narrative = $myrow['invtext'];

$sql="SELECT currency,
		     decimalplaces
		FROM currencies
		WHERE currabrev=(SELECT currcode
    	FROM banktrans
		WHERE type=12
		AND transno='" . $_GET['BatchNumber']."')";
$result=DB_query($sql);
$myrow=DB_fetch_array($result);
$Currency=$myrow['currency'];
$DecimalPlaces=$myrow['decimalplaces'];

$sql="SELECT name,
             address1,
			 address2,
			 address3,
			 address4,
			 address5,
			 address6
		FROM debtorsmaster
		WHERE debtorno='".$DebtorNo."'";

$result=DB_query($sql);
$myrow=DB_fetch_array($result);

$LeftOvers = $pdf->addTextWrap(50,$YPos+280,300,$FontSize+3,_('交款单位').':');

$LeftOvers = $pdf->addTextWrap(110,$YPos+280,300,$FontSize+3, htmlspecialchars_decode($myrow['name']));
//$LeftOvers = $pdf->addTextWrap(150,$YPos-($line_height*1),300,$FontSize, htmlspecialchars_decode($myrow['address1'].''.'12'));
//$LeftOvers = $pdf->addTextWrap(150,$YPos-($line_height*2),300,$FontSize, htmlspecialchars_decode($myrow['address2'].''.'13'));
//$LeftOvers = $pdf->addTextWrap(150,$YPos-($line_height*3),300,$FontSize, htmlspecialchars_decode($myrow['address3'].''.'14'));
//$LeftOvers = $pdf->addTextWrap(150,$YPos-($line_height*4),300,$FontSize, htmlspecialchars_decode($myrow['address4'].''.'15'));
//$LeftOvers = $pdf->addTextWrap(150,$YPos-($line_height*5),300,$FontSize, htmlspecialchars_decode($myrow['address5'].''.'16'));
//$LeftOvers = $pdf->addTextWrap(150,$YPos-($line_height*6),300,$FontSize, htmlspecialchars_decode($myrow['address6'].''.'17'));

//$YPos=$YPos-($line_height*8);
$DisplayTotal = locale_number_format(-$Amount,$DecimalPlaces);//金额
$DisplayTotal2 = number_format(-$Amount,2,".","");//大写金额去千分号
$num=$DisplayTotal2;
$LeftOvers = $pdf->addTextWrap(50,$YPos+150,300,$FontSize,_('合计金额').'  '.$Currency.'（大写）'.' : ');
$LeftOvers = $pdf->addTextWrap(180,$YPos+150,300,$FontSize,ChangeToRMB($num));
$LeftOvers = $pdf->addTextWrap(400,$YPos+150,150,$FontSize,_('¥').$DisplayTotal , 'right');

//$YPos=$YPos-($line_height*2);
$LeftOvers = $pdf->addTextWrap(180,$YPos+260,800,$FontSize,_('收款摘要明细栏'));//收款摘要
$LeftOvers = $pdf->addTextWrap(390,$YPos+260,800,$FontSize,_('交易发生时间'));//收款摘要
$LeftOvers = $pdf->addTextWrap(500,$YPos+260,180,$FontSize,_('金额'));//收款摘要

$LeftOvers = $pdf->addTextWrap(50,$YPos+240,800,$FontSize,$Narrative.' / '.$Reference);//收款摘要
$LeftOvers = $pdf->addTextWrap(380,$YPos+240,800,$FontSize,$Inputdate);//收款摘要
$LeftOvers = $pdf->addTextWrap(400,$YPos+240,150,$FontSize,$DisplayTotal , 'right');//收款摘要
//////////////////////////////////////////////////
/*绘制线框 */
$pdf->line(50, $YPos+274,560, $YPos+274);//横一
$pdf->line(50, $YPos+255,560, $YPos+255);//横二
$pdf->line(50, $YPos+235,560, $YPos+235);//3
$pdf->line(50, $YPos+165,560, $YPos+165);//4
$pdf->line(50, $YPos+145,560, $YPos+145);//5
$pdf->line(50, $YPos+274,50, $YPos+145);//竖一
$pdf->line(375, $YPos+274,375, $YPos+165);//2
$pdf->line(470, $YPos+274,470, $YPos+165);//3
$pdf->line(560, $YPos+274,560, $YPos+145);//竖尾
////////////////////////////////////////////////

//$YPos=$YPos-($line_height*8);

$LeftOvers = $pdf->addTextWrap(310,$YPos+130,500,$FontSize,_('收款单位').' :     '.$_SESSION['CompanyRecord']['coyname'].''.'（盖章）');
list($userid,$realname,$stepdate)=getTransBy(12,$_GET['BatchNumber']);
$pdf->addText(50, $YPos+140,$FontSize, _('收款人') . ': ' . $realname);

//$YPos=$YPos-($line_height*10);

//$LeftOvers = $pdf->addTextWrap(50,$YPos,300,$FontSize,'______________________________________________________________________________'.''.'22');

$pdf->OutputD('Receipt-'.$_GET['ReceiptNumber'].'.pdf', 'I');
?>
