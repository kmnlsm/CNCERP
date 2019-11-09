<?php /* $Id$*/

/* $Revision: 1.5 $2012.2CQZ */

if (isset($_POST['JournalNo'])) {
	$JournalNo=$_POST['JournalNo'];
	$TypeID=$_POST['TypeID'];
} else if (isset($_GET['JournalNo'])) {
	$JournalNo=$_GET['JournalNo'];
	$TypeID=$_GET['TypeID'];
} else {
	$JournalNo='';
	$TypeID='';
}

if ($JournalNo=='Preview') {
	$FormDesign = simplexml_load_file(sys_get_temp_dir().'/Bills.xml');
} else {
	$FormDesign = simplexml_load_file($PathPrefix.'companies/'.$_SESSION['DatabaseName'].'/FormDesigns/Bills.xml');
}

// Set the paper size/orintation
$PaperSize = $FormDesign->PaperSize;
$PageNumber=1;
$line_height=14;//行距
include('includes/PDFStarter.php');
$pdf->addInfo('Title', _('生产投料单') );
$pdf->addInfo('Author','ERP ' . 'CQZ二次修改');
$pdf->addInfo('Subject',_('单据——中国式--登录ERP打印或下载此单据的用户：').$_SESSION['UsersRealName']);
$pdf->SetProtection(array('modify','copy','annot-forms'), '');

//if ($JournalNo=='Preview') {
//	$LineCount = 2; // UldisN
//} else {

	$result=$RequirmentsResult;
	$LineCount = DB_num_rows($result); // UldisN
	$myrow=DB_fetch_array($result);
	$JournalDate=$myrow['trandate'];
	DB_data_seek($result, 0);
	$Typemame=$myrow['typename'];
	include('includes/PDFBillsHeader.inc');
//}
$counter=1;
$YPos=$FormDesign->Data->y;
while ($counter<=$LineCount) {
	if ($JournalNo=='Preview') {
		$AccountCode=str_pad('',10,'x');
		$Date='1/1/1900';
		$Description=str_pad('',30,'x');
		$Narrative=str_pad('',30,'x');
		$Amount='XXXX.XX';
		$Tag=str_pad('',25,'x');
		$JobRef=str_pad('',25,'x');
	} else {
		$myrow=DB_fetch_array($result);
		$Narrative = $myrow['description'];//材料名称
		$AccountCode = locale_number_format($myrow['quantityrequired'],2);//建议数量
		$Description = $myrow['units'];//$myrow['accountname'];单位


	}

	
	$pdf->SetTextColor(0,0,0);
	if((mb_strlen($Narrative,'GB2312')+ substr_count($Narrative," "))>40){
	$LeftOvers = $pdf->addTextWrap($FormDesign->Data->Column1->x+3,$Page_Height-$YPos-5,$FormDesign->Data->Column1->Length,$FormDesign->Data->Column1->FontSize, $Narrative);
	$LeftOvers = $pdf->addTextWrap($FormDesign->Data->Column2->x+3,$Page_Height-$YPos+3,$FormDesign->Data->Column2->Length,$FormDesign->Data->Column2->FontSize, $AccountCode, 'right');
	$LeftOvers = $pdf->addTextWrap($FormDesign->Data->Column3->x+3,$Page_Height-$YPos+3,$FormDesign->Data->Column3->Length,$FormDesign->Data->Column3->FontSize, $Description, 'center');
	}else{
	$LeftOvers = $pdf->addTextWrap($FormDesign->Data->Column1->x,$Page_Height-$YPos,$FormDesign->Data->Column1->Length,$FormDesign->Data->Column1->FontSize, $Narrative);
	$LeftOvers = $pdf->addTextWrap($FormDesign->Data->Column2->x,$Page_Height-$YPos,$FormDesign->Data->Column2->Length,$FormDesign->Data->Column2->FontSize, $AccountCode, 'right');
	$LeftOvers = $pdf->addTextWrap($FormDesign->Data->Column3->x,$Page_Height-$YPos,$FormDesign->Data->Column3->Length,$FormDesign->Data->Column3->FontSize, $Description, 'center');
	}
//	$LeftOvers = $pdf->addTextWrap($FormDesign->Data->Column4->x+3,$Page_Height-$YPos,$FormDesign->Data->Column4->Length,$FormDesign->Data->Column4->FontSize,$DebitAmount , 'right');
			
//	$LeftOvers = $pdf->addTextWrap($FormDesign->Data->Column5->x+3,$Page_Height-$YPos,$FormDesign->Data->Column5->Length,$FormDesign->Data->Column5->FontSize, $CreditAmount, 'right');


	$YPos += $line_height;
	$counter++;	
	//$DebitTotal1=locale_number_format($DebitTotal,$_SESSION['CompanyRecord']['decimalplaces'],  'right');
	//$CreditTotal1=locale_number_format(-$CreditTotal,$_SESSION['CompanyRecord']['decimalplaces'],  'right');
	


	if ($YPos >= $FormDesign->LineAboveFooter->starty){
		/* We reached the end of the page so finsih off the page and start a newy */
		$PageNumber++;

		$YPos=$FormDesign->Data->y;
		include ('includes/PDFBillsHeader.inc');
	}  

} 


//$pdf->Line($XPos=540, $Page_Height-$YPos+15, $FormDesign->Column33->endx,$Page_Height - $FormDesign->Column33->endy);

		//end if need a new page headed up




//$pdf->addJpegFromFile('includes/hjje.jpg',$FormDesign->Headings->Column7->x+3+20,$Page_Height - 282,110,28);

$LeftOvers = $pdf->addTextWrap($FormDesign->Headings->Column8->x+3,$Page_Height - $FormDesign->Headings->Column8->y, $FormDesign->Headings->Column8->Length,$FormDesign->Headings->Column8->FontSize, $DebitTotal1, 'right');
$LeftOvers = $pdf->addTextWrap($FormDesign->Headings->Column9->x+3,$Page_Height - $FormDesign->Headings->Column9->y, $FormDesign->Headings->Column9->Length,$FormDesign->Headings->Column9->FontSize, $CreditTotal1, 'right');


/*if ($LineCount == 0) {   //UldisN
	$Title = _('GRN Error');
	include('includes/header.php');
	prnMsg(_('There were no GRN to print'),'warn');
	echo '<br /><a href="'.$RootPath.'/index.php">'. _('Back to the menu').'</a>';
	include('includes/footer.php');
	exit;
} else {*/
    $pdf->OutputD($_SESSION['DatabaseName'] . '_GRN_' . date('Y-m-d').'.pdf');//UldisN
    $pdf->__destruct(); //UldisN
//}
?>

