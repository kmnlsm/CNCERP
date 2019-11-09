<?php
/* $Id: PDFStockTransferHeader.inc 5680 2012-09-25 08:21:52Z daintree $*/
/*PDF page header for price list report */
if ($PageNumber>1){
	$pdf->newPage();
}

$FontSize=10;
$YPos= $Page_Height-$Top_Margin-95;
$XPos=0;
$pdf->addJpegFromFile($_SESSION['LogoFile'],$XPos+50,$YPos-10,0,30);

$FontSize=15;
$LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos,550,$FontSize,$_SESSION['CompanyRecord']['coyname'].'产成品入库单','center');


$YPos -=15;
$FontSize=12;
$LeftOvers2 = $pdf->addTextWrap($Left_Margin,$YPos,550,$FontSize,_('Printed'). ': ' . Date($_SESSION['DefaultDateFormat']),'center');
$WOS=str_pad($_POST['WO'], 9, '0', STR_PAD_LEFT);
$LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos,520,$FontSize,_('工作单No').'. ' .$WOS,'right');
$YPos -=5;
//$FontSize=12;

//$LeftOvers2 = $pdf->addTextWrap($Left_Margin,$YPos,550,$FontSize,_('由').': ' . $TransferRow['shiplocname'].' '.'调往'.' :'.$TransferRow['reclocname']);
//$LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos,520,$FontSize, _('Printed'). ': ' . Date($_SESSION['DefaultDateFormat']) . '   ' . _('Page'). ' ' . $PageNumber,'right');
//打印日期

/*Draw a rectangle to put the headings in     */
$YPos +=15;
$BoxHeight =$Page_Height-163;
$FontSize=12;
$YPos-=15;
$pdf->line($Left_Margin, $YPos,$Page_Width-$Right_Margin, $YPos);
$pdf->line($Left_Margin-2, $YPos+2,$Page_Width-$Right_Margin+2, $YPos+2);
$pdf->line($Left_Margin, $YPos,$Left_Margin, $YPos-$BoxHeight);
$pdf->line($Left_Margin-2, $YPos+2,$Left_Margin-2, $YPos-$BoxHeight-2);
$pdf->line($Left_Margin, $YPos-$BoxHeight,$Page_Width-$Right_Margin, $YPos-$BoxHeight);
$pdf->line($Left_Margin-2, $YPos-$BoxHeight-2,$Page_Width-$Right_Margin+2, $YPos-$BoxHeight-2);
$pdf->line($Page_Width-$Right_Margin, $YPos,$Page_Width-$Right_Margin, $YPos-$BoxHeight);
$pdf->line($Page_Width-$Right_Margin+2, $YPos+2,$Page_Width-$Right_Margin+2, $YPos-$BoxHeight-2);
$YPos -=10;

$YPos +=5;

$Xpos = $Left_Margin+1;

$LeftOvers = $pdf->addTextWrap($Xpos-3,$YPos-10,105-$Left_Margin,$FontSize,_('Item Code'), 'center');
$LeftOvers = $pdf->addTextWrap(140,$YPos-10,100-$Left_Margin,$FontSize,_('名称'), 'center');
$LeftOvers = $pdf->addTextWrap($Left_Margin+190,$YPos-10,100-$Left_Margin,$FontSize,_('数量'), 'center');
$LeftOvers = $pdf->addTextWrap($Left_Margin+240,$YPos-10,80-$Left_Margin,$FontSize,_('单位'), 'center');
$LeftOvers = $pdf->addTextWrap($Left_Margin+270,$YPos-10,150-$Left_Margin,$FontSize,_('批次号'), 'center');
$LeftOvers = $pdf->addTextWrap($Left_Margin+373,$YPos-10,160-$Left_Margin,$FontSize,_('接收仓库'), 'center');
$LeftOvers = $pdf->addTextWrap($Left_Margin+370,$YPos-10,200-$Left_Margin,$FontSize,_('化检员'), 'right');

$pdf->line($Left_Margin, $YPos-16,$Page_Width-$Right_Margin, $YPos-16);//表头脚线
$pdf->line($Left_Margin, $YPos-14,$Page_Width-$Right_Margin, $YPos-14);
$pdf->line($Left_Margin, $YPos-32,$Page_Width-$Right_Margin, $YPos-32);
$pdf->line($Left_Margin, $YPos-47,$Page_Width-$Right_Margin, $YPos-47);
$pdf->line($Left_Margin, $YPos-62,$Page_Width-$Right_Margin, $YPos-62);
$pdf->line($Left_Margin, $YPos-77,$Page_Width-$Right_Margin, $YPos-77);
$pdf->line($Left_Margin, $YPos-92,$Page_Width-$Right_Margin, $YPos-92);
$pdf->line($Left_Margin, $YPos-107,$Page_Width-$Right_Margin, $YPos-107);
$pdf->line($Left_Margin, $YPos-122,$Page_Width-$Right_Margin, $YPos-122);
$pdf->line($Left_Margin, $YPos-137,$Page_Width-$Right_Margin, $YPos-137);
$pdf->line(105, $YPos+5,105, $YPos-152);//竖线开始
$pdf->line(285-$Left_Margin, $YPos+5,285-$Left_Margin, $YPos-152);
$pdf->line(340-$Left_Margin, $YPos+5,340-$Left_Margin, $YPos-152);
$pdf->line(370-$Left_Margin, $YPos+5,370-$Left_Margin, $YPos-152);
$pdf->line(475-$Left_Margin, $YPos+5,475-$Left_Margin, $YPos-152);
$pdf->line(580-$Left_Margin, $YPos+5,580-$Left_Margin, $YPos-152);
//////////////////////////////////
//分联
$FontSize=8;
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos,30,$FontSize, _('白 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-8,30,$FontSize, _('联 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-16,30,$FontSize, _('存'));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-24,30,$FontSize, _('根 '));//

$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-40,30,$FontSize, _('红 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-48,30,$FontSize, _('联 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-56,30,$FontSize, _('记 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-64,30,$FontSize, _('账 '));//

$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-80,30,$FontSize, _('黄 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-88,30,$FontSize, _('联 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-96,30,$FontSize, _('仓 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-104,30,$FontSize, _('库 '));//

$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-120,30,$FontSize, _('绿 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-128,30,$FontSize, _('联 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-136,30,$FontSize, _('统 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin,$YPos-144,30,$FontSize, _('计 '));//
$FontSize=12;
////////////////////////////////////////////////////
$FontSize=10;
$YPos -= 30;
/////////////////////



//list($userid,$realname,$stepdate)=getTransBy(26,$myrow['transno']);
$LeftOvers = $pdf->addTextWrap($Left_Margin,$Bottom_Margin+8,120,$FontSize,_('生产交货') . ': ' , 'lift');
//list($userid,$realname,$stepdate)=getTransBy(26,$myrow['transno'],1);
$LeftOvers = $pdf->addTextWrap(300-$Left_Margin,$Bottom_Margin+8,120,$FontSize,_('仓库收货') . ': ', 'lift');
$LeftOvers = $pdf->addTextWrap(500-$Left_Margin,$Bottom_Margin+8,120,$FontSize,_('制单打印') . ': '.$_SESSION['UsersRealName'], 'lift');
/////////////////////////
//$FontSize=8;
//$YPos -= (1.5 * $line_height);

//$PageNumber++;

?>