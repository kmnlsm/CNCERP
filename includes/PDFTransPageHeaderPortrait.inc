<?php

/* $Id: PDFTransPageHeaderPortrait.inc 4644 2011-07-30 06:58:14Z daintree $ */

if (!$FirstPage){ /* 如果不是第一次只启动了新的一页 */
	$pdf->newPage();
}

$YPos = $Page_Height - $Top_Margin + 5 ;

/*$pdf->addJpegFromFile($_SESSION['LogoFile'],$Page_Width/2 -115,$YPos-50,0,35);*/
$coyname = $_SESSION['CompanyRecord']['coyname'];
$FontSize =15;
if ($InvOrCredit=='Invoice') {
	$pdf->addText($Page_Width/2 - 200, $YPos, $FontSize, $coyname ._('销售出库单'). ' ');/*单据名称*/
} else {
	$pdf->addText($Page_Width/2 - 215, $YPos, $FontSize, $coyname ._('红字发票'). ' ');/*单据名称*/
}

//$FontSize = 10;
//$pdf->addText($Page_Width-50, $YPos - 190 , $FontSize, _('页码'). ':' );/*页字*/
//$pdf->addText($Page_Width-25, $YPos - 190 , $FontSize, $PageNumber);/*页码*/
$FontSize = 8;
$pdf->addText($Page_Width-40, $YPos - 180 , $FontSize, _('户'));/*添加其它*/
$pdf->addText($Page_Width-40, $YPos - 170 , $FontSize, _('客'));/*添加其它*/
$pdf->addText($Page_Width-40, $YPos - 160 , $FontSize, _('联'));/*添加其它*/
$pdf->addText($Page_Width-40, $YPos - 150 , $FontSize, _('绿'));/*添加其它*/

$pdf->addText($Page_Width-45, $YPos - 140 , $FontSize, _('库'));/*添加其它*/
$pdf->addText($Page_Width-45, $YPos - 130 , $FontSize, _('仓'));/*添加其它*/
$pdf->addText($Page_Width-45, $YPos - 120 , $FontSize, _('联'));/*添加其它*/
$pdf->addText($Page_Width-45, $YPos - 110 , $FontSize, _('黄'));/*添加其它*/

$pdf->addText($Page_Width-40, $YPos - 100 , $FontSize, _('账'));/*添加其它*/
$pdf->addText($Page_Width-40, $YPos - 90 , $FontSize, _('记'));/*添加其它*/
$pdf->addText($Page_Width-40, $YPos - 80 , $FontSize, _('联'));/*添加其它*/
$pdf->addText($Page_Width-40, $YPos - 70 , $FontSize, _('红'));/*添加其它*/

$pdf->addText($Page_Width-45, $YPos - 60 , $FontSize, _('根'));/*添加其它*/
$pdf->addText($Page_Width-45, $YPos - 50 , $FontSize, _('存'));/*添加其它*/
$pdf->addText($Page_Width-45, $YPos - 40 , $FontSize, _('联'));/*添加其它*/
$pdf->addText($Page_Width-45, $YPos - 30 , $FontSize, _('白'));/*添加其它*/


$YPos = $Page_Height - $Top_Margin + 5;

$FontSize = 12;
$LineHeight = 12;
$LineCount = 1;


$pdf->addText($Page_Width-150, $YPos-$LineCount*$LineHeight/8, $FontSize, _('单号:'));/*单号字*/
$FromTransNoS=str_pad($FromTransNo, 9, '0', STR_PAD_LEFT);
$pdf->addText($Page_Width-110, $YPos-$LineCount*$LineHeight/5, $FontSize, $FromTransNoS);/*单号*/
$pdf->addText($Page_Width-150, $YPos-$LineCount*$LineHeight, $FontSize, _('日期：'));/*日期字*/
$pdf->addText($Page_Width-110, $YPos-$LineCount*$LineHeight, $FontSize, ConvertSQLDate($myrow['trandate']));/*日期*/


/*在右侧框中的文本结束 */

/*现在公司信息打印在左上角 */


/*现在客户公司信息*/

$XPos = $Left_Margin;
$YPos = $Page_Height - $Top_Margin - 10 ;/*买方抬头单位位置*/

$FontSize = 12;
$LineHeight = 10;
$LineCount = 0;

$pdf->addText($XPos+10, $YPos-$LineCount*$LineHeight, $FontSize, _('Customer'). ':' .$myrow['name']);

/*$XPos += 20;*/
/*$FontSize = 10;*/
/*$LineHeight = 13;*/

/*if ($myrow['invaddrbranch']==0){*/
	/*$LineCount += 2;*/
	/*$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['name']);*/
	/*$LineCount += 1;*/
	/*$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['address1']);*/
	/*$LineCount += 1;*/
	/*$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['address2']);*/
	/*$LineCount += 1;*/
	/*$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['address3'] . ' ' . $myrow['address4']  . ' ' . /*$myrow['address5']  . ' ' . $myrow['address6']);*/
/*} else {*/
/*	$LineCount += 1;*/
/*	$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['name']);*/
/*	$LineCount += 1;*/
/*	$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['brpostaddr1']);*/
/*	$LineCount += 1;*/
/*	$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['brpostaddr2']);*/
/*	$LineCount += 1;*/
/*	$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['brpostaddr3'] . ' ' . $myrow['brpostaddr4'] . ' ' .*/
/* $myrow['brpostaddr5'] . ' ' . $myrow['brpostaddr6']);*/
/*}*/

//$XPos = $Page_Width/2;
//$XPos = $Page_Width - 265;
//$YPos = $Page_Height - $Top_Margin -50;

//$FontSize = 8;
//$LineHeight = 10;
//$LineCount = 0;

//if ($InvOrCredit=='Invoice') {
	/*$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, _('Delivered To (check Dispatch Detail)') . ':');*/
//  $FontSize = 10;
//  $LineHeight = 13;
//	$XPos +=20;
//	$LineCount += 1;
// 在试图调用htmlspecialchars_decode之前，检查其支持的，如果不能代替兼容的版本
//if (!function_exists('htmlspecialchars_decode')) {
//        function htmlspecialchars_decode($str) {
//                $trans = get_html_translation_table(HTML_SPECIALCHARS);
//
 //               $decode = ARRAY();
//                foreach ($trans AS $char=>$entity) {
//                        $decode[$entity] = $char;
//                }
//
//                $str = strtr($str, $decode);
//
//                return $str;
//        }
//}
//	$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['deliverto']);
//	$LineCount += 1;
//	$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['deladd1']);
//	$LineCount += 1;
//	$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['deladd2']);
//	$LineCount += 1;
//	$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['deladd3'] . ' ' . $myrow['deladd4'] . '// ' . $myrow['deladd5'] . ' ' . $myrow['deladd6']);
//}
//if ($InvOrCredit=='Credit'){
/* then its a credit note */
//	$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, _('Charge Branch') . ':');
 // $FontSize = 10;
//  $LineHeight = 13;
//	$XPos +=40;
//	$LineCount += 1;
//	$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['brname']);
//	$LineCount += 1;
//	$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['braddress1']);
//	$LineCount += 1;
//	$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['braddress2']);
//	$LineCount += 1;
//	$pdf->addText($XPos, $YPos-$LineCount*$LineHeight, $FontSize, $myrow['braddress3'] . ' ' . //$myrow['braddress4'] . ' ' . $myrow['braddress5'] . ' ' . $myrow['braddress6']);
	//$XPos -=80;
//}

//$XPos = $Left_Margin;

$YPos = $Page_Height - $Top_Margin +9;/*单据内容位置*/
$XPos = $Left_Margin;
$FontSize = 10;

//$pdf->addText($XPos, $YPos-9, $FontSize, _('All amounts stated in') . ' - ' . $myrow['currcode']);//币种

$BoxHeight = $Page_Height-92;

/*绘制一个漂亮的圆角框输入行项目 */
/*90度弧箱0度的右上方开始自下而上 */
$pdf->partEllipse($Page_Width-$Right_Margin-10, $Bottom_Margin+$BoxHeight,0,90,10,10);
/*行左上角 */
$pdf->line($Page_Width-$Right_Margin-10, $Bottom_Margin+$BoxHeight+10,$Left_Margin+10, $Bottom_Margin+$BoxHeight+10);
/*Dow 顶部左上角 */
$pdf->partEllipse($Left_Margin+10, $Bottom_Margin+$BoxHeight,90,180,10,10);
/*Do 一条线左下角 */
$pdf->line($Left_Margin, $Bottom_Margin+$BoxHeight,$Left_Margin, $Bottom_Margin+10);
/*现在不回来西左下角180 - 270*/
$pdf->partEllipse($Left_Margin+10, $Bottom_Margin+10,180,270,10,10);
/*现在一条线的右下角 */
$pdf->line($Left_Margin+10, $Bottom_Margin,$Page_Width-$Right_Margin-10, $Bottom_Margin);
/*现在做的右下角 */
$pdf->partEllipse($Page_Width-$Right_Margin-10, $Bottom_Margin+10,270,360,10,10);
/*最后加入右上角的地方开始 */
$pdf->line($Page_Width-$Right_Margin, $Bottom_Margin+10,$Page_Width-$Right_Margin, $Bottom_Margin+$BoxHeight);


$YPos -= 35;
/*设置最多的标题*/
$FontSize=11;
//$LineHeight = 12;
$LineCount = 0;

//$pdf->addText($Left_Margin+2, ($YPos+$LineHeight)-$LineCount*$LineHeight, $FontSize, _('Cust. Tax Ref') . ':');/*税号*/
/*Print a vertical line */
//$pdf->line($Left_Margin+178, $YPos+$LineHeight,$Left_Margin+178, $YPos-$LineHeight*2+4);
//$pdf->addText($Left_Margin+180, ($YPos+$LineHeight)-$LineCount*$LineHeight, $FontSize, _('Cust. Reference No.') . ':');/*客户参考号*/
/*Print a vertical line */
//$pdf->line($Left_Margin+358, $YPos+$LineHeight,$Left_Margin+358, $YPos-$LineHeight*2+4);
//$pdf->addText($Left_Margin+360, ($YPos+$LineHeight)-$LineCount*$LineHeight, $FontSize, _('Sales Person') . ':');/*销售员*/
//$LineCount += 1;
//$pdf->addText($Left_Margin+12, ($YPos+$LineHeight)-$LineCount*$LineHeight, $FontSize, $myrow['taxref']);
//if ($InvOrCredit=='Invoice'){
//	$pdf->addText($Left_Margin+190, ($YPos+$LineHeight)-$LineCount*$LineHeight, $FontSize, $myrow['customerref']);
//}
//$pdf->addText($Left_Margin+370, ($YPos+$LineHeight)-$LineCount*$LineHeight, $FontSize, $myrow['salesmanname']);/*销售员名字*/

//$YPos -= 20;

/*画一条线 */
//$pdf->line($XPos, $YPos,$Page_Width-$Right_Margin, $YPos);

$YPos -= 9;

$TopOfColHeadings = $YPos;

$pdf->addText($Left_Margin+20, $YPos+12, $FontSize, _('商品编号'));
$pdf->addText($Left_Margin+140, $YPos+12, $FontSize, _('商品名称规格描述'));
$pdf->addText($Left_Margin+300, $YPos+12, $FontSize, _('Unit Price'));
$pdf->addText($Left_Margin+360, $YPos+12, $FontSize, _('Qty'));
$pdf->addText($Left_Margin+390, $YPos+12, $FontSize, _('UOM'));
$pdf->addText($Left_Margin+420, $YPos+12, $FontSize, _('Disc.'));
$pdf->addText($Left_Margin+480, $YPos+12, $FontSize, _('金额'));

$pdf->line($XPos, $YPos-15,$Page_Width-$Right_Margin, $YPos-15);//画一条横线内容栏
$pdf->line($XPos, $YPos-30,$Page_Width-$Right_Margin, $YPos-30);//画一条横线内容栏
$pdf->line($XPos, $YPos-45,$Page_Width-$Right_Margin, $YPos-45);//画一条横线内容栏
$pdf->line($XPos, $YPos-60,$Page_Width-$Right_Margin, $YPos-60);//画一条横线内容栏
$pdf->line($XPos, $YPos-75,$Page_Width-$Right_Margin, $YPos-75);//画一条横线内容栏
$pdf->line($XPos, $YPos-90,$Page_Width-$Right_Margin, $YPos-90);//画一条横线内容栏
$pdf->line($XPos, $YPos-105,$Page_Width-$Right_Margin, $YPos-105);//画一条横线内容栏
$pdf->line($XPos, $YPos-120,$Page_Width-$Right_Margin, $YPos-120);//画一条横线内容栏
$pdf->line($XPos, $YPos-135,$Page_Width-$Right_Margin, $YPos-135);//画一条横线内容栏
$pdf->line($XPos, $YPos-152,$Page_Width-$Right_Margin, $YPos-152);//画一条横线内容栏
$YPos-=0;

/*画一条线 */
$pdf->line($XPos, $YPos,$Page_Width-$Right_Margin, $YPos);

$YPos -= ($line_height);

?>
