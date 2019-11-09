<?php
/* $Id: GLAccountReport.php 4618 2011-07-02 23:04:59Z daintree /储清周2012.2.8修改---中国三栏式明细账$*/

include ('includes/session.php');

include('includes/Transby.php');
$ViewTopic= 'GeneralLedger';
$BookMark = 'GLAccountReport';

if (isset($_POST['Period'])) {
	$SelectedPeriod = $_POST['Period'];
} elseif (isset($_GET['Period'])) {
	$SelectedPeriod = $_GET['Period'];
}

if (isset($_POST['RunReport'])) {

	if (!isset($SelectedPeriod)) {
		prnMsg(_('A period or range of periods must be selected from the list box'),'info');
		include('includes/footer.php');
		exit;
	}
	if (!isset($_POST['Account'])) {
		prnMsg(_('An account or range of accounts must be selected from the list box'),'info');
		include('includes/footer.php');
		exit;
	}
    $PaperSize='A4_Landscape';
	include('includes/PDFStarter.php');
/*PDFStarter.php has all the variables for page size and width set up depending on the users default preferences for paper size PDFStarter.php有纸张大小取决于用户的默认首选项设置页面大小和宽度的所有变量*/
    
	$pdf->addInfo('Title',_('三栏式明细账'));
	$pdf->addInfo('Author','CNCERP -CQZ');
	$pdf->addInfo('Subject',_('总账账簿——三栏式明细账'));
//	$PaperSize='A4_Landscape';
	$Top_Margin=60;
	$Left_Margin=100;
	$line_height=12;
	$PageNumber = 1;
	$FontSize=10;
	NewPageHeader();
	$pdf->SetLineStyle(array('color'=>array(0,0,255)));


	foreach ($_POST['Account'] as $SelectedAccount) {
		/*Is the account a balance sheet or a profit and loss account */
		$result = DB_query("SELECT chartmaster.accountname,
								accountgroups.pandl
							FROM accountgroups
							INNER JOIN chartmaster ON accountgroups.groupname=chartmaster.group_
							WHERE chartmaster.accountcode='" . $SelectedAccount . "'");
		$AccountDetailRow = DB_fetch_row($result);
		$AccountName = $AccountDetailRow[0];
		if ($AccountDetailRow[1]==1) {
			$PandLAccount = True;
		}else{
			$PandLAccount = False; /*its a balance sheet account */
		}

		$FirstPeriodSelected = min($SelectedPeriod);
		$LastPeriodSelected = max($SelectedPeriod);

		if ($_POST['tag']==0) {
	 		$sql= "SELECT type,
						typename,
						gltrans.typeno,
						gltrans.trandate,
						gltrans.narrative,
						gltrans.amount,
						gltrans.periodno,
						gltrans.tag
					FROM gltrans INNER JOIN systypes
					ON gltrans.type=systypes.typeid
					WHERE gltrans.account = '" . $SelectedAccount . "'
					AND posted=1
					AND periodno>='" . $FirstPeriodSelected . "'
					AND periodno<='" . $LastPeriodSelected . "'
					ORDER BY periodno,
						gltrans.trandate,
						counterindex";

		} else {
	 		$sql= "SELECT gltrans.type,
						typename,
						gltrans.typeno,
						gltrans.trandate,
						gltrans.narrative,
						gltrans.amount,
						gltrans.periodno,
						gltrans.tag
					FROM gltrans INNER JOIN systypes
					ON gltrans.type=systypes.typeid
					WHERE gltrans.account = '" . $SelectedAccount . "'
					AND posted=1
					AND periodno>='" . $FirstPeriodSelected . "'
					AND periodno<='" . $LastPeriodSelected . "'
	                AND tag='" . $_POST['tag'] . "'
	                ORDER BY periodno,
							gltrans.trandate,
							counterindex";
		}

		$ErrMsg = _('The transactions for account') . ' ' . $SelectedAccount . ' ' . _('could not be retrieved because') ;
		$TransResult = DB_query($sql,$ErrMsg);

		if ($YPos < ($Bottom_Margin + (5 * $line_height))) { //need 5 lines grace otherwise start new page
			$PageNumber++;
			NewPageHeader();
		}

		$YPos -=$line_height;
		$pdf->SetTextColor(0,0,255);
		$LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos+50,300,$FontSize,$SelectedAccount . ' - ' . $AccountName . ' ' . ': ' . _('Listing for Period'). ' ' . $FirstPeriodSelected . ' ' . _('to') . ' ' . $LastPeriodSelected);//账户编码、名称及会计期间
		//$LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos+10,300,$FontSize,_('日期'));//账户编码、名称及会计期间
		$pdf->SetTextColor(0,0,0);
		

		if ($PandLAccount==True) {
			$RunningTotal = 0;
		} else {
			$sql = "SELECT bfwd,
						actual,
						period
					FROM chartdetails
					WHERE chartdetails.accountcode='" .  $SelectedAccount . "'
					AND chartdetails.period='" . $FirstPeriodSelected . "'";

			$ErrMsg = _('The chart details for account') . ' ' . $SelectedAccount . ' ' . _('could not be retrieved');
			$ChartDetailsResult = DB_query($sql,$ErrMsg);
			$ChartDetailRow = DB_fetch_array($ChartDetailsResult);

			$RunningTotal = $ChartDetailRow['bfwd'];
			$YPos -=2*$line_height;
			$FontSize=10;
			
			$LeftOvers = $pdf->addTextWrap(250,$YPos+5,150,$FontSize, _('Brought Forward Balance'));//文字：结转余额
			
			

			if ($RunningTotal < 0 ){ //its a credit balance b/fwd其贷方余额B / FWD
			   $LeftOvers = $pdf->addTextWrap(709,$YPos+5,80,$FontSize,_('贷'),'centre');
			   $pdf->SetFont('helvetica', '', 10);
   			   $LeftOvers = $pdf->addTextWrap(620.5,$YPos+5,80,$FontSize,GetCNamount(-$RunningTotal) , 'right');
			   $LeftOvers = $pdf->addTextWrap(723.5,$YPos+5,80,$FontSize,GetCNamount(-$RunningTotal), 'right');
			} else if ($RunningTotal ==0 ){ //its a debit balance b/fwd其借方余额B / FWD
			   $LeftOvers = $pdf->addTextWrap(709,$YPos+5,80,$FontSize,_('平'),'centre');
			   $pdf->SetFont('helvetica', '', 10);
               $LeftOvers = $pdf->addTextWrap(527.5,$YPos+5,80,$FontSize, GetCNamount($RunningTotal), 'right');
			   $LeftOvers = $pdf->addTextWrap(723.5,$YPos+5,80,$FontSize, GetCNamount($RunningTotal) , 'right');
			}else { //its a debit balance b/fwd其借方余额B / FWD
			   $LeftOvers = $pdf->addTextWrap(709,$YPos+5,80,$FontSize,_('借'),'centre');
			   $pdf->SetFont('helvetica', '', 10);
               $LeftOvers = $pdf->addTextWrap(527.5,$YPos+5,80,$FontSize, GetCNamount($RunningTotal), 'right');
			   $LeftOvers = $pdf->addTextWrap(723.5,$YPos+5,80,$FontSize, GetCNamount($RunningTotal), 'right');
			}
		}
		$PeriodTotal = 0;
		$PeriodNo = -9999;

		$j = 1;
		$k=0; //row colour counter行的颜色计数器

		while ($myrow=DB_fetch_array($TransResult)) {

			if ($myrow['periodno']!=$PeriodNo){
				if ($PeriodNo!=-9999){ //ie its not the first time around例如其并非围绕第一次
					$YPos -=2*$line_height;
					
					$LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos,150,$FontSize, _('Period Total'));//期间合计
					if ($PeriodTotal < 0 ){ //its a credit balance b/fwd其贷方余额B / FWD
						$pdf->SetFont('helvetica', '', 10);
	                   $LeftOvers = $pdf->addTextWrap(620.5,$YPos,80,$FontSize, GetCNamount(-$PeriodTotal) , 'right');
					   
                    } else { //its a debit balance b/fwd其借方余额B / FWD
						$pdf->SetFont('helvetica', '', 10);
                       $LeftOvers = $pdf->addTextWrap(527.5,$YPos,80,$FontSize, GetCNamount($PeriodTotal) , 'right');
					   
					}
				}
				$PeriodNo = $myrow['periodno'];
				$PeriodTotal = 0;
			}

			$RunningTotal += $myrow['amount'];
			$PeriodTotal += $myrow['amount'];

			if($myrow['amount']>=0){
				$DebitAmount = GetCNamount($myrow['amount']);
				$CreditAmount = '';
			} elseif ($myrow['amount']<0){
				$CreditAmount = GetCNamount(-$myrow['amount']);
				$DebitAmount = '';
			}

			$FormatedTranDate = ConvertSQLDate($myrow['trandate']);

			$tagsql="SELECT tagdescription FROM tags WHERE tagref='".$myrow['tag'] . "'";
			$tagresult=DB_query($tagsql);
			$tagrow = DB_fetch_array($tagresult);
			$Yuer = GetCNamount($RunningTotal);//科目余额
			//$Yuer2 = locale_number_format(-$Yuer,$_SESSION['CompanyRecord']['decimalplaces']);
            $Yuer2 = GetCNamount(-$RunningTotal);
			// to edit this block编辑这个区块,显示的主要内容
			$YPos -=2*$line_height;
			$FontSize=10;
$pdf->SetFont('javiergb', '', 10);
			$LeftOvers = $pdf->addTextWrap($Left_Margin+55,$YPos+5,50,$FontSize,$myrow['typename']);//凭证类型
			$LeftOvers = $pdf->addTextWrap(186,$YPos+5,50,$FontSize,$myrow['typeno'],'right');//凭证号
			$LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos+5,50,$FontSize,$FormatedTranDate);//日期
			$LeftOvers = $pdf->addTextWrap(233,$YPos+5,550,$FontSize,$myrow['narrative']);//摘要
			$pdf->SetFont('helvetica', '', 10);
			$LeftOvers = $pdf->addTextWrap(527.5,$YPos+5,80,$FontSize,$DebitAmount,'right');//借方
			$LeftOvers = $pdf->addTextWrap(620.5,$YPos+5,80,$FontSize,$CreditAmount,'right');//贷方
			//$LeftOvers = $pdf->addTextWrap(320,$YPos,150,$FontSize,$myrow['narrative']);
$pdf->SetFont('javiergb', '', 10);
			$LeftOvers = $pdf->addTextWrap(473,$YPos+5,80,$FontSize,$tagrow['tagdescription']);

			if ($RunningTotal < 0){ 
		   $LeftOvers = $pdf->addTextWrap(709,$YPos+5,80,$FontSize,_('贷'),'centre');
		   $pdf->SetTextColor(0,0,0);
		   $pdf->SetFont('helvetica', '', 10);
		   $LeftOvers = $pdf->addTextWrap(723,$YPos+5,80,$FontSize,$Yuer2,'right');//科目余额栏
		   $pdf->SetTextColor(0,0,0);
		} else if ($RunningTotal == 0) { //its a debit balance b/fwd其借方余额B / FWD   
           $pdf->SetTextColor(0,0,0);
		   $LeftOvers = $pdf->addTextWrap(709,$YPos+5,80,$FontSize,_('平'),'centre');
		   $pdf->SetFont('helvetica', '', 10);
		   $LeftOvers = $pdf->addTextWrap(723,$YPos+5,80,$FontSize,$Yuer,'right');//科目余额栏
        }else { //its a debit balance b/fwd其借方余额B / FWD 
           $pdf->SetTextColor(0,0,0);
		   $LeftOvers = $pdf->addTextWrap(709,$YPos+5,80,$FontSize,_('借'),'centre');
		   $pdf->SetFont('helvetica', '', 10);
		   $LeftOvers = $pdf->addTextWrap(723,$YPos+5,80,$FontSize,$Yuer,'right');//科目余额栏
        }
			

			// to edit this block
			$pdf->SetFont('javiergb', '', 10);
			if ($YPos < ($Bottom_Margin + (2*$line_height))){
				$PageNumber++;
				NewPageHeader();
				$YPos -=$line_height;
				$pdf->SetTextColor(0,0,255);
				$LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos+50,300,$FontSize,$SelectedAccount . ' - ' . $AccountName . ' ' . ': ' . _('Listing for Period'). ' ' . $FirstPeriodSelected . ' ' . _('to') . ' ' . $LastPeriodSelected);//账户编码、名称及会计期间
		//$LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos+10,300,$FontSize,_('日期'));//账户编码、名称及会计期间
		$pdf->SetTextColor(0,0,0);
			}

		}
		$YPos -=2*$line_height;
		if ($PandLAccount==True){
			$pdf->SetFont('javiergb', '', 10);
			$LeftOvers = $pdf->addTextWrap(250,$YPos+5,150,$FontSize, _('Total Period Movement').('(损益表)'));
		} else { /*its a balance sheet account其资产负债表帐户*/
		    $pdf->SetFont('javiergb', '', 10);
			$LeftOvers = $pdf->addTextWrap(250,$YPos+5,150,$FontSize, _('Balance C/Fwd').('余额'));//资产负债表科目，文字位置
		}
		if ($RunningTotal < 0){
			$LeftOvers = $pdf->addTextWrap(709,$YPos+5,80,$FontSize,_('贷'),'centre');
			$pdf->SetFont('helvetica', '', 10);
		   $LeftOvers = $pdf->addTextWrap(620.5,$YPos+5,80,$FontSize, GetCNamount(-$RunningTotal) , 'right');
		   $LeftOvers = $pdf->addTextWrap(723.5,$YPos+5,80,$FontSize, GetCNamount(-$RunningTotal) , 'right');
		  
		} else { //its a debit balance b/fwd其借方余额B / FWD
			$LeftOvers = $pdf->addTextWrap(709,$YPos+5,80,$FontSize,_('借'),'centre');
			$pdf->SetFont('helvetica', '', 10);
           $LeftOvers = $pdf->addTextWrap(527.5,$YPos+5,80,$FontSize, GetCNamount($RunningTotal) , 'right');
		   $LeftOvers = $pdf->addTextWrap(723.5,$YPos+5,80,$FontSize, GetCNamount($RunningTotal) , 'right');
		  
        }
       	$YPos -=$line_height;
       	//draw a line under each account printed绘制一条线，每个打印的帐户下
       // $pdf->line($Page_Width/2+110, $YPos+10,$Page_Width-$Right_Margin, $Right_Margin);
	    $pdf->SetFont('javiergb', '', 10);
	    $LeftOvers = $pdf->addTextWrap(250,$YPos,150,$FontSize,_('此会计期间记录结束'),'centre');//结束
        $YPos -=$line_height;
		if ($SelectedAccount !== end($_POST['Account'])){
			/*此处确定下是否最后一个账户20191101CQZ*/
		$PageNumber++;
		NewPageHeader();}
	} /*此处判断下是否最后一页end for each SelectedAccount 结尾为每个选定的帐户*/
	/*Now check that there is some output and print the report out现在检查有某些输出和打印输出的报告 */
	if (count($_POST['Account'])==0) {
	   prnMsg(_('An account or range of accounts must be selected from the list box'),'info');
	   include('includes/footer.php');
	   exit;

	} else { //print the report打印报告

	    $pdf->OutputD($_SESSION['DatabaseName'] . '_GL_Accounts_' . date('Y-m-d') . '.pdf');
	    $pdf->__destruct();
	} //end if the report has some output结束报告，如果有了一些输出
} /* end of if PrintReport button hit结束如果PrintReport按钮打印 */
 else {
	$Title = _('General Ledger Account Report');
	include('includes/header.php');
	include('includes/GLPostings.inc');

	echo '<p class="page_title_text"><img src="'.$RootPath, '/css/', $Theme, '/images/transactions.png" title="' . _('General Ledger Account Inquiry') . '" alt="" />' . ' ' . _('General Ledger Account Report') . '</p>';

	echo '<div class="page_help_text">' . _('Use the keyboard Shift key to select multiple accounts and periods') . '</div><br />';

	echo '<form method="post" action="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '">';
	echo '<input type="hidden" name="FormID" value="' . $_SESSION['FormID'] . '" />';

	/*Dates in SQL format for the last day of last month*/
	$DefaultPeriodDate = Date ('Y-m-d', Mktime(0,0,0,Date('m'),0,Date('Y')));

	/*Show a form to allow input of criteria for the report */
	echo '<table>
		        <tr>
		         <td>' . _('Selected Accounts') . ':</td>
		         <td><select name="Account[]" multiple="multiple" size="12">';
	$sql = "SELECT chartmaster.accountcode,
				   chartmaster.accountname
			FROM chartmaster
			INNER JOIN glaccountusers ON glaccountusers.accountcode=chartmaster.accountcode AND glaccountusers.userid='" .  $_SESSION['UserID'] . "' AND glaccountusers.canview=1
			ORDER BY chartmaster.accountcode";
	$AccountsResult = DB_query($sql);
	$i=0;
	while ($myrow=DB_fetch_array($AccountsResult)) {
		if(isset($_POST['Account'][$i]) AND $myrow['accountcode'] == $_POST['Account'][$i]) {
			echo '<option selected="selected" value="' . $myrow['accountcode'] . '">' . $myrow['accountcode'] . ' ' . $myrow['accountname'] . '</option>';
			$i++;
		} else {
			echo '<option value="' . $myrow['accountcode'] . '">' . $myrow['accountcode'] . ' ' . $myrow['accountname']  . '</option>';
		}
	}
	echo '</select></td>';

	echo '<td>' . _('For Period range').':</td>
			<td><select Name=Period[] multiple="multiple" size="12">';
	$sql = "SELECT periodno, lastdate_in_period FROM periods ORDER BY periodno DESC";
	$Periods = DB_query($sql);
	$id=0;

	while ($myrow=DB_fetch_array($Periods)) {
		if (isset($SelectedPeriod[$id]) and $myrow['periodno'] == $SelectedPeriod[$id]) {
			echo '<option selected="selected" value="' . $myrow['periodno'] . '">' . _(MonthAndYearFromSQLDate($myrow['lastdate_in_period'])) . '</option>';
			$id++;
		} else {
			echo '<option value="' . $myrow['periodno'] . '">' . _(MonthAndYearFromSQLDate($myrow['lastdate_in_period'])) . '</option>';
		}
	}
	echo '</select></td></tr>';

	//Select the tag
	echo '<tr>
			<td>' . _('Select Tag') . ':</td>
			<td><select name="tag">';

	$SQL = "SELECT tagref,
					tagdescription
				FROM tags
				ORDER BY tagref";

	$result=DB_query($SQL);
	echo '<option value="0">0 - '._('All tags') . '</option>';
	while ($myrow=DB_fetch_array($result)) {
		if (isset($_POST['tag']) and $_POST['tag']==$myrow['tagref']) {
		   echo '<option selected="selected" value="' . $myrow['tagref'] . '">' . $myrow['tagref'].' - ' .$myrow['tagdescription']  . '</option>';
		} else {
		   echo '<option value="' . $myrow['tagref'] . '">' . $myrow['tagref'].' - ' .$myrow['tagdescription']  . '</option>';
		}
	}
	echo '</select></td></tr>';
	// End select tag

	echo '</table>
		<br />
		<div class="centre">
			<input type="submit" name="RunReport" value="' ._('Run Report'). '" />
		</div>
		</form>';

	include ('includes/footer.php');
	exit;
}


function NewPageHeader () {
	global $PageNumber,
				$pdf,
				$YPos,
				$Page_Height,
				$Page_Width,
				$Top_Margin,
				$FontSize,
				$Left_Margin,
				$Right_Margin,
				$line_height;
				$SelectedAccount;
				$AccountName;

	/*PDF page header for GL Account report 总分类帐科目报告的PDF页面页眉*/

	if ($PageNumber > 1) {
		$pdf->newPage();
	}

	$FontSize=10;
	$pdf->SetTextColor(0,0,255);
	
	$pdf->SetLineStyle(array('color'=>array(0,0,255)));
	$YPos= $Page_Height-$Top_Margin;
	$LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos,300,$FontSize,_('编制单位') . ': '.$_SESSION['CompanyRecord']['coyname']);
	$YPos -=$line_height;
	
	$FontSize=20;
	$LeftOvers = $pdf->addTextWrap(390,$YPos+20,300,$FontSize,_('三栏式明细账'));
	$pdf->line(370, $YPos+17,535, $YPos+17);//横线
	$pdf->line(370, $YPos+14,535, $YPos+14);//横线
	
	$FontSize=8;
	$LeftOvers = $pdf->addTextWrap($Page_Width-$Right_Margin-120,$YPos,120,$FontSize,_('Printed') . ': ' . Date($_SESSION['DefaultDateFormat']) . '   ' . _('Page') . ' ' . $PageNumber);
	$pdf->SetTextColor(0,0,0);

	$YPos -=(2*$line_height);

	/*Draw a rectangle to put the headings in 给页面绘制一个双线矩形边框   */
    $pdf->SetLineStyle(array('color'=>array(255,0,0)));
	$pdf->line($Left_Margin-2, $YPos+$line_height,$Page_Width-$Right_Margin+2, $YPos+$line_height);//上边
	$pdf->line($Left_Margin, $YPos+$line_height-2,$Page_Width-$Right_Margin, $YPos+$line_height-2);//上边
	$pdf->line($Left_Margin, $YPos+$line_height-2,$Left_Margin,  $Right_Margin);//左边
	$pdf->line($Left_Margin-2, $YPos+$line_height,$Left_Margin-2,  $Right_Margin-2);//左边
	
	$pdf->SetLineStyle(array('color'=>array(0,0,255)));
	$pdf->line($Left_Margin, $YPos-36,$Page_Width-$Right_Margin, $YPos-36);//横线格子
	$pdf->line($Left_Margin, $YPos-36-2*$line_height,$Page_Width-$Right_Margin, $YPos-36-2*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-4*$line_height,$Page_Width-$Right_Margin, $YPos-36-4*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-6*$line_height,$Page_Width-$Right_Margin, $YPos-36-6*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-8*$line_height,$Page_Width-$Right_Margin, $YPos-36-8*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-10*$line_height,$Page_Width-$Right_Margin, $YPos-36-10*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-12*$line_height,$Page_Width-$Right_Margin, $YPos-36-12*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-14*$line_height,$Page_Width-$Right_Margin, $YPos-36-14*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-16*$line_height,$Page_Width-$Right_Margin, $YPos-36-16*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-18*$line_height,$Page_Width-$Right_Margin, $YPos-36-18*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-20*$line_height,$Page_Width-$Right_Margin, $YPos-36-20*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-22*$line_height,$Page_Width-$Right_Margin, $YPos-36-22*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-24*$line_height,$Page_Width-$Right_Margin, $YPos-36-24*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-26*$line_height,$Page_Width-$Right_Margin, $YPos-36-26*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-28*$line_height,$Page_Width-$Right_Margin, $YPos-36-28*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-30*$line_height,$Page_Width-$Right_Margin, $YPos-36-30*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-32*$line_height,$Page_Width-$Right_Margin, $YPos-36-32*$line_height);//横线格子
	$pdf->line($Left_Margin, $YPos-36-34*$line_height,$Page_Width-$Right_Margin, $YPos-36-34*$line_height);//横线格子
	$pdf->SetLineStyle(array('color'=>array(255,0,0)));
	
	$pdf->line($Left_Margin, $Right_Margin+1,$Page_Width-$Right_Margin, $Right_Margin+1);//下边
	$pdf->line($Left_Margin-2, $Right_Margin-1,$Page_Width-$Right_Margin+2, $Right_Margin-1);//下边
	$pdf->line($Page_Width-$Right_Margin, $YPos+$line_height-2,$Page_Width-$Right_Margin, $Right_Margin);//右边
	$pdf->line($Page_Width-$Right_Margin+2, $YPos+$line_height,$Page_Width-$Right_Margin+2, $Right_Margin-2);//竖线右边双线边
	//以下是余额竖线
	     $Youbianline=$Right_Margin;
			$pdf->line($Youbianline+772, $YPos+$line_height-2,$Youbianline+772, $Right_Margin);//竖线右边2
			//$pdf->line(803, $YPos+$line_height-2,803, $Right_Margin);//竖线右边2
			$pdf->line($Youbianline+770, $YPos+$line_height-2,$Youbianline+770, $Right_Margin);//竖线右边双线2
			$pdf->SetLineStyle(array('color'=>array(0,0,255)));
			$pdf->line($Youbianline+764.5, $YPos-2*$line_height,$Youbianline+764.5, $Right_Margin);//分前
			$pdf->SetLineStyle(array('color'=>array(255,0,0)));
			$pdf->setlineStyle(array('width'=>1.2));
			$pdf->line($Youbianline+758, $YPos-2*$line_height,$Youbianline+758, $Right_Margin);//角前,余额小数点处
			$pdf->setlineStyle(array('width'=>0.2));
			$pdf->SetLineStyle(array('color'=>array(0,0,255)));
			$pdf->line($Youbianline+751, $YPos-2*$line_height,$Youbianline+751, $Right_Margin);//元前
			$pdf->line($Youbianline+745.5, $YPos-2*$line_height,$Youbianline+745.5, $Right_Margin);//十元前
			$pdf->setlineStyle(array('width'=>1.2));
			$pdf->line($Youbianline+738.5, $YPos+-2*$line_height,$Youbianline+738.5, $Right_Margin);//百元前加粗
			$pdf->setlineStyle(array('width'=>0.2));
			$pdf->line($Youbianline+732, $YPos-2*$line_height,$Youbianline+732,$Right_Margin);//千元前
			$pdf->line($Youbianline+726, $YPos-2*$line_height,$Youbianline+726, $Right_Margin);//万元前
			$pdf->setlineStyle(array('width'=>1.2));
			$pdf->line($Youbianline+719.5, $YPos-2*$line_height,$Youbianline+719.5, $Right_Margin);//十万元前加粗
			$pdf->setlineStyle(array('width'=>0.2));
			$pdf->line($Youbianline+713, $YPos-2*$line_height,$Youbianline+713,$Right_Margin);//百万元前
			$pdf->line($Youbianline+707, $YPos-2*$line_height,$Youbianline+707, $Right_Margin);//千万元前
			$pdf->setlineStyle(array('width'=>1.2));
			$pdf->line($Youbianline+700.5, $YPos-2*$line_height,$Youbianline+700.5, $Right_Margin);//亿元前加粗
			$pdf->setlineStyle(array('width'=>0.2));
			$pdf->SetTextColor(0,0,255);
			$FontSize=10;
			$LeftOvers = $pdf->addTextWrap($Youbianline+769,$YPos-28,50,$FontSize,_('√'),'centre');
			$FontSize=8;
			$pdf->SetTextColor(0,0,0);
			$pdf->line($Youbianline+693, $YPos-23,$Youbianline+770, $YPos-23);//横线
			$pdf->SetLineStyle(array('color'=>array(255,0,0)));
			$pdf->line($Youbianline+693.5, $YPos+$line_height-2,$Youbianline+693.5, $Right_Margin);//贷款右边
			$pdf->line($Youbianline+691.5, $YPos+$line_height-2,$Youbianline+691.5, $Right_Margin);//贷款竖线右边双线边
			$pdf->line($Youbianline+681, $YPos+$line_height-2,$Youbianline+681, $Right_Margin);//贷款前竖线右边2
			$pdf->line($Youbianline+679, $YPos+$line_height-2,$Youbianline+679, $Right_Margin);//贷款前竖线右边双线2
			
			$FontSize=6.3;
			$pdf->SetTextColor(0,0,255);
	        $LeftOvers = $pdf->addTextWrap($Youbianline+691,$YPos-33,500,$FontSize,_('十亿千百十万千百十元角分'),'centre');
	        $FontSize=8;
				//以下是贷方竖线
	        $Youbianline=$Right_Margin-103;
			$pdf->line($Youbianline+772, $YPos+$line_height-2,$Youbianline+772, $Right_Margin);//竖线右边2
			$pdf->line($Youbianline+770, $YPos+$line_height-2,$Youbianline+770, $Right_Margin);//竖线右边双线2
			$pdf->SetLineStyle(array('color'=>array(0,0,255)));
			$pdf->line($Youbianline+764.5, $YPos-2*$line_height,$Youbianline+764.5, $Right_Margin);//分前
			$pdf->SetLineStyle(array('color'=>array(255,0,0)));
			$pdf->setlineStyle(array('width'=>1.2));
			$pdf->line($Youbianline+758, $YPos-2*$line_height,$Youbianline+758, $Right_Margin);//角前,余额小数点处
			$pdf->setlineStyle(array('width'=>0.2));
			$pdf->SetLineStyle(array('color'=>array(0,0,255)));
			$pdf->line($Youbianline+751, $YPos-2*$line_height,$Youbianline+751, $Right_Margin);//元前
			$pdf->line($Youbianline+745.5, $YPos-2*$line_height,$Youbianline+745.5, $Right_Margin);//十元前
			$pdf->setlineStyle(array('width'=>1.2));
			$pdf->line($Youbianline+738.5, $YPos+-2*$line_height,$Youbianline+738.5, $Right_Margin);//百元前加粗
			$pdf->setlineStyle(array('width'=>0.2));
			$pdf->line($Youbianline+732, $YPos-2*$line_height,$Youbianline+732,$Right_Margin);//千元前
			$pdf->line($Youbianline+726, $YPos-2*$line_height,$Youbianline+726, $Right_Margin);//万元前
			$pdf->setlineStyle(array('width'=>1.2));
			$pdf->line($Youbianline+719.5, $YPos-2*$line_height,$Youbianline+719.5, $Right_Margin);//十万元前加粗
			$pdf->setlineStyle(array('width'=>0.2));
			$pdf->line($Youbianline+713, $YPos-2*$line_height,$Youbianline+713,$Right_Margin);//百万元前
			$pdf->line($Youbianline+707, $YPos-2*$line_height,$Youbianline+707, $Right_Margin);//千万元前
			$pdf->setlineStyle(array('width'=>1.2));
			$pdf->line($Youbianline+700.5, $YPos-2*$line_height,$Youbianline+700.5, $Right_Margin);//亿元前加粗
			$pdf->setlineStyle(array('width'=>0.2));
			$pdf->SetTextColor(0,0,255);
			$FontSize=10;
			$LeftOvers = $pdf->addTextWrap($Youbianline+769,$YPos-28,50,$FontSize,_('√'),'centre');
			$FontSize=6.3;
			
			$pdf->line($Youbianline+693, $YPos-23,$Youbianline+770, $YPos-23);//横线
			$pdf->SetLineStyle(array('color'=>array(255,0,0)));
			$pdf->line($Youbianline+693.5, $YPos+$line_height-2,$Youbianline+693.5, $Right_Margin);//贷款右边
			$pdf->line($Youbianline+691.5, $YPos+$line_height-2,$Youbianline+691.5, $Right_Margin);//贷款竖线右边双线边
			$pdf->line($Youbianline+681, $YPos+$line_height-2,$Youbianline+681, $Right_Margin);//贷款前竖线右边2
			$pdf->line($Youbianline+679, $YPos+$line_height-2,$Youbianline+679, $Right_Margin);//贷款前竖线右边双线2
			$pdf->SetLineStyle(array('color'=>array(0,0,255)));
			
	        $LeftOvers = $pdf->addTextWrap($Youbianline+691,$YPos-33,500,$FontSize,_('十亿千百十万千百十元角分'),'centre');
	        $FontSize=8;
			
				//以下是借方竖线
	        $Youbianline=$Right_Margin-196;

			$pdf->SetLineStyle(array('color'=>array(0,0,255)));
			$pdf->line($Youbianline+764.5, $YPos-2*$line_height,$Youbianline+764.5, $Right_Margin);//分前
			$pdf->SetLineStyle(array('color'=>array(255,0,0)));
			$pdf->setlineStyle(array('width'=>1.2));
			$pdf->line($Youbianline+758, $YPos-2*$line_height,$Youbianline+758, $Right_Margin);//角前,余额小数点处
			$pdf->setlineStyle(array('width'=>0.2));
			$pdf->SetLineStyle(array('color'=>array(0,0,255)));
			$pdf->line($Youbianline+751, $YPos-2*$line_height,$Youbianline+751, $Right_Margin);//元前
			$pdf->line($Youbianline+745.5, $YPos-2*$line_height,$Youbianline+745.5, $Right_Margin);//十元前
			$pdf->setlineStyle(array('width'=>1.2));
			$pdf->line($Youbianline+738.5, $YPos+-2*$line_height,$Youbianline+738.5, $Right_Margin);//百元前加粗
			$pdf->setlineStyle(array('width'=>0.2));
			$pdf->line($Youbianline+732, $YPos-2*$line_height,$Youbianline+732,$Right_Margin);//千元前
			$pdf->line($Youbianline+726, $YPos-2*$line_height,$Youbianline+726, $Right_Margin);//万元前
			$pdf->setlineStyle(array('width'=>1.2));
			$pdf->line($Youbianline+719.5, $YPos-2*$line_height,$Youbianline+719.5, $Right_Margin);//十万元前加粗
			$pdf->setlineStyle(array('width'=>0.2));
			$pdf->line($Youbianline+713, $YPos-2*$line_height,$Youbianline+713,$Right_Margin);//百万元前
			$pdf->line($Youbianline+707, $YPos-2*$line_height,$Youbianline+707, $Right_Margin);//千万元前
			$pdf->setlineStyle(array('width'=>1.2));
			$pdf->line($Youbianline+700.5, $YPos-2*$line_height,$Youbianline+700.5, $Right_Margin);//亿元前加粗
			$pdf->setlineStyle(array('width'=>0.2));
			$pdf->SetTextColor(0,0,255);
			$FontSize=10;
			$LeftOvers = $pdf->addTextWrap($Youbianline+771,$YPos-28,50,$FontSize,_('√'),'centre');
			$FontSize=8;
			$pdf->SetTextColor(0,0,0);
			$pdf->line($Youbianline+693, $YPos-23,$Youbianline+770, $YPos-23);//横线
			$pdf->SetLineStyle(array('color'=>array(255,0,0)));
			$pdf->line($Youbianline+693.5, $YPos+$line_height-2,$Youbianline+693.5, $Right_Margin);//贷款右边
			$pdf->line($Youbianline+691.5, $YPos+$line_height-2,$Youbianline+691.5, $Right_Margin);//贷款竖线右边双线边
			$pdf->line($Youbianline+681, $YPos+$line_height-2,$Youbianline+681, $Right_Margin);//贷款前竖线右边2
			$pdf->line($Youbianline+679, $YPos+$line_height-2,$Youbianline+679, $Right_Margin);//贷款前竖线右边双线2
			$pdf->SetLineStyle(array('color'=>array(255,0,0)));
			//摘要前
			$pdf->line($Youbianline+320, $YPos+$line_height-2,$Youbianline+320,$Right_Margin);
			$pdf->SetLineStyle(array('color'=>array(0,0,255)));
			$pdf->line($Youbianline+365, $YPos-2*$line_height,$Youbianline+365,$Right_Margin);
			$pdf->SetLineStyle(array('color'=>array(255,0,0)));
			$pdf->line($Youbianline+403, $YPos+$line_height-2,$Youbianline+403,$Right_Margin);
			$pdf->line($Youbianline+640, $YPos+$line_height-2,$Youbianline+640,$Right_Margin);
			$pdf->SetLineStyle(array('color'=>array(0,0,255)));
			$FontSize=6.3;
			$pdf->SetTextColor(0,0,255);
	        $LeftOvers = $pdf->addTextWrap($Youbianline+691,$YPos-33,500,$FontSize,_('十亿千百十万千百十元角分'),'centre');
	        $FontSize=8;
			$pdf->SetTextColor(0,0,0);
			
	/*set up the headings设置标题,账簿表头 */
	$XPos = $Left_Margin+1;
	$FontSize=10;

	$LeftOvers = $pdf->addTextWrap(158,$YPos-35,100,$FontSize,_('类      型'),'centre');
	$LeftOvers = $pdf->addTextWrap(207,$YPos-35,30,$FontSize,_('号数'),'centre');
	$LeftOvers = $pdf->addTextWrap(168,$YPos-15,300,$FontSize,_('凭            证'),'centre');
	$pdf->line(154, $YPos-23,237, $YPos-23);//横线
	
	$LeftOvers = $pdf->addTextWrap($XPos+10,$YPos-15,50,$FontSize,_('日    期'),'centre');
	$LeftOvers = $pdf->addTextWrap(540,$YPos-15,50,$FontSize,_('借 方 金 额'),'centre');
	$LeftOvers = $pdf->addTextWrap(630,$YPos-15,50,$FontSize,_('贷 方 金 额'),'centre');
	$LeftOvers = $pdf->addTextWrap(709,$YPos-3,50,$FontSize,_('借'),'centre');
	$LeftOvers = $pdf->addTextWrap(709,$YPos-18,50,$FontSize,_('或'),'centre');
	$LeftOvers = $pdf->addTextWrap(709,$YPos-33,50,$FontSize,_('贷'),'centre');
	$LeftOvers = $pdf->addTextWrap(740,$YPos-15,50,$FontSize,_('余       额'),'centre');
	
	$LeftOvers = $pdf->addTextWrap($Right_Margin+50,$YPos-3,50,$FontSize,_('财'),'centre');
	$LeftOvers = $pdf->addTextWrap($Right_Margin+50,$YPos-18,50,$FontSize,_('务'),'centre');
	$LeftOvers = $pdf->addTextWrap($Right_Margin+50,$YPos-33,50,$FontSize,_('主'),'centre');
	$LeftOvers = $pdf->addTextWrap($Right_Margin+50,$YPos-48,50,$FontSize,_('管'),'centre');
	
	$LeftOvers = $pdf->addTextWrap($Right_Margin+50,$YPos-188,50,$FontSize,_('复'),'centre');
	$LeftOvers = $pdf->addTextWrap($Right_Margin+50,$YPos-203,50,$FontSize,_('核'),'centre');
	
	$LeftOvers = $pdf->addTextWrap($Right_Margin+50,$YPos-343,50,$FontSize,_('记'),'centre');
	$LeftOvers = $pdf->addTextWrap($Right_Margin+50,$YPos-358,50,$FontSize,_('账'),'centre');

	$FontSize=10;

	$LeftOvers = $pdf->addTextWrap(300,$YPos-15,150,$FontSize,_('摘'),'centre');
	$LeftOvers = $pdf->addTextWrap(380,$YPos-15,150,$FontSize,_('要'),'centre');
	$LeftOvers = $pdf->addTextWrap(480,$YPos-15,80,$FontSize,_('Tag'),'centre');
    $pdf->SetTextColor(0,0,0);
	$YPos =$YPos - (2*$line_height);
}
?>