<?php /* $Id$*/

/* $Revision: 1.5 $2012.2 ///  V2-2019-10-21 */

include('includes/session.php');
include('includes/Transby.php');
if (isset($_POST['JournalNo'])) {
	$JournalNo=$_POST['JournalNo'];
	$TypeID=$_POST['Type'];
} else if (isset($_GET['JournalNo'])) {
	$JournalNo=$_GET['JournalNo'];
	$TypeID=$_GET['Type'];
} else {
	$JournalNo='';
	$TypeID='';
}
//if(empty($TypeID))$TypeID=0;
if(empty($TypeID));
if ($JournalNo=='Preview') {
	$FormDesign = simplexml_load_file(sys_get_temp_dir().'/JournalCN.xml');
} else {
	$FormDesign = simplexml_load_file($PathPrefix.'companies/'.$_SESSION['DatabaseName'].'/FormDesigns/JournalCN.xml');
}

// Set the paper size/orintation
$PaperSize = $FormDesign->PaperSize;
$PageNumber=1;
$line_height=$FormDesign->LineHeight;
include('includes/PDFStarter.php');
$pdf->addInfo('Title', _('CNCERP中国(甲式10)会计凭证') );
$pdf->addInfo('Author','储清周 ' . '2019V2');
$pdf->addInfo('Subject',_('会计凭证——中式会计凭证--登录CNCERP打印或下载此凭证的用户：').$_SESSION['UsersRealName']);
$pdf->SetProtection(array('modify','copy','annot-forms'), '');

if ($JournalNo=='Preview') {
	$LineCount = 2; // UldisN
} else {
	$sql="SELECT gltrans.type,
	            gltrans.typeno,
				gltrans.trandate,
				gltrans.account,
				systypes.typename,
				chartmaster.accountname,
				gltrans.narrative,
				gltrans.amount,
				gltrans.tag,
				tags.tagdescription,
				gltrans.jobref
			FROM gltrans
			INNER JOIN chartmaster
				ON gltrans.account=chartmaster.accountcode
			INNER JOIN systypes
				ON gltrans.type=systypes.typeid 
			LEFT JOIN tags
				ON gltrans.tag=tags.tagref
			WHERE gltrans.type='".$TypeID."'
				AND gltrans.typeno='" . $JournalNo . "'
				ORDER BY gltrans.amount DESC";
	$result=DB_query($sql, $db);
	$LineCount = DB_num_rows($result); // UldisN
	$myrow=DB_fetch_array($result);
	$JournalDate=$myrow['trandate'];
	DB_data_seek($result, 0);
	$Typemame=$myrow['typename'];
	include('includes/PDFGLJournalHeaderCN.inc');
}
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
		if ($myrow['tag']==0) {
			$myrow['tagdescription']='None';
		}
		$AccountCode = $myrow['account'];
		$Description = $myrow['accountname'];
		$Date = $myrow['trandate'];
		$Narrative = $myrow['narrative'];
		$Amount = $myrow['amount'];
		$Tag = $myrow['tag'].' - '.$myrow['tagdescription'];
		$JobRef = $myrow['jobref'];
	}

	if ( $myrow['amount'] > 0) {
			$DebitAmount = GetCNamount($myrow['amount']);//格式化为中文书写方式
			$DebitTotal += $myrow['amount'];
			$CreditAmount = ' ';
	} else {
			$CreditAmount = GetCNamount(-$myrow['amount']);//格式化为中文书写方式
			$CreditTotal += $myrow['amount'];
			$DebitAmount = ' ';
	}
	$pdf->SetTextColor(0,0,0);//这里处理摘要太长的为MultiCell可以换行
	$pdf->SetFont('', '', 10);
	$LeftOvers = $pdf->MultiCell(180,16,$Narrative, $border=0, $align='L', $fill=0, $ln=1, $FormDesign->Data->Column1->x, $YPos-18, $reseth=true, $stretch=1, $ishtml=false, $autopadding=true, 30, $maxh='M');
	$LeftOvers = $pdf->addTextWrap($FormDesign->Data->Column2->x+3,$Page_Height-$YPos+3,$FormDesign->Data->Column2->Length,$FormDesign->Data->Column2->FontSize, $AccountCode);
	$LeftOvers = $pdf->addTextWrap($FormDesign->Data->Column3->x+3,$Page_Height-$YPos+3,$FormDesign->Data->Column3->Length,$FormDesign->Data->Column3->FontSize, $Description);

	$pdf->SetFont('helvetica', 'I', 10);
	$LeftOvers = $pdf->addTextWrap($FormDesign->Data->Column4->x+3,$Page_Height-$YPos,$FormDesign->Data->Column4->Length,$FormDesign->Data->Column4->FontSize,$DebitAmount , 'right');
			
	$LeftOvers = $pdf->addTextWrap($FormDesign->Data->Column5->x+3,$Page_Height-$YPos,$FormDesign->Data->Column5->Length,$FormDesign->Data->Column5->FontSize, $CreditAmount, 'right');
	

	$YPos += $line_height;
	$counter++;	

    $DebitTotal1= GetCNamount($DebitTotal);//格式化为中文书写方式
	$CreditTotal1= GetCNamount(-$CreditTotal);//格式化为中文书写方式
	
	$pdf->SetFont('javiergb', '', 10);

	if ($YPos >= $FormDesign->LineAboveFooter->starty AND ($counter<=$LineCount)){
		/* We reached the end of the page so finsih off the page and start a newy */
		$Totalfont='过  次  页';
		//$PageNO=_('（第').$pdf->getAliasNumPage().'页/共'.$pdf->getAliasNbPages().'页）';
		$pdf->SetTextColor(0,0,255);
		$pdf->addText($FormDesign->Headings->Column7->x+3,$Page_Height-$FormDesign->Headings->Column7->y+12,$FormDesign->Headings->Column7->FontSize, _($Totalfont));
		$PageNumber++;
		$YPos=$FormDesign->Data->y;
		include ('includes/PDFGLJournalHeaderCN.inc');
	} else{
		//$PageNO=_('（第').$pdf->getAliasNumPage().'页/共'.$pdf->getAliasNbPages().'页）';
		$Totalfont='合 计 金 额';		
		}
} 
$pdf->setlineStyle(array('width'=>0.8));
$pdf->SetLineStyle(array('color'=>array(0,0,0)));
$pdf->Line($XPos=540, $Page_Height-$YPos+18, $FormDesign->Column33->endx,$Page_Height - $FormDesign->Column33->endy);

//end if need a new page headed up

$pdf->SetTextColor(0,0,255);

$pdf->addText($FormDesign->Headings->Column7->x+3,$Page_Height-$FormDesign->Headings->Column7->y+12,$FormDesign->Headings->Column7->FontSize, _($Totalfont));
//$FormDesign->Headings->Column7->name
$pdf->SetTextColor(0,0,0);
//$pdf->addText($FormDesign->Headings->Column7->x-100,$Page_Height-$FormDesign->Headings->Column7->y+12,12, _($PageNO));
$pdf->SetFont('helvetica', 'I', 10);
$LeftOvers = $pdf->addTextWrap($FormDesign->Headings->Column8->x+3,$Page_Height - $FormDesign->Headings->Column8->y, $FormDesign->Headings->Column8->Length,$FormDesign->Headings->Column8->FontSize, $DebitTotal1, 'right');
$LeftOvers = $pdf->addTextWrap($FormDesign->Headings->Column9->x+3,$Page_Height - $FormDesign->Headings->Column9->y, $FormDesign->Headings->Column9->Length,$FormDesign->Headings->Column9->FontSize, $CreditTotal1, 'right');
$pdf->SetFont('javiergb', '', 10);

if ($LineCount == 0) {   //UldisN
	$title = _('GRN Error');
	include('includes/header.inc');
	prnMsg(_('There were no GRN to print'),'warn');
	echo '<br /><a href="'.$rootpath.'/index.php">'. _('Back to the menu').'</a>';
	include('includes/footer.inc');
	exit;
} else {
    $pdf->OutputD($_SESSION['DatabaseName'] . '_CNCERPGRN_' . date('Y-m-d').'.pdf');//UldisN
    $pdf->__destruct(); //UldisN
}
?>

