<?php

/* $Id: PDFBankingSummary.php 5228 2012-04-06 02:48:00Z vvs2012 $*/
if(isset($_POST['PDFReceipt'])){
	$_GET['BatchNumber']=$_POST['BatchNo'];
	$_GET['ReceiptNumber']=1;//$_POST['ReceiptNumber'];
	include('PDFReceipt.php');
	exit();
}
include('includes/CommonsCQZ.inc');
include ('includes/session.php');
include('includes/SQL_CommonFunctions.inc');
include('includes/Transby.php');

if (isset($_GET['BatchNo'])){
	$_POST['BatchNo'] = $_GET['BatchNo'];
}

if (!isset($_POST['BatchNo'])){
	$Title = _('Create PDF Print Out For A Batch Of Receipts');
	include ('includes/header.php');

	echo '<p class="page_title_text"><img src="'.$RootPath.'/css/'.$Theme.'/images/magnifier.png" title="' .
		 $Title . '" alt="" />' . ' ' . $Title . '</p>';
//查询银行交易记录
	$sql="SELECT DISTINCT
			transno,
			transdate
		FROM banktrans
		WHERE type=12
		ORDER BY transno DESC";
	$result=DB_query($sql);

	echo '<form method="post" action="' . htmlspecialchars($_SERVER['PHP_SELF'],ENT_QUOTES,'UTF-8') . '">';
    echo '<div>';
    echo '<input type="hidden" name="FormID" value="' . $_SESSION['FormID'] . '" />';
	echo '<table class="selection">';
	echo '<tr><td>' . _('Select the batch number of receipts to be printed') . ':</td>';
	echo '<td><select name="BatchNo">';
	while ($myrow=DB_fetch_array($result)) {
		echo '<option value="'.$myrow['transno'].'">'._('Batch') .' '. $myrow['transno'].' - '.ConvertSqlDate($myrow['transdate']).'</option>';
	}
	echo '</select></td>
			</tr>
			</table>';
	echo '<br />
			<div class="centre">
				<input type="submit" name="EnterBatchNo" value="' . _('打印内部凭证') . '" /><br/><br/>
				<input type="submit" name="PDFReceipt" value="' . _('打印客户收据') . '" />
			</div>
        </div>
		</form>';

	include ('includes/footer.php');
	exit;
}

//查询账户信息
if (isset($_POST['BatchNo']) and $_POST['BatchNo']!='') {
	$SQL= "SELECT bankaccountname,
				bankaccountnumber,
				ref,
				transdate,
				banktranstype,
				bankact,
				banktrans.exrate,
				banktrans.functionalexrate,
				banktrans.currcode,
				currencies.decimalplaces AS currdecimalplaces
			FROM bankaccounts INNER JOIN banktrans
			ON bankaccounts.accountcode=banktrans.bankact
			INNER JOIN currencies
			ON bankaccounts.currcode=currencies.currabrev
			WHERE banktrans.transno='" . $_POST['BatchNo'] . "'
			AND banktrans.type=12";

	$ErrMsg = _('An error occurred getting the header information about the receipt batch number') . ' ' . $_POST['BatchNo'];
	$DbgMsg = _('The SQL used to get the receipt header information that failed was');
	$Result=DB_query($SQL,$ErrMsg,$DbgMsg);

	if (DB_num_rows($Result) == 0){
		$Title = _('Create PDF Print-out For A Batch Of Receipts');
		include ('includes/header.php');
		prnMsg(_('The receipt batch number') . ' ' . $_POST['BatchNo'] . ' ' . _('was not found in the database') . '. ' . _('Please try again selecting a different batch number'), 'warn');
		include('includes/footer.php');
		exit;
	}
	/* OK get the row of receipt batch header info from the BankTrans table */
	$myrow = DB_fetch_array($Result);
	$ExRate = $myrow['exrate'];
	$FunctionalExRate = $myrow['functionalexrate'];
	$Currency = $myrow['currcode'];
	$BankTransType = $myrow['banktranstype'];
	$BankedDate =  $myrow['transdate'];
	$BankActName = $myrow['bankaccountname'];
	$BankActNumber = $myrow['bankaccountnumber'];
	$BankingReference = $myrow['ref'];
    $BankCurrDecimalPlaces = $myrow['currdecimalplaces'];
//查询客户信息
	$SQL = "SELECT debtorsmaster.name,
			ovamount,
			invtext,
			reference
		FROM debtorsmaster INNER JOIN debtortrans
		ON debtorsmaster.debtorno=debtortrans.debtorno
		WHERE debtortrans.transno='" . $_POST['BatchNo'] . "'
		AND debtortrans.type=12";

	$CustRecs=DB_query($SQL,'','',false,false);
	if (DB_error_no()!=0){
		$Title = _('Create PDF Print-out For A Batch Of Receipts');
		include ('includes/header.php');
	   	prnMsg(_('An error occurred getting the customer receipts for batch number') . ' ' . $_POST['BatchNo'],'error');
		if ($debug==1){
	        	prnMsg(_('The SQL used to get the customer receipt information that failed was') . '<br />' . $SQL,'error');
	  	}
		include('includes/footer.php');
	  	exit;
	}
	//查询凭证记录
	$SQL = "SELECT gltrans.account,
	        gltrans.narrative,
			gltrans.amount,
			chartmaster.accountname
		FROM gltrans INNER JOIN chartmaster
		ON gltrans.account = chartmaster.accountcode
		WHERE gltrans.typeno='" . $_POST['BatchNo'] . "'
		AND gltrans.type=12 and gltrans.amount <0
		AND gltrans.account !='" . $myrow['bankact'] . "'
		AND gltrans.account !='" . $_SESSION['CompanyRecord']['debtorsact'] . "'";

	$GLRecs=DB_query($SQL,'','',false,false);
	if (DB_error_no()!=0){
		$Title = _('Create PDF Print-out For A Batch Of Receipts');
		include ('includes/header.php');
		prnMsg(_('An error occurred getting the GL receipts for batch number') . ' ' . $_POST['BatchNo'],'error');
		if ($debug==1){
			prnMsg(_('The SQL used to get the GL receipt information that failed was') . ':<br />' . $SQL,'error');
		}
		include('includes/footer.php');
		exit;
	}

    $PaperSize='Bills';
	include('includes/PDFStarter.php');

	/*PDFStarter.php has all the variables for page size and width set up depending on the users default preferences for paper size */

	$pdf->addInfo('Title',_('Banking Summary'));
	$pdf->addInfo('Subject',_('Banking Summary Number') . ' ' . $_POST['BatchNo']);
	$line_height=12;
	$PageNumber = 0;
	$TotalBanked = 0;

	include ('includes/PDFBankingSummaryPageHeader.inc');
//判断当客户交易收据
	while ($myrow=DB_fetch_array($CustRecs)){

        $LeftOvers = $pdf->addTextWrap($Left_Margin+15,$YPos+90,450,$FontSize,_('交款方：').$myrow['name'], 'left');//客户名称
		$LeftOvers = $pdf->addTextWrap($Left_Margin+452,$YPos+55,80,$FontSize,locale_number_format(-$myrow['ovamount'],$BankCurrDecimalPlaces), 'right');
		//$LeftOvers = $pdf->addTextWrap($Left_Margin+65,$YPos,150,$FontSize,_('应收账款-').$myrow['name'], 'left');//客户名称用在抬头所以不要了
		$LeftOvers = $pdf->addTextWrap($Left_Margin+17,$YPos+55,430,$FontSize,$myrow['invtext'].' '.'属于'.':'.$myrow['reference'], 'lift');//摘要、柜台销售
		//$LeftOvers = $pdf->addTextWrap($Left_Margin+315,$YPos,100,$FontSize,$myrow['reference'], 'left');//格式需要和摘要合并

		$YPos -= ($line_height);
		$TotalBanked -= $myrow['ovamount'];

		if ($YPos - (2 *$line_height) < $Bottom_Margin){
			/*Then set up a new page */
			include ('includes/PDFBankingSummaryPageHeader.inc');
		} /*end of new page header  */
	} /* end of while there are customer receipts in the batch to print */
	
	/* Right now print out the GL receipt entries in the batch */
//判断当总账交易
	while ($myrow=DB_fetch_array($GLRecs)){
            $YPos+90;
	    //$LeftOvers = $pdf->addTextWrap($Left_Margin+15,$YPos+55,450,$FontSize,_('贷方：').$myrow['account'].$myrow['accountname'], 'left');//客户名称
		$LeftOvers = $pdf->addTextWrap($Left_Margin+452,$YPos+55,80,$FontSize,locale_number_format((-$myrow['amount']*$ExRate*$FunctionalExRate),$BankCurrDecimalPlaces), 'right');
        //$LeftOvers = $pdf->addTextWrap($Left_Margin+65,$YPos,300,$FontSize,$myrow['narrative'], 'left');//摘要格式需要所以搬后一栏
		$LeftOvers = $pdf->addTextWrap($Left_Margin+17,$YPos+55,430,$FontSize,_('贷方：').$myrow['account'].$myrow['accountname'].$myrow['narrative'], 'lift');//摘要
		$YPos -= ($line_height);
		$TotalBanked +=  (-$myrow['amount']*$ExRate);
		//$TotalBanked -= $myrow['ovamount'];

	
		if ($YPos - (2 *$line_height) < $Bottom_Margin){
			/*Then set up a new page */
			include ('includes/PDFBankingSummaryPageHeader.inc');
		} /*end of new page header  */
	} /* end of while there are GL receipts in the batch to print */

	$DisplayTotal2 = number_format($TotalBanked,2,".","");//大写金额去千分号
	$num=$DisplayTotal2;
	$YPos =45;
	$pdf->line($XPos, $YPos-$line_height+26,$Page_Width-$Right_Margin-30, $YPos-$line_height+26);
	$LeftOvers = $pdf->addTextWrap($Left_Margin+25,$YPos,300,$FontSize,_('TOTAL') . ' ' . _($Currency) . ' ' . _('大写').':', 'lift');//合计币种己收到
	$LeftOvers = $pdf->addTextWrap($Left_Margin+100,$YPos,345,$FontSize,ChangeToRMB($num), 'lift');//大写
	$LeftOvers = $pdf->addTextWrap($Left_Margin+402,$YPos,130,$FontSize,_('小写').'：'.'¥'.locale_number_format($TotalBanked,2), 'right');

	$pdf->OutputD($_SESSION['DatabaseName'] . '_BankingSummary_' . date('Y-m-d').'.pdf');
	$pdf->__destruct();
}

?>
