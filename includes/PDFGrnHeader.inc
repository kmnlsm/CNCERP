<?php
/* $Id: PDFGrnHeader.inc 4482 2011-02-06 04:29:33Z daintree $*/
/*PDF page header for price list report */
if ($PageNumber>1){
	$pdf->newPage();
}

$pdf->addJpegFromFile($_SESSION['LogoFile'] ,$FormDesign->logo->x,$Page_Height-$FormDesign->logo->y,$FormDesign->logo->width,$FormDesign->logo->height);

$LeftOvers = $pdf->addText($FormDesign->SupplierName->x,$Page_Height-$FormDesign->SupplierName->y,$FormDesign->SupplierName->FontSize,_('供方单位'.':').$SuppRow['suppname']);
$LeftOvers = $pdf->addText($FormDesign->SupplierAddress1->x,$Page_Height-$FormDesign->SupplierAddress1->y,$FormDesign->SupplierAddress1->FontSize,_('供方地址'.':').$SuppRow['address1'].$SuppRow['address2'].$SuppRow['address3'].$SuppRow['address4'].$SuppRow['address5'].$SuppRow['address6']);
//页面上的各联标注
$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y,$FormDesign->Sno1->FontSize,_('白'));
$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-8,$FormDesign->Sno1->FontSize,_('联'));
$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-16,$FormDesign->Sno1->FontSize,_('存'));
$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-24,$FormDesign->Sno1->FontSize,_('根'));

$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-35,$FormDesign->Sno1->FontSize,_('红'));
$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-43,$FormDesign->Sno1->FontSize,_('联'));
$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-51,$FormDesign->Sno1->FontSize,_('记'));
$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-59,$FormDesign->Sno1->FontSize,_('账'))
;
$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-70,$FormDesign->Sno1->FontSize,_('黄'));
$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-78,$FormDesign->Sno1->FontSize,_('联'));
$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-86,$FormDesign->Sno1->FontSize,_('仓'));
$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-94,$FormDesign->Sno1->FontSize,_('库'));

$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-105,$FormDesign->Sno1->FontSize,_('绿'));
$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-113,$FormDesign->Sno1->FontSize,_('联'));
$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-121,$FormDesign->Sno1->FontSize,_('统'));
$LeftOvers = $pdf->addText($FormDesign->Sno1->x,$Page_Height-$FormDesign->Sno1->y-129,$FormDesign->Sno1->FontSize,_('计'));

//$LeftOvers = $pdf->addText($FormDesign->SupplierAddress3->x,$Page_Height-$FormDesign->SupplierAddress3->y,$FormDesign->SupplierAddress3->FontSize,$SuppRow['address3']);
//$LeftOvers = $pdf->addText($FormDesign->SupplierAddress4->x,$Page_Height-$FormDesign->SupplierAddress4->y,$FormDesign->SupplierAddress4->FontSize,$SuppRow['address4']);
//$LeftOvers = $pdf->addText($FormDesign->SupplierAddress5->x,$Page_Height-$FormDesign->SupplierAddress5->y,$FormDesign->SupplierAddress5->FontSize,$SuppRow['address5']);
//$LeftOvers = $pdf->addText($FormDesign->SupplierAddress6->x,$Page_Height-$FormDesign->SupplierAddress6->y,$FormDesign->SupplierAddress6->FontSize,$SuppRow['address6']);


$LeftOvers = $pdf->addText($FormDesign->CompanyName->x,$Page_Height-$FormDesign->CompanyName->y,$FormDesign->CompanyName->FontSize,$_SESSION['CompanyRecord']['coyname']);
$LeftOvers = $pdf->addText($FormDesign->GRNNumber->x,$Page_Height-$FormDesign->GRNNumber->y,$FormDesign->GRNNumber->FontSize, _('GRN number ').' ' . $GRNNo );
$LeftOvers = $pdf->addText($FormDesign->GRNNumber->x-200,$Page_Height-$FormDesign->GRNNumber->y+10,$FormDesign->GRNNumber->FontSize+5, _('采购收货入库单'));
$LeftOvers = $pdf->addText($FormDesign->OrderNumber->x,$Page_Height-$FormDesign->OrderNumber->y,$FormDesign->OrderNumber->FontSize, _('PO number ').' ' . $_GET['PONo'] );
$LeftOvers = $pdf->addText($FormDesign->PrintDate->x,$Page_Height-$FormDesign->PrintDate->y,$FormDesign->PrintDate->FontSize, _('Printed').': ' . Date($_SESSION['DefaultDateFormat']));

/*Draw a rectangle to put the headings in     */
$pdf->Rectangle($FormDesign->HeaderRectangle->x, $Page_Height - $FormDesign->HeaderRectangle->y, $FormDesign->HeaderRectangle->width,$FormDesign->HeaderRectangle->height);

/*set up the headings */
$LeftOvers = $pdf->addText($FormDesign->Headings->Column1->x,$Page_Height - $FormDesign->Headings->Column1->y, $FormDesign->Headings->Column1->FontSize,  _('Item Number'));
$LeftOvers = $pdf->addText($FormDesign->Headings->Column2->x,$Page_Height - $FormDesign->Headings->Column2->y, $FormDesign->Headings->Column2->FontSize,  _('Description'));
$LeftOvers = $pdf->addText($FormDesign->Headings->Column3->x,$Page_Height - $FormDesign->Headings->Column3->y, $FormDesign->Headings->Column3->FontSize,  _('Date Recd'));
$LeftOvers = $pdf->addText($FormDesign->Headings->Column4->x,$Page_Height - $FormDesign->Headings->Column4->y, $FormDesign->Headings->Column4->FontSize,  _('供方单位数量'));
$LeftOvers = $pdf->addText($FormDesign->Headings->Column5->x,$Page_Height - $FormDesign->Headings->Column5->y, $FormDesign->Headings->Column5->FontSize,  _('我方单位数量'));

/*Draw a rectangle to put the data in     */
$pdf->Rectangle($FormDesign->DataRectangle->x, $Page_Height - $FormDesign->DataRectangle->y, $FormDesign->DataRectangle->width,$FormDesign->DataRectangle->height);

$pdf->Line($FormDesign->LineAboveFooter->startx, $Page_Height - $FormDesign->LineAboveFooter->starty, $FormDesign->LineAboveFooter->endx,$Page_Height - $FormDesign->LineAboveFooter->endy);

$pdf->Line($FormDesign->Column1->startx, $Page_Height - $FormDesign->Column1->starty, $FormDesign->Column1->endx,$Page_Height - $FormDesign->Column1->endy);
$pdf->Line($FormDesign->Column3->startx, $Page_Height - $FormDesign->Column3->starty, $FormDesign->Column3->endx,$Page_Height - $FormDesign->Column3->endy);
$pdf->Line($FormDesign->Column4->startx, $Page_Height - $FormDesign->Column4->starty, $FormDesign->Column4->endx,$Page_Height - $FormDesign->Column4->endy);
$pdf->Line($FormDesign->Column5->startx, $Page_Height - $FormDesign->Column5->starty, $FormDesign->Column5->endx,$Page_Height - $FormDesign->Column5->endy);

$PageNumber++;
?>