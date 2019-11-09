<?php
/* $Id$*/
/*PDF page header for price list report */
if ($PageNumber>1){
	$pdf->newPage();
}
//////////////////////////////////////////
$WOResult2 = DB_query("SELECT woitems.wo,
                              woitems.stockid,
			      woitems.qtyreqd,
			      stockmaster.stockid,
			      stockmaster.units,
			      stockmaster.description,
			      workorders.requiredby,
			      workorders.startdate
	FROM woitems INNER JOIN stockmaster
	ON woitems.stockid=stockmaster.stockid
	INNER JOIN workorders
	ON workorders.wo=woitems.wo
	WHERE woitems.stockid='" . $_POST['StockID'] . "'
	AND woitems.wo='" . $_POST['WO'] . "'",
	$db,
	$ErrMsg);

	if (DB_num_rows($WOResult)==0){
		prnMsg(_('The selected work order item cannot be retrieved from the database'),'info');
		include('includes/footer.php');
		exit;
	}
	$WORowNO = DB_fetch_array($WOResult2);
	/////////////////////////////////////////////////////////////////////////////////
$pdf->addJpegFromFile($_SESSION['LogoFile'] ,$FormDesign->logo->x+3,$Page_Height-$FormDesign->logo->y,$FormDesign->logo->width,$FormDesign->logo->height);
//$LeftOvers = $pdf->addText($FormDesign->SignedFor1->x+3,$Page_Height-$FormDesign->SignedFor1->y,$FormDesign->SignedFor1->FontSize,$_SESSION['UsersRealName'],'right' );

$LeftOvers = $pdf->addText($FormDesign->CompanyName->x+3,$Page_Height-$FormDesign->CompanyName->y,$FormDesign->CompanyName->FontSize,$_SESSION['CompanyRecord']['coyname']);
//$LeftOvers = $pdf->addTextWrap($FormDesign->GRNNumber2->x+3,$Page_Height-$FormDesign->GRNNumber2->y,115,$FormDesign->GRNNumber2->FontSize, _('开始日期：').$WORowNO['startdate'] . '要求日期'.$WORowNO['requiredby'],'right' );
$LeftOvers = $pdf->addTextWrap($FormDesign->GRNNumber2->x+3,$Page_Height-$FormDesign->GRNNumber2->y,115,$FormDesign->GRNNumber2->FontSize, _('要求日期:').$WORowNO['requiredby'],'right' );
$LeftOvers = $pdf->addTextWrap($FormDesign->GRNNumber->x+3,$Page_Height-$FormDesign->GRNNumber->y,115,$FormDesign->GRNNumber->FontSize, _('工作单No.').$_POST['WO'],'right' );
$LeftOvers = $pdf->addText($FormDesign->OrderNumber->x+3,$Page_Height-$FormDesign->OrderNumber->y,$FormDesign->OrderNumber->FontSize, _('生产材料投放单'));
$LeftOvers = $pdf->addTextWrap($FormDesign->PrintDate->x+3,$Page_Height-$FormDesign->PrintDate->y,115,$FormDesign->PrintDate->FontSize, _('Printed').': ' . Date($_SESSION['DefaultDateFormat']), 'right');//移后备. '   '. _('Page'). ' ' . $PageNumber

/*Draw a rectangle to put the headings in     */
$pdf->Rectangle($FormDesign->HeaderRectangle->x+3, $Page_Height - $FormDesign->HeaderRectangle->y, $FormDesign->HeaderRectangle->width,$FormDesign->HeaderRectangle->height);

/*set up the headings */
$LeftOvers = $pdf->addText($FormDesign->Headings->Column1->x+3,$Page_Height - $FormDesign->Headings->Column1->y, $FormDesign->Headings->Column1->FontSize,  _('原材料名称'));
$LeftOvers = $pdf->addText($FormDesign->Headings->Column2->x+3,$Page_Height - $FormDesign->Headings->Column2->y, $FormDesign->Headings->Column2->FontSize,  _('ERP系统建议数量'));
$LeftOvers = $pdf->addText($FormDesign->Headings->Column3->x+3,$Page_Height - $FormDesign->Headings->Column3->y, $FormDesign->Headings->Column3->FontSize,  _('实际投入数量(填写)'));

$pdf->Line($FormDesign->Column1->startx, $Page_Height - $FormDesign->Column1->starty, $FormDesign->Column1->endx,$Page_Height - $FormDesign->Column1->endy);
$pdf->Line($FormDesign->Column2->startx, $Page_Height - $FormDesign->Column2->starty, $FormDesign->Column2->endx,$Page_Height - $FormDesign->Column2->endy);
$pdf->Line($FormDesign->Column3->startx, $Page_Height - $FormDesign->Column3->starty, $FormDesign->Column3->endx,$Page_Height - $FormDesign->Column3->endy);

$pdf->Line($FormDesign->Column4->startx, $Page_Height - $FormDesign->Column4->starty, $FormDesign->Column4->endx,$Page_Height - $FormDesign->Column4->endy);
$pdf->Line($FormDesign->Column5->startx, $Page_Height - $FormDesign->Column5->starty, $FormDesign->Column5->endx,$Page_Height - $FormDesign->Column5->endy);
$pdf->Line($FormDesign->Column6->startx, $Page_Height - $FormDesign->Column6->starty, $FormDesign->Column6->endx,$Page_Height - $FormDesign->Column6->endy);
$pdf->Line($FormDesign->Column7->startx, $Page_Height - $FormDesign->Column7->starty, $FormDesign->Column7->endx,$Page_Height - $FormDesign->Column7->endy);
$pdf->Line($FormDesign->Column8->startx, $Page_Height - $FormDesign->Column8->starty, $FormDesign->Column8->endx,$Page_Height - $FormDesign->Column8->endy);
$pdf->Line($FormDesign->Column9->startx, $Page_Height - $FormDesign->Column9->starty, $FormDesign->Column9->endx,$Page_Height - $FormDesign->Column9->endy);
$pdf->Line($FormDesign->Column10->startx, $Page_Height - $FormDesign->Column10->starty, $FormDesign->Column10->endx,$Page_Height - $FormDesign->Column10->endy);
$pdf->Line($FormDesign->Column11->startx, $Page_Height - $FormDesign->Column11->starty, $FormDesign->Column11->endx,$Page_Height - $FormDesign->Column11->endy);
$pdf->Line($FormDesign->Column12->startx, $Page_Height - $FormDesign->Column12->starty, $FormDesign->Column12->endx,$Page_Height - $FormDesign->Column12->endy);
include_once('includes/Transby.php');
list($userid,$realname,$stepdate)=getTransBy(40,$_POST['WO']);//读取
 $pdf->addText($FormDesign->ReceiptDate->x+3,$Page_Height-$FormDesign->ReceiptDate->y,$FormDesign->ReceiptDate->FontSize, _('生产内容: ').$WORowNO['description'].' X '.$WORowNO['qtyreqd'].$WORowNO['units']);//
	$LeftOvers = $pdf->addText($FormDesign->SignedFor->x+3,$Page_Height-$FormDesign->SignedFor->y,$FormDesign->SignedFor->FontSize, _('工作指令：').$realname .'                               '._('材料审核：  ').'                                              '._('投料人：').'   '.'                                           '._('制单： ').$_SESSION['UsersRealName']);

$PageNumber++;
?>
