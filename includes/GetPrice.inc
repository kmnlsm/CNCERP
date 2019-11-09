<?php
function GetPrice ($StockID, $DebtorNo, $BranchCode, $OrderLineQty=1, $ReportZeroPrice=1){
	$Price = 0;

	/*Search by branch and customer for a date specified price按分支机构和客户搜索指定日期的价格 */
	$sql="SELECT prices.price
			FROM prices,
				debtorsmaster
			WHERE debtorsmaster.salestype=prices.typeabbrev
			AND debtorsmaster.debtorno='" . $DebtorNo . "'
			AND prices.stockid = '" . $StockID . "'
			AND prices.currabrev = debtorsmaster.currcode
			AND prices.debtorno=debtorsmaster.debtorno
			AND prices.branchcode='" . $BranchCode . "'
			AND prices.startdate <='" . Date('Y-m-d') . "'
			AND prices.enddate >='" . Date('Y-m-d') . "'";

	$ErrMsg =  _('There is a problem in retrieving the pricing information for part检索零件的定价信息时出现问题') . ' ' . $StockID  . ' ' . _('and for Customer') . ' ' . $DebtorNo .  ' ' . _('the error message returned by the SQL server was');
	$result = DB_query($sql,$ErrMsg);

	if (DB_num_rows($result)==0){
		/*Need to try same specific search but for a default price with a zero end date 需要尝试相同的特定搜索，但需要使用零结束日期的默认价格*/
		$sql="SELECT prices.price,
					prices.startdate
				FROM prices,
					debtorsmaster
				WHERE debtorsmaster.salestype=prices.typeabbrev
				AND debtorsmaster.debtorno='" . $DebtorNo . "'
				AND prices.stockid = '" . $StockID . "'
				AND prices.currabrev = debtorsmaster.currcode
				AND prices.debtorno=debtorsmaster.debtorno
				AND prices.branchcode='" . $BranchCode . "'
				AND prices.startdate <='" . Date('Y-m-d') . "'
				AND prices.enddate ='0000-00-00'
				ORDER BY prices.startdate DESC";

		$result = DB_query($sql,$ErrMsg);

		if (DB_num_rows($result)==0){

			/* No result returned for customer and branch search try for just a customer match 没有为客户和分支机构搜索返回结果只尝试客户匹配*/
			$sql = "SELECT prices.price
					FROM prices,
					debtorsmaster
					WHERE debtorsmaster.salestype=prices.typeabbrev
					AND debtorsmaster.debtorno='" . $DebtorNo . "'
					AND prices.stockid = '" . $StockID . "'
					AND prices.currabrev = debtorsmaster.currcode
					AND prices.debtorno=debtorsmaster.debtorno
					AND prices.branchcode=''
					AND prices.startdate <='" . Date('Y-m-d') . "'
					AND prices.enddate >='" . Date('Y-m-d') . "'";

			$result = DB_query($sql,$ErrMsg);
			if (DB_num_rows($result)==0){
				//if no specific price between the dates maybe there is a default price with no end date specified如果日期之间没有具体价格，则可能存在未指定结束日期的默认价格
				$sql = "SELECT prices.price,
							   prices.startdate
						FROM prices,
							debtorsmaster
						WHERE debtorsmaster.salestype=prices.typeabbrev
						AND debtorsmaster.debtorno='" . $DebtorNo . "'
						AND prices.stockid = '" . $StockID . "'
						AND prices.currabrev = debtorsmaster.currcode
						AND prices.debtorno=debtorsmaster.debtorno
						AND prices.branchcode=''
						AND prices.startdate <='" . Date('Y-m-d') . "'
						AND prices.enddate >='0000-00-00'
						ORDER BY prices.startdate DESC";

				$result = DB_query($sql,$ErrMsg);

				if (DB_num_rows($result)==0){

					/*没有特殊的客户特定价格使用客户的正常价格表，但寻找具有特定结束日期的特殊限时价格No special customer specific pricing use the customers normal price list but look for special limited time prices with specific end date*/
					$sql = "SELECT prices.price
							FROM prices,
							debtorsmaster
							WHERE debtorsmaster.salestype=prices.typeabbrev
							AND debtorsmaster.debtorno='" . $DebtorNo . "'
							AND prices.stockid = '" . $StockID . "'
							AND prices.debtorno=''
							AND prices.currabrev = debtorsmaster.currcode
							AND prices.startdate <='" . Date('Y-m-d') . "'
							AND prices.enddate >='" . Date('Y-m-d') . "'";

					$result = DB_query($sql,$ErrMsg);

					if (DB_num_rows($result)==0){
						/*没有特殊的客户特定价格使用客户正常价格列表，但寻找与EA结束日期的默认价格No special customer specific pricing use the customers normal price list but look for default price with 0000-00-00 end date*/
						$sql = "SELECT prices.price,
									   prices.startdate
								FROM prices,
									debtorsmaster
								WHERE debtorsmaster.salestype=prices.typeabbrev
								AND debtorsmaster.debtorno='" . $DebtorNo . "'
								AND prices.stockid = '" . $StockID . "'
								AND prices.debtorno=''
								AND prices.currabrev = debtorsmaster.currcode
								AND prices.startdate <='" . Date('Y-m-d') . "'
								AND prices.enddate ='0000-00-00'
								ORDER BY prices.startdate DESC";

						$result = DB_query($sql,$ErrMsg);

						if (DB_num_rows($result)==0){

							/*现在使用默认的salestype / price list cos所有其他方法都失败了 Now use the default salestype/price list cos all else has failed */
							$sql="SELECT prices.price
									FROM prices,
										debtorsmaster
									WHERE prices.stockid = '" . $StockID . "'
									AND prices.currabrev = debtorsmaster.currcode
									AND debtorsmaster.debtorno='" . $DebtorNo . "'
									AND prices.typeabbrev='" . $_SESSION['DefaultPriceList'] . "'
									AND prices.debtorno=''
									AND prices.startdate <='" . Date('Y-m-d') . "'
									AND prices.enddate >='" . Date('Y-m-d') . "'";;

							$result = DB_query($sql,$ErrMsg);

							if (DB_num_rows($result)==0){

								/* 现在使用默认的salestype / price list cos所有其他方法都失败了Now use the default salestype/price list cos all else has failed */
								$sql="SELECT prices.price,
											 prices.startdate
										FROM prices,
											debtorsmaster
										WHERE prices.stockid = '" . $StockID . "'
										AND prices.currabrev = debtorsmaster.currcode
										AND debtorsmaster.debtorno='" . $DebtorNo . "'
										AND prices.typeabbrev='" . $_SESSION['DefaultPriceList'] . "'
										AND prices.debtorno=''
										AND prices.startdate <='" . Date('Y-m-d') . "'
										AND prices.enddate ='0000-00-00'
										ORDER BY prices.startdate DESC";

								$result = DB_query($sql,$ErrMsg);

								if (DB_num_rows($result)==0){
									/* 现在检查价格矩阵Now check the price matrix */
									$sql = "SELECT max(pricematrix.price) FROM pricematrix,
															debtorsmaster
												WHERE pricematrix.stockid = '" . $StockID . "'
												AND pricematrix.currabrev = debtorsmaster.currcode
												AND pricematrix.salestype = debtorsmaster.salestype
												AND pricematrix.quantitybreak >= '" . $OrderLineQty . "'
												AND pricematrix.startdate <= '" . Date('Y-m-d') . "'
												AND pricematrix.enddate >='" . Date('Y-m-d') . "'";
									$ErrMsg = _('There is an error to retrieve price from price matrix for stock') . ' ' . $StockID . ' ' . _('and the error message returned by SQL server is ');
									$result = DB_query($sql,$ErrMsg);
									$MaxPriceRow = DB_fetch_row($result);
								}
								if ($MaxPriceRow[0]==NULL){
									/*甚至没有在默认价格表中设置价格，所以返回0Not even a price set up in the default price list so return 0 */
									if ($ReportZeroPrice ==1){
										prnMsg(_('There are no prices set up for') . ' ' . $StockID,'warn');
									}
									Return 0;
								}
							}
						}
					}
				}
			}
		}
	}

	if (DB_num_rows($result)!=0){
		/*以上其中一个的价格是这样的回报There is a price from one of the above so return that */
		$myrow=DB_fetch_row($result);


		Return $myrow[0];
	} else {
		Return 0;
	}

}
?>
