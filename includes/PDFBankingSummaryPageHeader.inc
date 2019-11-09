<?php
/* $Id: PDFBankingSummaryPageHeader.inc 3242 2009-12-16 22:06:53Z tim_schofield $*/

$PageNumber++;
if ($PageNumber>1){
	$pdf->newPage();
}

$YPos = $Page_Height - $Top_Margin - 100;

$pdf->addJpegFromFile($_SESSION['LogoFile'],$Left_Margin+20,$YPos-3,0,30);//标志位置大小

$FontSize=15;

$XPos =190;

$YPos -= -20;
$pdf->addText($XPos-50, $YPos,$FontSize, $_SESSION['CompanyRecord']['coyname']._('Banking Summary'));//单据头字
//$pdf->SetLineStyle(array('width' => 0.9, 'cap' => 'butt', 'join' => 'miter', 'dash' => 0, 'color' => array(0,0,0)));//线条色
//$pdf->line($XPos-60, $YPos-16,460, $YPos-16);//画一条横线
//$pdf->line($XPos-60, $YPos-19,460, $YPos-19);//画一条横线
$XPos =220;
$FontSize=12;
$pdf->addText($XPos+230, $YPos-30,$FontSize, _('记账日期') .': ' . ConvertSQLDate($myrow['transdate']));//存到银行日期
//$pdf->addText($XPos+100, $YPos-20,$FontSize, _('for Receipt Batch') . ' NO ' . $_POST['BatchNo'] . ' ' . _('of') . ' ' . $BankTransType);//收款单据编号#号属于XX收款方式
//$pdf->addText($XPos+200, $YPos-20,$FontSize, _('for Receipt Batch') . ' NO ' . $_POST['BatchNo']);//收款单据编号#号
$FontSize=12;
$LeftOvers = $pdf->addTextWrap($XPos+40,$YPos-30,300,$FontSize, _('收据号 ').'No'.'. ' . $_POST['BatchNo'], 'right');//单据号

//$LeftOvers = $pdf->addTextWrap($XPos+43,$YPos-30,300,$FontSize, _('O') , 'right');//单据号
//$LeftOvers = $pdf->addTextWrap($XPos+45,$YPos-30,300,$FontSize, _('_'), 'right');//单据号
$pdf->SetTextColor(255,0,0);
//$pdf->SetFillColor(255, 255, 200);//底色
$pdf->SetLineStyle(array('width' => 0.9, 'cap' => 'butt', 'join' => 'miter', 'dash' => 0, 'color' => array(255, 0,0)));//线条色
//MultiCell(宽, 高, 内容, 边框,文字对齐, 文字底色, 是否换行, x坐标, y坐标, 变高, 变宽, 是否支持html, 自动填充, 最大高度)
$LeftOvers = $pdf->MultiCell(55,0,$BankTransType,1,'C', 0, 1,360,170, true);//属于XX收款方式
$pdf->SetLineStyle(array('width' => 0.5, 'cap' => 'butt', 'join' => 'miter', 'dash' => 0, 'color' => array(0, 0, 0)));//线条色
$pdf->SetTextColor(0,0,0);
$YPos -= $line_height;
//$pdf->addText($XPos+200, $YPos-20,$FontSize, _('of') . ' ' . $BankTransType);//属于XX收款方式
////////////////////////////////////////////////////////////////////////
//分联
$FontSize=8;
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-30,$YPos-40,30,$FontSize, _('白 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-30,$YPos-50,30,$FontSize, _('联 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-30,$YPos-60,30,$FontSize, _('存'));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-30,$YPos-70,30,$FontSize, _('根 '));//

$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-30,$YPos-90,30,$FontSize, _('红 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-30,$YPos-100,30,$FontSize, _('联 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-30,$YPos-110,30,$FontSize, _('记 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-30,$YPos-120,30,$FontSize, _('账 '));//

$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-30,$YPos-140,30,$FontSize, _('黄 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-30,$YPos-150,30,$FontSize, _('联 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-30,$YPos-160,30,$FontSize, _('客 '));//
$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-30,$YPos-170,30,$FontSize, _('户 '));//
$FontSize=12;
////////////////////////////////////////////////////////////////////////
$XPos = $Page_Width-$Right_Margin-50;
$YPos -= -10;
//$pdf->addText($XPos, $YPos,$FontSize, _('Page') .': ' . $PageNumber);//页码

/*Now print out the company name and address */
//$XPos = $Left_Margin;
//$YPos -= $line_height;

//$pdf->addText($XPos, $YPos,$FontSize, $_SESSION['CompanyRecord']['coyname']);//公司名称
//$FontSize=10;
$YPos -=30;
$YPos -=$line_height;
$XPos = $Left_Margin+20;

/*draw a square grid for entering line items */
$pdf->line($XPos, $YPos,$Page_Width-$Right_Margin-30, $YPos);//上边
$pdf->line($Page_Width-$Right_Margin-30, $YPos,$Page_Width-$Right_Margin-30, $Bottom_Margin+30);//右边
$pdf->line($Page_Width-$Right_Margin-120, $YPos,$Page_Width-$Right_Margin-120, $Bottom_Margin+50);//中间
$pdf->line($Page_Width-$Right_Margin-30, $Bottom_Margin+30,$XPos, $Bottom_Margin+30);//下边
$pdf->line($XPos, $Bottom_Margin+30,$XPos, $YPos);//左边
/*draw a line */
$pdf->line($XPos, $YPos-$line_height-6,$Page_Width-$Right_Margin-30, $YPos-$line_height-6);//表头下之线

/*Set up headings */
$FontSize=12;
$YPos -= $line_height+3;
$LeftOvers = $pdf->addTextWrap($Left_Margin+470,$YPos,40,$FontSize,_('Amount'), 'center');
//$LeftOvers = $pdf->addTextWrap($Left_Margin+62,$YPos,150,$FontSize,_('Customer'), 'center');
//$LeftOvers = $pdf->addTextWrap($Left_Margin+212,$YPos,100,$FontSize,_('Bank Details'), 'center');
$LeftOvers = $pdf->addTextWrap($Left_Margin+17,$YPos,430,$FontSize,_('收   款   摘   要   明   细'), 'center');
//$LeftOvers = $pdf->addTextWrap($Left_Margin+312,$YPos,100,$FontSize,_('Narrative'), 'center');
$YPos-=3*$line_height;

$FontSize=10;

$pdf->addText($XPos, $YPos-50,$FontSize, _('Banked into') . ': ' . $BankActName . ' - '  . $BankActNumber);//存入银行账户，账号
$YPos -= $line_height;
$pdf->addText($XPos, $YPos-50,$FontSize,'账户' . _('Reference'). ':' . $BankingReference);//收款账户摘要
$YPos -= $line_height;
$pdf->addText($XPos, $YPos-15,$FontSize, _('我单位记账信息') . ': ');



	
$YPos -= $line_height-25;
list($userid,$realname,$stepdate)=getTransBy(12,$_POST['BatchNo']);
$pdf->addText($XPos, $YPos-90,$FontSize, _('收款') . ': ' . $realname);
$pdf->addText($XPos+170, $YPos-90,$FontSize, _('出纳') . ': ');
$pdf->addText($XPos+290, $YPos-90,$FontSize,_('收款单位'). ': ' .$_SESSION['CompanyRecord']['coyname'] . '( 盖章 )');
$pdf->addText($XPos+470, $YPos-100,$FontSize,Date($_SESSION['DefaultDateFormat']));//打印日期
$YPos -= $line_height;


$YPos -= ($line_height);
?>
