-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.3.8-MariaDB - mariadb.org binary distribution
-- 服务器OS:                        Win64
-- HeidiSQL 版本:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table cncerp.accountgroups
CREATE TABLE IF NOT EXISTS `accountgroups` (
  `groupname` char(30) NOT NULL DEFAULT '',
  `sectioninaccounts` int(11) NOT NULL DEFAULT 0,
  `pandl` tinyint(4) NOT NULL DEFAULT 1,
  `sequenceintb` smallint(6) NOT NULL DEFAULT 0,
  `parentgroupname` varchar(30) NOT NULL,
  PRIMARY KEY (`groupname`),
  KEY `SequenceInTB` (`sequenceintb`),
  KEY `sectioninaccounts` (`sectioninaccounts`),
  KEY `parentgroupname` (`parentgroupname`),
  CONSTRAINT `accountgroups_ibfk_1` FOREIGN KEY (`sectioninaccounts`) REFERENCES `accountsection` (`sectionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.accountgroups: ~63 rows (大约)
/*!40000 ALTER TABLE `accountgroups` DISABLE KEYS */;
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES
	('A销售费用', 2, 1, 520, ''),
	('Sales', 1, 1, 10, ''),
	('产品定额成本差异', 2, 1, 532, ''),
	('以前年度损益调整', 5, 1, 820, ''),
	('其他业务收入', 1, 1, 541, ''),
	('其他它流动负债', 30, 0, 150, ''),
	('其他应付款', 30, 0, 145, ''),
	('其他应收款', 20, 0, 45, ''),
	('其他流动资产', 20, 0, 55, ''),
	('其他非流动负债', 30, 0, 165, ''),
	('其他非流动资产', 20, 0, 115, ''),
	('制造费用', 2, 1, 805, ''),
	('固定资产减值准备', 20, 0, 80, ''),
	('固定资产原价', 20, 0, 70, ''),
	('固定资产清理', 20, 0, 90, ''),
	('在建工程', 20, 0, 83, ''),
	('存货', 20, 0, 50, ''),
	('存货盘点损益', 2, 1, 536, ''),
	('实收资本（或股本）', 50, 0, 170, ''),
	('工程物资', 20, 0, 85, ''),
	('工程结算', 2, 1, 810, ''),
	('应交税费', 30, 0, 134, ''),
	('应付利息', 30, 0, 135, ''),
	('应付利润', 30, 0, 140, ''),
	('应付票据', 30, 0, 125, ''),
	('应付职工薪酬', 30, 0, 133, ''),
	('应付账款', 30, 0, 130, ''),
	('应收利息', 20, 0, 40, ''),
	('应收票据', 20, 0, 20, ''),
	('应收股利', 20, 0, 35, ''),
	('应收账款', 20, 0, 25, ''),
	('开发支出', 20, 0, 105, ''),
	('所得税费用', 2, 1, 550, ''),
	('投资收益', 2, 1, 531, ''),
	('无形资产', 20, 0, 100, ''),
	('未分配利润', 50, 0, 185, ''),
	('本年利润', 50, 0, 184, ''),
	('生产性生物资产', 20, 0, 95, ''),
	('生产成本', 2, 1, 800, ''),
	('盈余公积', 50, 0, 180, ''),
	('短期借款', 30, 0, 120, ''),
	('短期投资', 20, 0, 15, ''),
	('管理费用', 2, 1, 525, ''),
	('累计折旧', 20, 0, 75, ''),
	('累计摊销', 20, 0, 101, ''),
	('营业外支出', 2, 1, 545, ''),
	('营业外收入', 1, 1, 540, ''),
	('营业成本', 2, 1, 505, ''),
	('营业收入', 1, 1, 500, ''),
	('营业税金及附加', 2, 1, 510, ''),
	('财务费用', 2, 1, 530, ''),
	('货币资金', 20, 0, 10, ''),
	('贸易费用', 2, 1, 527, ''),
	('资产减值损失', 2, 1, 537, ''),
	('资本公积', 50, 0, 175, ''),
	('销售费用', 2, 1, 515, ''),
	('长期侍摊费用', 20, 0, 110, ''),
	('长期借款', 30, 0, 155, ''),
	('长期债券投资', 20, 0, 60, ''),
	('长期应付款', 30, 0, 160, ''),
	('长期股权投资', 20, 0, 65, ''),
	('预付账款', 20, 0, 30, ''),
	('预收账款', 30, 0, 131, '');
/*!40000 ALTER TABLE `accountgroups` ENABLE KEYS */;

-- Dumping structure for table cncerp.accountsection
CREATE TABLE IF NOT EXISTS `accountsection` (
  `sectionid` int(11) NOT NULL DEFAULT 0,
  `sectionname` text NOT NULL,
  PRIMARY KEY (`sectionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.accountsection: ~6 rows (大约)
/*!40000 ALTER TABLE `accountsection` DISABLE KEYS */;
INSERT INTO `accountsection` (`sectionid`, `sectionname`) VALUES
	(1, '收入'),
	(2, '成本费用'),
	(5, '利润'),
	(20, '资产'),
	(30, '负债'),
	(50, '所有者权益');
/*!40000 ALTER TABLE `accountsection` ENABLE KEYS */;

-- Dumping structure for table cncerp.areas
CREATE TABLE IF NOT EXISTS `areas` (
  `areacode` char(3) NOT NULL,
  `areadescription` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`areacode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.areas: ~2 rows (大约)
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` (`areacode`, `areadescription`) VALUES
	('870', 'A地'),
	('871', 'B地');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;

-- Dumping structure for table cncerp.assetmanager
CREATE TABLE IF NOT EXISTS `assetmanager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `serialno` varchar(30) NOT NULL DEFAULT '',
  `location` varchar(15) NOT NULL DEFAULT '',
  `cost` double NOT NULL DEFAULT 0,
  `depn` double NOT NULL DEFAULT 0,
  `datepurchased` date NOT NULL DEFAULT '1000-01-01',
  `disposalvalue` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.assetmanager: ~0 rows (大约)
/*!40000 ALTER TABLE `assetmanager` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetmanager` ENABLE KEYS */;

-- Dumping structure for table cncerp.audittrail
CREATE TABLE IF NOT EXISTS `audittrail` (
  `transactiondate` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `userid` varchar(20) NOT NULL DEFAULT '',
  `querystring` text DEFAULT NULL,
  KEY `UserID` (`userid`),
  KEY `transactiondate` (`transactiondate`),
  KEY `transactiondate_2` (`transactiondate`),
  KEY `transactiondate_3` (`transactiondate`),
  CONSTRAINT `audittrail_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `www_users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.audittrail: ~0 rows (大约)
/*!40000 ALTER TABLE `audittrail` DISABLE KEYS */;
/*!40000 ALTER TABLE `audittrail` ENABLE KEYS */;

-- Dumping structure for table cncerp.bankaccounts
CREATE TABLE IF NOT EXISTS `bankaccounts` (
  `accountcode` varchar(20) NOT NULL DEFAULT '0',
  `currcode` char(3) NOT NULL,
  `invoice` smallint(2) NOT NULL DEFAULT 0,
  `bankaccountcode` varchar(50) NOT NULL DEFAULT '',
  `bankaccountname` char(50) NOT NULL DEFAULT '',
  `bankaccountnumber` char(50) NOT NULL DEFAULT '',
  `percentdiscount` double NOT NULL DEFAULT 0,
  `posactive` tinyint(4) NOT NULL DEFAULT 0,
  `bankaddress` char(50) DEFAULT NULL,
  `importformat` varchar(10) NOT NULL DEFAULT '''''',
  `paymentid` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`accountcode`),
  KEY `currcode` (`currcode`),
  KEY `BankAccountName` (`bankaccountname`),
  KEY `BankAccountNumber` (`bankaccountnumber`),
  CONSTRAINT `bankaccounts_ibfk_1` FOREIGN KEY (`accountcode`) REFERENCES `chartmaster` (`accountcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.bankaccounts: ~4 rows (大约)
/*!40000 ALTER TABLE `bankaccounts` DISABLE KEYS */;
INSERT INTO `bankaccounts` (`accountcode`, `currcode`, `invoice`, `bankaccountcode`, `bankaccountname`, `bankaccountnumber`, `percentdiscount`, `posactive`, `bankaddress`, `importformat`, `paymentid`) VALUES
	('100108', 'CNY', 1, '100108', '总公司现金账户', '000000', 0, 0, '总部出纳室', '', 0),
	('100109', 'CNY', 1, '100109', '分公司现金账户', '00000', 0, 0, '分公司保险柜', '', 0),
	('100201', 'CNY', 1, '100201', '中国农业银行XXXXXX支行基本户', '0001212121212121', 0, 0, '世纪大道', '', 0),
	('100202', 'CNY', 1, '100202', '中国农业银行XXXXXX支行专户', '111010101101010', 0, 0, '世纪大道', '', 0);
/*!40000 ALTER TABLE `bankaccounts` ENABLE KEYS */;

-- Dumping structure for table cncerp.bankaccountusers
CREATE TABLE IF NOT EXISTS `bankaccountusers` (
  `accountcode` varchar(20) NOT NULL COMMENT 'Bank account code',
  `userid` varchar(20) NOT NULL COMMENT 'User code',
  UNIQUE KEY `accountcode_userid` (`accountcode`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.bankaccountusers: ~0 rows (大约)
/*!40000 ALTER TABLE `bankaccountusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankaccountusers` ENABLE KEYS */;

-- Dumping structure for table cncerp.banktrans
CREATE TABLE IF NOT EXISTS `banktrans` (
  `banktransid` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT 0,
  `transno` bigint(20) NOT NULL DEFAULT 0,
  `bankact` varchar(20) NOT NULL DEFAULT '0',
  `ref` varchar(50) NOT NULL DEFAULT '',
  `amountcleared` double NOT NULL DEFAULT 0,
  `exrate` double NOT NULL DEFAULT 1 COMMENT 'From bank account currency to payment currency',
  `functionalexrate` double NOT NULL DEFAULT 1 COMMENT 'Account currency to functional currency',
  `transdate` date NOT NULL DEFAULT '1000-01-01',
  `banktranstype` varchar(30) NOT NULL DEFAULT '',
  `amount` double NOT NULL DEFAULT 0,
  `currcode` char(3) NOT NULL DEFAULT '',
  `chequeno` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`banktransid`),
  KEY `BankAct` (`bankact`,`ref`),
  KEY `TransDate` (`transdate`),
  KEY `TransType` (`banktranstype`),
  KEY `Type` (`type`,`transno`),
  KEY `CurrCode` (`currcode`),
  KEY `ref` (`ref`),
  CONSTRAINT `banktrans_ibfk_1` FOREIGN KEY (`type`) REFERENCES `systypes` (`typeid`),
  CONSTRAINT `banktrans_ibfk_2` FOREIGN KEY (`bankact`) REFERENCES `bankaccounts` (`accountcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.banktrans: ~0 rows (大约)
/*!40000 ALTER TABLE `banktrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `banktrans` ENABLE KEYS */;

-- Dumping structure for table cncerp.bom
CREATE TABLE IF NOT EXISTS `bom` (
  `parent` char(20) NOT NULL DEFAULT '',
  `sequence` int(11) NOT NULL DEFAULT 0,
  `component` char(20) NOT NULL DEFAULT '',
  `workcentreadded` char(5) NOT NULL DEFAULT '',
  `loccode` char(5) NOT NULL DEFAULT '',
  `effectiveafter` date NOT NULL DEFAULT '1000-01-01',
  `effectiveto` date NOT NULL DEFAULT '9999-12-31',
  `quantity` double NOT NULL DEFAULT 1,
  `autoissue` tinyint(4) NOT NULL DEFAULT 0,
  `remark` varchar(500) NOT NULL DEFAULT '',
  `digitals` int(11) NOT NULL DEFAULT 0,
  `isshow` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`parent`,`component`,`workcentreadded`,`loccode`),
  KEY `Component` (`component`),
  KEY `EffectiveAfter` (`effectiveafter`),
  KEY `EffectiveTo` (`effectiveto`),
  KEY `LocCode` (`loccode`),
  KEY `Parent` (`parent`,`effectiveafter`,`effectiveto`,`loccode`),
  KEY `Parent_2` (`parent`),
  KEY `WorkCentreAdded` (`workcentreadded`),
  CONSTRAINT `bom_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `bom_ibfk_2` FOREIGN KEY (`component`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `bom_ibfk_3` FOREIGN KEY (`workcentreadded`) REFERENCES `workcentres` (`code`),
  CONSTRAINT `bom_ibfk_4` FOREIGN KEY (`loccode`) REFERENCES `locations` (`loccode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.bom: ~0 rows (大约)
/*!40000 ALTER TABLE `bom` DISABLE KEYS */;
/*!40000 ALTER TABLE `bom` ENABLE KEYS */;

-- Dumping structure for table cncerp.chartdetails
CREATE TABLE IF NOT EXISTS `chartdetails` (
  `accountcode` varchar(20) NOT NULL DEFAULT '0',
  `period` smallint(6) NOT NULL DEFAULT 0,
  `budget` double NOT NULL DEFAULT 0,
  `actual` double NOT NULL DEFAULT 0,
  `bfwd` double NOT NULL DEFAULT 0,
  `bfwdbudget` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`accountcode`,`period`),
  KEY `Period` (`period`),
  CONSTRAINT `chartdetails_ibfk_1` FOREIGN KEY (`accountcode`) REFERENCES `chartmaster` (`accountcode`),
  CONSTRAINT `chartdetails_ibfk_2` FOREIGN KEY (`period`) REFERENCES `periods` (`periodno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- Dumping structure for table cncerp.chartmaster
CREATE TABLE IF NOT EXISTS `chartmaster` (
  `accountcode` varchar(20) NOT NULL DEFAULT '0',
  `accountname` char(50) NOT NULL DEFAULT '',
  `group_` char(30) NOT NULL DEFAULT '',
  `cashflowsactivity` tinyint(1) NOT NULL DEFAULT -1 COMMENT 'Cash flows activity',
  PRIMARY KEY (`accountcode`),
  KEY `AccountName` (`accountname`),
  KEY `Group_` (`group_`),
  CONSTRAINT `chartmaster_ibfk_1` FOREIGN KEY (`group_`) REFERENCES `accountgroups` (`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.chartmaster: ~148 rows (大约)
/*!40000 ALTER TABLE `chartmaster` DISABLE KEYS */;
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`, `cashflowsactivity`) VALUES
	('100108', '现金—总部库存现金', '货币资金', -1),
	('100109', '现金—昆明库存现金', '货币资金', -1),
	('100201', '银行存款—XXX农行基本户', '货币资金', -1),
	('100202', '银行存款—总部农行专户', '货币资金', -1),
	('100203', '银行存款—XXX农村信用社XX分社', '货币资金', -1),
	('100204', '银行存款—工商银行XXXX支行', '货币资金', -1),
	('100205', '银行存款—农行卡511009', '货币资金', -1),
	('1101', '短期投资', '短期投资', -1),
	('1121', '应收票据', '应收票据', -1),
	('1122', '应收账款', '应收账款', -1),
	('1123', '预付账款', '预付账款', -1),
	('112301', '预付账款—零散供应商', '预付账款', -1),
	('1131', '应收利润', '应收股利', -1),
	('1132', '应收利息', '应收利息', -1),
	('122104', '其他应收款—香港明好', '其他应收款', -1),
	('122111', '其他应收款—XXX办事处', '其他应收款', -1),
	('122135', '其他应收款—押金', '其他应收款', -1),
	('1403', '原材料', '存货', -1),
	('1405', '库存商品', '存货', -1),
	('1406', '在产品', '存货', -1),
	('1407', '虚拟物料', '存货', -1),
	('1408', '低值易耗品', '存货', -1),
	('141201', '待摊费用—房屋租金', '其他流动资产', -1),
	('1501', '长期债券投资', '长期债券投资', -1),
	('1511', '长期股权投资', '长期股权投资', -1),
	('1601', '固定资产', '固定资产原价', -1),
	('1602', '累计折旧', '累计折旧', -1),
	('1603', '固定资产减值准备', '固定资产减值准备', -1),
	('160401', '建筑工程', '在建工程', -1),
	('1605', '工程物资', '工程物资', -1),
	('1606', '固定资产清理', '固定资产清理', -1),
	('1701', '无形资产', '无形资产', -1),
	('1702', '累计摊销', '累计摊销', -1),
	('1801', '长期待摊费用', '长期侍摊费用', -1),
	('200101', '短期借款—工商银行', '短期借款', -1),
	('200102', '短期借款－农行总部支行', '短期借款', -1),
	('2201', '应付票据', '应付票据', -1),
	('2202', '应付账款', '应付账款', -1),
	('220201', '应付账款—暂估', '应付账款', -1),
	('220203', '应付账款X股东', '应付账款', -1),
	('220301', '预收账款—马老板', '预收账款', -1),
	('2211', '应付职工薪酬', '应付职工薪酬', -1),
	('2221', '应交税费', '应交税费', -1),
	('22211', '增值税-进项税', '应交税费', -1),
	('22212', '增值税-销项税', '应交税费', -1),
	('22213', '所得税', '货币资金', -1),
	('2231', '应付利息', '应付利息', -1),
	('2232', '应付利润', '应付利润', -1),
	('224105', '其他应付款—XXX', '其他应付款', -1),
	('224120', '其他应付款—XX汽车精修厂', '其他应付款', -1),
	('2501', '长期借款', '长期借款', -1),
	('2701', '长期应付款', '长期应付款', -1),
	('4001', '实收资本', '实收资本（或股本）', -1),
	('4002', '资本公积', '资本公积', -1),
	('4101', '盈余公积', '盈余公积', -1),
	('4103', '本年利润', '本年利润', -1),
	('4104', '利润分配', '未分配利润', -1),
	('500102', '生产成本—人工费', '生产成本', -1),
	('500103', '生产成本—制造费用', '生产成本', -1),
	('510101', '制造费用—物料消耗', '制造费用', -1),
	('510102', '制造费用—修理费', '制造费用', -1),
	('510103', '制造费用—固定资产折旧费', '制造费用', -1),
	('510104', '制造费用—办公费', '制造费用', -1),
	('510105', '制造费用—水电费', '制造费用', -1),
	('510106', '制造费用—停工损失', '制造费用', -1),
	('510107', '制造费用—福利费', '制造费用', -1),
	('5402', '工程结算', '工程结算', -1),
	('60010101', '主营业务收入－总部－产成品', '营业收入', -1),
	('60010102', '主营业务收入－总部－贸易', '营业收入', -1),
	('60010201', '主营业务收入－昆明－产成品', '营业收入', -1),
	('60010202', '主营业务收入－昆明－贸易', '营业收入', -1),
	('6111', '投资收益', '投资收益', -1),
	('6301', '营业外收入', '营业外收入', -1),
	('64010101', '主营业务成本－总部－产成品', '营业成本', -1),
	('64010102', '主营业务成本－总部－贸易', '营业成本', -1),
	('64010201', '主营业务成本－昆明－产成品', '营业成本', -1),
	('64010202', '主营业务成本－昆明－贸易', '营业成本', -1),
	('6402', '其他业务成本', '营业成本', -1),
	('640301', '营业税金及附加—城建税', '营业税金及附加', -1),
	('640302', '营业税金及附加—教育费附加', '营业税金及附加', -1),
	('640303', '营业税金及附加—印花税', '营业税金及附加', -1),
	('640304', '营业税金及附加—地方教育费附加', '营业税金及附加', -1),
	('650101', '其他业务收入—贸易', '其他业务收入', -1),
	('660201', '管理费用－工资', '管理费用', -1),
	('660202', '管理费用－固定资产折旧费', '管理费用', -1),
	('660203', '管理费用－办公费', '管理费用', -1),
	('660204', '管理费用－水电费', '管理费用', -1),
	('660205', '管理费用－差旅费', '管理费用', -1),
	('660206', '管理费用－招待费', '管理费用', -1),
	('660207', '管理费用－福利费', '管理费用', -1),
	('660208', '管理费用－车辆使用费', '管理费用', -1),
	('660209', '管理费用－税费', '管理费用', -1),
	('660210', '管理费用－送礼', '管理费用', -1),
	('660211', '管理费用—电话费', '管理费用', -1),
	('660212', '管理费用—会务费', '管理费用', -1),
	('660213', '管理费用－培训费', '管理费用', -1),
	('660214', '管理费用-维修费', '管理费用', -1),
	('660215', '管理费用-绿化费', '管理费用', -1),
	('660216', '管理费用－工作经费', '管理费用', -1),
	('660217', '管理费用－会费', '管理费用', -1),
	('660218', '管理费用－登记/年检费', '管理费用', -1),
	('660301', '财务费用－利息支出', '财务费用', -1),
	('660302', '财务费用－金融手续费', '财务费用', -1),
	('660303', '财务费用－利息收入', '财务费用', -1),
	('660304', '财务费用－汇兑损益', '财务费用', -1),
	('660401', '总部销售费用－工资', '鲁甸销售费用', -1),
	('660402', '总部销售费用－固定资产折旧费', '总部销售费用', -1),
	('660403', '总部销售费用－办公费', '总部销售费用', -1),
	('660404', '总部销售费用－水电费', '总部销售费用', -1),
	('660405', '总部销售费用－差旅费', '总部销售费用', -1),
	('660406', '总部销售费用－招待费', '总部销售费用', -1),
	('660407', '总部销售费用－广告宣传费', '总部销售费用', -1),
	('660408', '总部销售费用－邮寄费', '总部销售费用', -1),
	('660409', '总部销售费用－运费', '总部销售费用', -1),
	('660410', '总部销售费用－车辆使用费', '总部销售费用', -1),
	('660411', '总部销售费用－维修费', '总部销售费用', -1),
	('660412', '总部销售费用－电话费', '总部销售费用', -1),
	('660413', '总部销售费用－自然损耗', '总部销售费用', -1),
	('660415', '总部销售费用—促销费', '总部销售费用', -1),
	('660501', '昆明销售费用－工资', '昆明销售费用', -1),
	('660502', '昆明销售费用－邮寄费', '昆明销售费用', -1),
	('660503', '昆明销售费用－办公费', '昆明销售费用', -1),
	('660504', '总部销售费用－车辆使用费', '昆明销售费用', -1),
	('660505', '昆明销售费用－金融手续费', '昆明销售费用', -1),
	('660506', '昆明销售费用－福利费', '昆明销售费用', -1),
	('660507', '昆明销售费用－招待费', '昆明销售费用', -1),
	('660508', '昆明销售费用－固定资产折旧费', '昆明销售费用', -1),
	('660509', '昆明销售费用－水电费', '昆明销售费用', -1),
	('660510', '昆明销售费用－差旅费', '昆明销售费用', -1),
	('660511', '昆明销售费用－维修费', '昆明销售费用', -1),
	('660512', '昆明销售费用－电话费', '昆明销售费用', -1),
	('660513', '昆明销售费用－运费', '昆明销售费用', -1),
	('660514', '昆明销售费用－促销费', '昆明销售费用', -1),
	('660515', '昆明销售费用－广告宣传费', '昆明销售费用', -1),
	('660516', '昆明销售费用－自然损耗', '昆明销售费用', -1),
	('660601', '贸易费用—差旅费', '贸易费用', -1),
	('660602', '贸易费用—汽车费用', '贸易费用', -1),
	('660603', '贸易费用—招待费', '贸易费用', -1),
	('660604', '贸易费用—装卸运输费', '贸易费用', -1),
	('660605', '贸易费用—物料消耗', '贸易费用', -1),
	('660606', '贸易费用—临时工工资', '贸易费用', -1),
	('660607', '贸易费用—自然损耗', '贸易费用', -1),
	('6701', '存货盘点损益', '存货盘点损益', -1),
	('6702', '资产减值损失', '资产减值损失', -1),
	('6703', '产品定额成本差异', '产品定额成本差异', -1),
	('671101', '营业外支出－罚款', '营业外支出', -1),
	('6801', '所得税费用', '所得税费用', -1),
	('6901', '以前年度损益调整', '以前年度损益调整', -1);
/*!40000 ALTER TABLE `chartmaster` ENABLE KEYS */;

-- Dumping structure for table cncerp.cogsglpostings
CREATE TABLE IF NOT EXISTS `cogsglpostings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area` char(3) NOT NULL DEFAULT '',
  `stkcat` varchar(6) NOT NULL DEFAULT '',
  `glcode` varchar(20) NOT NULL DEFAULT '0',
  `salestype` char(2) NOT NULL DEFAULT 'AN',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Area_StkCat` (`area`,`stkcat`,`salestype`),
  KEY `Area` (`area`),
  KEY `StkCat` (`stkcat`),
  KEY `GLCode` (`glcode`),
  KEY `SalesType` (`salestype`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.cogsglpostings: ~2 rows (大约)
/*!40000 ALTER TABLE `cogsglpostings` DISABLE KEYS */;
INSERT INTO `cogsglpostings` (`id`, `area`, `stkcat`, `glcode`, `salestype`) VALUES
	(13, '871', 'ANY', '64010201', 'AN'),
	(14, '870', 'ANY', '64010101', 'AN');
/*!40000 ALTER TABLE `cogsglpostings` ENABLE KEYS */;

-- Dumping structure for table cncerp.companies
CREATE TABLE IF NOT EXISTS `companies` (
  `coycode` int(11) NOT NULL DEFAULT 1,
  `coyname` varchar(50) NOT NULL DEFAULT '',
  `gstno` varchar(20) NOT NULL DEFAULT '',
  `companynumber` varchar(20) NOT NULL DEFAULT '0',
  `regoffice1` varchar(40) NOT NULL DEFAULT '',
  `regoffice2` varchar(40) NOT NULL DEFAULT '',
  `regoffice3` varchar(40) NOT NULL DEFAULT '',
  `regoffice4` varchar(40) NOT NULL DEFAULT '',
  `regoffice5` varchar(20) NOT NULL DEFAULT '',
  `regoffice6` varchar(15) NOT NULL DEFAULT '',
  `telephone` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(55) NOT NULL DEFAULT '',
  `currencydefault` varchar(4) NOT NULL DEFAULT '',
  `debtorsact` varchar(20) NOT NULL DEFAULT '70000',
  `pytdiscountact` varchar(20) NOT NULL DEFAULT '55000',
  `creditorsact` varchar(20) NOT NULL DEFAULT '80000',
  `payrollact` varchar(20) NOT NULL DEFAULT '84000',
  `grnact` varchar(20) NOT NULL DEFAULT '72000',
  `exchangediffact` varchar(20) NOT NULL DEFAULT '65000',
  `purchasesexchangediffact` varchar(20) NOT NULL DEFAULT '0',
  `retainedearnings` varchar(20) NOT NULL DEFAULT '90000',
  `gllink_debtors` tinyint(1) DEFAULT 1,
  `gllink_creditors` tinyint(1) DEFAULT 1,
  `gllink_stock` tinyint(1) DEFAULT 1,
  `freightact` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`coycode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.companies: ~0 rows (大约)
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` (`coycode`, `coyname`, `gstno`, `companynumber`, `regoffice1`, `regoffice2`, `regoffice3`, `regoffice4`, `regoffice5`, `regoffice6`, `telephone`, `fax`, `email`, `currencydefault`, `debtorsact`, `pytdiscountact`, `creditorsact`, `payrollact`, `grnact`, `exchangediffact`, `purchasesexchangediffact`, `retainedearnings`, `gllink_debtors`, `gllink_creditors`, `gllink_stock`, `freightact`) VALUES
	(1, 'cncerp', '53060000000000-1', '53060000000000', '中国云南', 'CNCERP测试工作室', '－', '－', '－', '－', '+86 0870 0000000', '+86 0871 88888888', 'cncerp@163.com', 'CNY', '1122', '500102', '2202', '2211', '220201', '660304', '660304', '4103', 1, 1, 1, '500102');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;

-- Dumping structure for table cncerp.config
CREATE TABLE IF NOT EXISTS `config` (
  `confname` varchar(35) NOT NULL DEFAULT '',
  `confvalue` text NOT NULL,
  PRIMARY KEY (`confname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.config: ~133 rows (大约)
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`confname`, `confvalue`) VALUES
	('AllowOrderLineItemNarrative', '0'),
	('AllowSalesOfZeroCostItems', '0'),
	('AutoAuthorisePO', '1'),
	('AutoCreateWOs', '0'),
	('AutoDebtorNo', '0'),
	('AutoIssue', '1'),
	('AutoSupplierNo', '0'),
	('CheckCreditLimits', '1'),
	('Check_Price_Charged_vs_Order_Price', '1'),
	('Check_Qty_Charged_vs_Del_Qty', '1'),
	('CountryOfOperation', 'CN'),
	('CreditingControlledItems_MustExist', '0'),
	('DB_Maintenance', '30'),
	('DB_Maintenance_LastRun', '2019-11-08'),
	('DefaultBlindPackNote', '1'),
	('DefaultCreditLimit', '1000'),
	('DefaultCustomerType', '1'),
	('DefaultDateFormat', 'Y/m/d'),
	('DefaultDisplayRecordsMax', '50'),
	('DefaultFactoryLocation', ''),
	('DefaultPriceList', '01'),
	('DefaultSupplierType', '1'),
	('DefaultTaxCategory', '2'),
	('Default_Shipper', '1'),
	('DefineControlledOnWOEntry', '1'),
	('DispatchCutOffTime', '23'),
	('DoFreightCalc', '0'),
	('EDIHeaderMsgId', 'D:01B:UN:EAN010'),
	('EDIReference', 'CNCERP'),
	('EDI_Incoming_Orders', 'companies/cncerpdemo/EDI_Incoming_Orders'),
	('EDI_MsgPending', 'companies/cncerpdemo/EDI_MsgPending'),
	('EDI_MsgSent', 'companies/cncerpdemo/EDI_Sent'),
	('ExchangeRateFeed', 'Google'),
	('Extended_CustomerInfo', '1'),
	('Extended_SupplierInfo', '1'),
	('FactoryManagerEmail', 'admin@qq.com'),
	('FreightChargeAppliesIfLessThan', '1'),
	('FreightTaxCategory', '1'),
	('FrequentlyOrderedItems', '0'),
	('geocode_integration', '0'),
	('GoogleTranslatorAPIKey', ''),
	('HTTPS_Only', '0'),
	('InventoryManagerEmail', ''),
	('InvoicePortraitFormat', '1'),
	('InvoiceQuantityDefault', '1'),
	('ItemDescriptionLanguages', 'de_DE.utf8,fr_FR.utf8,it_IT.utf8,'),
	('LogPath', ''),
	('LogSeverity', '4'),
	('MaxImageSize', '300'),
	('MaxSerialItemsIssued', '50'),
	('MonthsAuditTrail', '6'),
	('NoPriceNoSales', '0'),
	('NumberOfMonthMustBeShown', '6'),
	('NumberOfPeriodsOfStockUsage', '12'),
	('OverChargeProportion', '100'),
	('OverReceiveProportion', '100'),
	('PackNoteFormat', '1'),
	('PageLength', '48'),
	('part_pics_dir', 'companies/cncerpdemo/EDI_Incoming_Orders'),
	('PastDueDays1', '30'),
	('PastDueDays2', '60'),
	('PO_AllowSameItemMultipleTimes', '1'),
	('ProhibitJournalsToControlAccounts', '1'),
	('ProhibitNegativeStock', '0'),
	('ProhibitPostingsBefore', '1900-01-01'),
	('PurchasingManagerEmail', 'admin@qq.com'),
	('QualityCOAText', ''),
	('QualityLogSamples', '0'),
	('QualityProdSpecText', ''),
	('QuickEntries', '10'),
	('RadioBeaconFileCounter', '/home/RadioBeacon/FileCounter'),
	('RadioBeaconFTP_user_name', 'RadioBeacon ftp server user name'),
	('RadioBeaconHomeDir', '/home/RadioBeacon'),
	('RadioBeaconStockLocation', 'BL'),
	('RadioBraconFTP_server', '192.168.2.2'),
	('RadioBreaconFilePrefix', 'ORDXX'),
	('RadionBeaconFTP_user_pass', 'Radio Beacon remote ftp server password'),
	('reports_dir', 'companies/cncerpdemo/EDI_Incoming_Orders'),
	('RequirePickingNote', '0'),
	('RomalpaClause', '申明：本公司在无法收取货款时保留取回货物的权利'),
	('ShopAboutUs', ''),
	('ShopAllowBankTransfer', '1'),
	('ShopAllowCreditCards', '1'),
	('ShopAllowPayPal', '1'),
	('ShopAllowSurcharges', '1'),
	('ShopBankTransferSurcharge', '0.0'),
	('ShopBranchCode', 'ANGRY'),
	('ShopContactUs', 'For'),
	('ShopCreditCardBankAccount', '1030'),
	('ShopCreditCardGateway', 'SwipeHQ'),
	('ShopCreditCardSurcharge', '2.5'),
	('ShopDebtorNo', 'ANGRY'),
	('ShopFreightMethod', 'NoFreight'),
	('ShopFreightPolicy', 'Shipping information'),
	('ShopManagerEmail', 'shopmanager@yourdomain.com'),
	('ShopMode', 'test'),
	('ShopName', 'CNCERP Demo Store'),
	('ShopPayFlowMerchant', ''),
	('ShopPayFlowPassword', ''),
	('ShopPayFlowUser', ''),
	('ShopPayFlowVendor', ''),
	('ShopPayPalBankAccount', '1040'),
	('ShopPaypalCommissionAccount', '7220'),
	('ShopPayPalPassword', ''),
	('ShopPayPalProPassword', ''),
	('ShopPayPalProSignature', ''),
	('ShopPayPalProUser', ''),
	('ShopPayPalSignature', ''),
	('ShopPayPalSurcharge', '3.4'),
	('ShopPayPalUser', ''),
	('ShopPrivacyStatement', ''),
	('ShopShowOnlyAvailableItems', '0'),
	('ShopShowQOHColumn', '1'),
	('ShopStockLocations', 'MEL,TOR'),
	('ShopSurchargeStockID', 'PAYTSURCHARGE'),
	('ShopSwipeHQAPIKey', ''),
	('ShopSwipeHQMerchantID', ''),
	('ShopTermsConditions', ''),
	('ShopTitle', 'Shop Home'),
	('ShowStockidOnImages', '0'),
	('ShowValueOnGRN', '1'),
	('Show_Settled_LastMonth', '1'),
	('SmtpSetting', '0'),
	('SO_AllowSameItemMultipleTimes', '1'),
	('StandardCostDecimalPlaces', '2'),
	('TaxAuthorityReferenceName', 'XXX国家税务局'),
	('UpdateCurrencyRatesDaily', '0'),
	('VersionNumber', '4.15'),
	('WeightedAverageCosting', '1'),
	('WikiApp', '不启用'),
	('WikiPath', 'wiki'),
	('WorkingDaysWeek', '7'),
	('YearEnd', '12');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

-- Dumping structure for table cncerp.contractbom
CREATE TABLE IF NOT EXISTS `contractbom` (
  `contractref` varchar(20) NOT NULL DEFAULT '0',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `workcentreadded` char(5) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT 1,
  PRIMARY KEY (`contractref`,`stockid`,`workcentreadded`),
  KEY `Stockid` (`stockid`),
  KEY `ContractRef` (`contractref`),
  KEY `WorkCentreAdded` (`workcentreadded`),
  CONSTRAINT `contractbom_ibfk_1` FOREIGN KEY (`workcentreadded`) REFERENCES `workcentres` (`code`),
  CONSTRAINT `contractbom_ibfk_3` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.contractbom: ~0 rows (大约)
/*!40000 ALTER TABLE `contractbom` DISABLE KEYS */;
/*!40000 ALTER TABLE `contractbom` ENABLE KEYS */;

-- Dumping structure for table cncerp.contractcharges
CREATE TABLE IF NOT EXISTS `contractcharges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractref` varchar(20) NOT NULL,
  `transtype` smallint(6) NOT NULL DEFAULT 20,
  `transno` int(11) NOT NULL DEFAULT 0,
  `amount` double NOT NULL DEFAULT 0,
  `narrative` text NOT NULL,
  `anticipated` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `contractref` (`contractref`,`transtype`,`transno`),
  KEY `contractcharges_ibfk_2` (`transtype`),
  CONSTRAINT `contractcharges_ibfk_1` FOREIGN KEY (`contractref`) REFERENCES `contracts` (`contractref`),
  CONSTRAINT `contractcharges_ibfk_2` FOREIGN KEY (`transtype`) REFERENCES `systypes` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.contractcharges: ~0 rows (大约)
/*!40000 ALTER TABLE `contractcharges` DISABLE KEYS */;
/*!40000 ALTER TABLE `contractcharges` ENABLE KEYS */;

-- Dumping structure for table cncerp.contractreqts
CREATE TABLE IF NOT EXISTS `contractreqts` (
  `contractreqid` int(11) NOT NULL AUTO_INCREMENT,
  `contractref` varchar(20) NOT NULL DEFAULT '0',
  `requirement` varchar(40) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT 1,
  `costperunit` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`contractreqid`),
  KEY `ContractRef` (`contractref`),
  CONSTRAINT `contractreqts_ibfk_1` FOREIGN KEY (`contractref`) REFERENCES `contracts` (`contractref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.contractreqts: ~0 rows (大约)
/*!40000 ALTER TABLE `contractreqts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contractreqts` ENABLE KEYS */;

-- Dumping structure for table cncerp.contracts
CREATE TABLE IF NOT EXISTS `contracts` (
  `contractref` varchar(20) NOT NULL DEFAULT '',
  `contractdescription` text NOT NULL,
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `categoryid` varchar(6) NOT NULL DEFAULT '',
  `orderno` int(11) NOT NULL DEFAULT 0,
  `customerref` varchar(20) NOT NULL DEFAULT '',
  `margin` double NOT NULL DEFAULT 1,
  `wo` int(11) NOT NULL DEFAULT 0,
  `requireddate` date NOT NULL DEFAULT '1000-01-01',
  `drawing` varchar(50) NOT NULL DEFAULT '',
  `exrate` double NOT NULL DEFAULT 1,
  PRIMARY KEY (`contractref`),
  KEY `OrderNo` (`orderno`),
  KEY `CategoryID` (`categoryid`),
  KEY `Status` (`status`),
  KEY `WO` (`wo`),
  KEY `loccode` (`loccode`),
  KEY `DebtorNo` (`debtorno`,`branchcode`),
  CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`debtorno`, `branchcode`) REFERENCES `custbranch` (`debtorno`, `branchcode`),
  CONSTRAINT `contracts_ibfk_2` FOREIGN KEY (`categoryid`) REFERENCES `stockcategory` (`categoryid`),
  CONSTRAINT `contracts_ibfk_3` FOREIGN KEY (`loccode`) REFERENCES `locations` (`loccode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.contracts: ~0 rows (大约)
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;

-- Dumping structure for table cncerp.currencies
CREATE TABLE IF NOT EXISTS `currencies` (
  `currency` char(20) NOT NULL DEFAULT '',
  `currabrev` char(3) NOT NULL DEFAULT '',
  `country` char(50) NOT NULL DEFAULT '',
  `hundredsname` char(15) NOT NULL DEFAULT 'Cents',
  `decimalplaces` tinyint(3) NOT NULL DEFAULT 2,
  `rate` double NOT NULL DEFAULT 1,
  `webcart` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'If 1 shown in weberp cart. if 0 no show',
  PRIMARY KEY (`currabrev`),
  KEY `Country` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.currencies: ~6 rows (大约)
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` (`currency`, `currabrev`, `country`, `hundredsname`, `decimalplaces`, `rate`, `webcart`) VALUES
	('Australian Dollars', 'AUD', 'Australia', 'cents', 2, 1, 1),
	('Swiss Francs', 'CHF', 'Swizerland', 'centimes', 2, 1, 1),
	('Chinese yuan', 'CNY', '人民币', '分', 2, 1, 1),
	('Euro', 'EUR', 'Euroland', 'cents', 2, 0.44, 1),
	('Pounds', 'GBP', 'England', 'Pence', 2, 0.8, 1),
	('US Dollars', 'USD', 'United States', 'Cents', 2, 0.85, 1);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;

-- Dumping structure for table cncerp.custallocns
CREATE TABLE IF NOT EXISTS `custallocns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amt` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `datealloc` date NOT NULL DEFAULT '1000-01-01',
  `transid_allocfrom` int(11) NOT NULL DEFAULT 0,
  `transid_allocto` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `DateAlloc` (`datealloc`),
  KEY `TransID_AllocFrom` (`transid_allocfrom`),
  KEY `TransID_AllocTo` (`transid_allocto`),
  CONSTRAINT `custallocns_ibfk_1` FOREIGN KEY (`transid_allocfrom`) REFERENCES `debtortrans` (`id`),
  CONSTRAINT `custallocns_ibfk_2` FOREIGN KEY (`transid_allocto`) REFERENCES `debtortrans` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.custallocns: ~0 rows (大约)
/*!40000 ALTER TABLE `custallocns` DISABLE KEYS */;
/*!40000 ALTER TABLE `custallocns` ENABLE KEYS */;

-- Dumping structure for table cncerp.custbranch
CREATE TABLE IF NOT EXISTS `custbranch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `brname` varchar(40) NOT NULL DEFAULT '',
  `braddress1` varchar(40) NOT NULL DEFAULT '',
  `braddress2` varchar(40) NOT NULL DEFAULT '',
  `braddress3` varchar(40) NOT NULL DEFAULT '',
  `braddress4` varchar(50) NOT NULL DEFAULT '',
  `braddress5` varchar(20) NOT NULL DEFAULT '',
  `braddress6` varchar(40) NOT NULL DEFAULT '',
  `lat` float(12,8) NOT NULL DEFAULT 0.00000000,
  `lng` float(12,8) NOT NULL DEFAULT 0.00000000,
  `estdeliverydays` smallint(6) NOT NULL DEFAULT 1,
  `area` char(3) NOT NULL,
  `salesman` varchar(4) NOT NULL DEFAULT '',
  `fwddate` smallint(6) NOT NULL DEFAULT 0,
  `phoneno` varchar(20) NOT NULL DEFAULT '',
  `faxno` varchar(20) NOT NULL DEFAULT '',
  `contactname` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(55) NOT NULL DEFAULT '',
  `defaultlocation` varchar(5) NOT NULL DEFAULT '',
  `taxgroupid` tinyint(4) NOT NULL DEFAULT 1,
  `defaultshipvia` int(11) NOT NULL DEFAULT 1,
  `deliverblind` tinyint(1) DEFAULT 1,
  `disabletrans` tinyint(4) NOT NULL DEFAULT 0,
  `brpostaddr1` varchar(40) NOT NULL DEFAULT '',
  `brpostaddr2` varchar(40) NOT NULL DEFAULT '',
  `brpostaddr3` varchar(40) NOT NULL DEFAULT '',
  `brpostaddr4` varchar(50) NOT NULL DEFAULT '',
  `brpostaddr5` varchar(20) NOT NULL DEFAULT '',
  `brpostaddr6` varchar(40) NOT NULL DEFAULT '',
  `specialinstructions` text NOT NULL,
  `custbranchcode` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`branchcode`,`debtorno`),
  UNIQUE KEY `id` (`id`),
  KEY `BrName` (`brname`),
  KEY `DebtorNo` (`debtorno`),
  KEY `Salesman` (`salesman`),
  KEY `Area` (`area`),
  KEY `DefaultLocation` (`defaultlocation`),
  KEY `DefaultShipVia` (`defaultshipvia`),
  KEY `taxgroupid` (`taxgroupid`),
  CONSTRAINT `custbranch_ibfk_1` FOREIGN KEY (`debtorno`) REFERENCES `debtorsmaster` (`debtorno`),
  CONSTRAINT `custbranch_ibfk_2` FOREIGN KEY (`area`) REFERENCES `areas` (`areacode`),
  CONSTRAINT `custbranch_ibfk_3` FOREIGN KEY (`salesman`) REFERENCES `salesman` (`salesmancode`),
  CONSTRAINT `custbranch_ibfk_4` FOREIGN KEY (`defaultlocation`) REFERENCES `locations` (`loccode`),
  CONSTRAINT `custbranch_ibfk_6` FOREIGN KEY (`defaultshipvia`) REFERENCES `shippers` (`shipper_id`),
  CONSTRAINT `custbranch_ibfk_7` FOREIGN KEY (`taxgroupid`) REFERENCES `taxgroups` (`taxgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.custbranch: ~0 rows (大约)
/*!40000 ALTER TABLE `custbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `custbranch` ENABLE KEYS */;

-- Dumping structure for table cncerp.custcontacts
CREATE TABLE IF NOT EXISTS `custcontacts` (
  `contid` int(11) NOT NULL AUTO_INCREMENT,
  `debtorno` varchar(10) NOT NULL,
  `contactname` varchar(40) NOT NULL,
  `role` varchar(40) NOT NULL,
  `phoneno` varchar(20) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `statement` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`contid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.custcontacts: ~0 rows (大约)
/*!40000 ALTER TABLE `custcontacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `custcontacts` ENABLE KEYS */;

-- Dumping structure for table cncerp.custitem
CREATE TABLE IF NOT EXISTS `custitem` (
  `debtorno` char(10) NOT NULL DEFAULT '',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `cust_part` varchar(20) NOT NULL DEFAULT '',
  `cust_description` varchar(30) NOT NULL DEFAULT '',
  `customersuom` char(50) NOT NULL DEFAULT '',
  `conversionfactor` double NOT NULL DEFAULT 1,
  PRIMARY KEY (`debtorno`,`stockid`),
  KEY `StockID` (`stockid`),
  KEY `Debtorno` (`debtorno`),
  CONSTRAINT ` custitem _ibfk_1` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT ` custitem _ibfk_2` FOREIGN KEY (`debtorno`) REFERENCES `debtorsmaster` (`debtorno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.custitem: ~0 rows (大约)
/*!40000 ALTER TABLE `custitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `custitem` ENABLE KEYS */;

-- Dumping structure for table cncerp.custnotes
CREATE TABLE IF NOT EXISTS `custnotes` (
  `noteid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `debtorno` varchar(10) NOT NULL DEFAULT '0',
  `href` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `date` date NOT NULL DEFAULT '1000-01-01',
  `priority` varchar(20) NOT NULL,
  PRIMARY KEY (`noteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.custnotes: ~0 rows (大约)
/*!40000 ALTER TABLE `custnotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `custnotes` ENABLE KEYS */;

-- Dumping structure for table cncerp.debtorsmaster
CREATE TABLE IF NOT EXISTS `debtorsmaster` (
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `address1` varchar(40) NOT NULL DEFAULT '',
  `address2` varchar(40) NOT NULL DEFAULT '',
  `address3` varchar(40) NOT NULL DEFAULT '',
  `address4` varchar(50) NOT NULL DEFAULT '',
  `address5` varchar(20) NOT NULL DEFAULT '',
  `address6` varchar(40) NOT NULL DEFAULT '',
  `currcode` char(3) NOT NULL DEFAULT '',
  `salestype` char(2) NOT NULL DEFAULT '',
  `clientsince` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `holdreason` smallint(6) NOT NULL DEFAULT 0,
  `paymentterms` char(2) NOT NULL DEFAULT 'f',
  `discount` double NOT NULL DEFAULT 0,
  `pymtdiscount` double NOT NULL DEFAULT 0,
  `lastpaid` double NOT NULL DEFAULT 0,
  `lastpaiddate` datetime DEFAULT NULL,
  `creditlimit` double NOT NULL DEFAULT 1000,
  `invaddrbranch` tinyint(4) NOT NULL DEFAULT 0,
  `discountcode` char(2) NOT NULL DEFAULT '',
  `ediinvoices` tinyint(4) NOT NULL DEFAULT 0,
  `ediorders` tinyint(4) NOT NULL DEFAULT 0,
  `edireference` varchar(20) NOT NULL DEFAULT '',
  `editransport` varchar(5) NOT NULL DEFAULT 'email',
  `ediaddress` varchar(50) NOT NULL DEFAULT '',
  `ediserveruser` varchar(20) NOT NULL DEFAULT '',
  `ediserverpwd` varchar(20) NOT NULL DEFAULT '',
  `taxref` varchar(20) NOT NULL DEFAULT '',
  `customerpoline` tinyint(1) NOT NULL DEFAULT 0,
  `typeid` tinyint(4) NOT NULL DEFAULT 1,
  `language_id` varchar(10) NOT NULL DEFAULT 'en_GB.utf8',
  PRIMARY KEY (`debtorno`),
  KEY `Currency` (`currcode`),
  KEY `HoldReason` (`holdreason`),
  KEY `Name` (`name`),
  KEY `PaymentTerms` (`paymentterms`),
  KEY `SalesType` (`salestype`),
  KEY `EDIInvoices` (`ediinvoices`),
  KEY `EDIOrders` (`ediorders`),
  KEY `debtorsmaster_ibfk_5` (`typeid`),
  CONSTRAINT `debtorsmaster_ibfk_1` FOREIGN KEY (`holdreason`) REFERENCES `holdreasons` (`reasoncode`),
  CONSTRAINT `debtorsmaster_ibfk_2` FOREIGN KEY (`currcode`) REFERENCES `currencies` (`currabrev`),
  CONSTRAINT `debtorsmaster_ibfk_3` FOREIGN KEY (`paymentterms`) REFERENCES `paymentterms` (`termsindicator`),
  CONSTRAINT `debtorsmaster_ibfk_4` FOREIGN KEY (`salestype`) REFERENCES `salestypes` (`typeabbrev`),
  CONSTRAINT `debtorsmaster_ibfk_5` FOREIGN KEY (`typeid`) REFERENCES `debtortype` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.debtorsmaster: ~0 rows (大约)
/*!40000 ALTER TABLE `debtorsmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `debtorsmaster` ENABLE KEYS */;

-- Dumping structure for table cncerp.debtortrans
CREATE TABLE IF NOT EXISTS `debtortrans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transno` int(11) NOT NULL DEFAULT 0,
  `type` smallint(6) NOT NULL DEFAULT 0,
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `trandate` date NOT NULL DEFAULT '1000-01-01',
  `inputdate` datetime NOT NULL,
  `prd` smallint(6) NOT NULL DEFAULT 0,
  `settled` tinyint(4) NOT NULL DEFAULT 0,
  `reference` varchar(200) NOT NULL DEFAULT '',
  `tpe` char(2) NOT NULL DEFAULT '',
  `order_` int(11) NOT NULL DEFAULT 0,
  `rate` double NOT NULL DEFAULT 0,
  `ovamount` double NOT NULL DEFAULT 0,
  `ovgst` double NOT NULL DEFAULT 0,
  `ovfreight` double NOT NULL DEFAULT 0,
  `ovdiscount` double NOT NULL DEFAULT 0,
  `diffonexch` double NOT NULL DEFAULT 0,
  `alloc` double NOT NULL DEFAULT 0,
  `invtext` text DEFAULT NULL,
  `shipvia` int(11) NOT NULL DEFAULT 0,
  `edisent` tinyint(4) NOT NULL DEFAULT 0,
  `consignment` varchar(20) NOT NULL DEFAULT '',
  `packages` int(11) NOT NULL DEFAULT 1 COMMENT 'number of cartons',
  `salesperson` varchar(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `DebtorNo` (`debtorno`,`branchcode`),
  KEY `Order_` (`order_`),
  KEY `Prd` (`prd`),
  KEY `Tpe` (`tpe`),
  KEY `Type` (`type`),
  KEY `Settled` (`settled`),
  KEY `TranDate` (`trandate`),
  KEY `TransNo` (`transno`),
  KEY `Type_2` (`type`,`transno`),
  KEY `EDISent` (`edisent`),
  KEY `salesperson` (`salesperson`),
  CONSTRAINT `debtortrans_ibfk_2` FOREIGN KEY (`type`) REFERENCES `systypes` (`typeid`),
  CONSTRAINT `debtortrans_ibfk_3` FOREIGN KEY (`prd`) REFERENCES `periods` (`periodno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.debtortrans: ~0 rows (大约)
/*!40000 ALTER TABLE `debtortrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `debtortrans` ENABLE KEYS */;

-- Dumping structure for table cncerp.debtortranstaxes
CREATE TABLE IF NOT EXISTS `debtortranstaxes` (
  `debtortransid` int(11) NOT NULL DEFAULT 0,
  `taxauthid` tinyint(4) NOT NULL DEFAULT 0,
  `taxamount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`debtortransid`,`taxauthid`),
  KEY `taxauthid` (`taxauthid`),
  CONSTRAINT `debtortranstaxes_ibfk_1` FOREIGN KEY (`taxauthid`) REFERENCES `taxauthorities` (`taxid`),
  CONSTRAINT `debtortranstaxes_ibfk_2` FOREIGN KEY (`debtortransid`) REFERENCES `debtortrans` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.debtortranstaxes: ~0 rows (大约)
/*!40000 ALTER TABLE `debtortranstaxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `debtortranstaxes` ENABLE KEYS */;

-- Dumping structure for table cncerp.debtortype
CREATE TABLE IF NOT EXISTS `debtortype` (
  `typeid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `typename` varchar(100) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.debtortype: ~6 rows (大约)
/*!40000 ALTER TABLE `debtortype` DISABLE KEYS */;
INSERT INTO `debtortype` (`typeid`, `typename`) VALUES
	(1, '零售'),
	(2, '批发'),
	(3, '联营'),
	(4, '内销'),
	(5, '香港批发'),
	(6, '商超返点客户');
/*!40000 ALTER TABLE `debtortype` ENABLE KEYS */;

-- Dumping structure for table cncerp.debtortypenotes
CREATE TABLE IF NOT EXISTS `debtortypenotes` (
  `noteid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `typeid` tinyint(4) NOT NULL DEFAULT 0,
  `href` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL,
  `date` date NOT NULL DEFAULT '1000-01-01',
  `priority` varchar(20) NOT NULL,
  PRIMARY KEY (`noteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.debtortypenotes: ~0 rows (大约)
/*!40000 ALTER TABLE `debtortypenotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `debtortypenotes` ENABLE KEYS */;

-- Dumping structure for table cncerp.deliverynotes
CREATE TABLE IF NOT EXISTS `deliverynotes` (
  `deliverynotenumber` int(11) NOT NULL,
  `deliverynotelineno` tinyint(4) NOT NULL,
  `salesorderno` int(11) NOT NULL,
  `salesorderlineno` int(11) NOT NULL,
  `qtydelivered` double NOT NULL DEFAULT 0,
  `printed` tinyint(4) NOT NULL DEFAULT 0,
  `invoiced` tinyint(4) NOT NULL DEFAULT 0,
  `deliverydate` date NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (`deliverynotenumber`,`deliverynotelineno`),
  KEY `deliverynotes_ibfk_2` (`salesorderno`,`salesorderlineno`),
  CONSTRAINT `deliverynotes_ibfk_1` FOREIGN KEY (`salesorderno`) REFERENCES `salesorders` (`orderno`),
  CONSTRAINT `deliverynotes_ibfk_2` FOREIGN KEY (`salesorderno`, `salesorderlineno`) REFERENCES `salesorderdetails` (`orderno`, `orderlineno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.deliverynotes: ~0 rows (大约)
/*!40000 ALTER TABLE `deliverynotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliverynotes` ENABLE KEYS */;

-- Dumping structure for table cncerp.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `departmentid` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL DEFAULT '',
  `authoriser` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`departmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.departments: ~0 rows (大约)
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Dumping structure for table cncerp.discountmatrix
CREATE TABLE IF NOT EXISTS `discountmatrix` (
  `salestype` char(2) NOT NULL DEFAULT '',
  `discountcategory` char(2) NOT NULL DEFAULT '',
  `quantitybreak` int(11) NOT NULL DEFAULT 1,
  `discountrate` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`salestype`,`discountcategory`,`quantitybreak`),
  KEY `QuantityBreak` (`quantitybreak`),
  KEY `DiscountCategory` (`discountcategory`),
  KEY `SalesType` (`salestype`),
  CONSTRAINT `discountmatrix_ibfk_1` FOREIGN KEY (`salestype`) REFERENCES `salestypes` (`typeabbrev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.discountmatrix: ~0 rows (大约)
/*!40000 ALTER TABLE `discountmatrix` DISABLE KEYS */;
/*!40000 ALTER TABLE `discountmatrix` ENABLE KEYS */;

-- Dumping structure for table cncerp.ediitemmapping
CREATE TABLE IF NOT EXISTS `ediitemmapping` (
  `supporcust` varchar(4) NOT NULL DEFAULT '',
  `partnercode` varchar(10) NOT NULL DEFAULT '',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `partnerstockid` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`supporcust`,`partnercode`,`stockid`),
  KEY `PartnerCode` (`partnercode`),
  KEY `StockID` (`stockid`),
  KEY `PartnerStockID` (`partnerstockid`),
  KEY `SuppOrCust` (`supporcust`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.ediitemmapping: ~0 rows (大约)
/*!40000 ALTER TABLE `ediitemmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `ediitemmapping` ENABLE KEYS */;

-- Dumping structure for table cncerp.edimessageformat
CREATE TABLE IF NOT EXISTS `edimessageformat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partnercode` varchar(10) NOT NULL DEFAULT '',
  `messagetype` varchar(6) NOT NULL DEFAULT '',
  `section` varchar(7) NOT NULL DEFAULT '',
  `sequenceno` int(11) NOT NULL DEFAULT 0,
  `linetext` varchar(70) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PartnerCode` (`partnercode`,`messagetype`,`sequenceno`),
  KEY `Section` (`section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.edimessageformat: ~0 rows (大约)
/*!40000 ALTER TABLE `edimessageformat` DISABLE KEYS */;
/*!40000 ALTER TABLE `edimessageformat` ENABLE KEYS */;

-- Dumping structure for table cncerp.edi_orders_segs
CREATE TABLE IF NOT EXISTS `edi_orders_segs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `segtag` char(3) NOT NULL DEFAULT '',
  `seggroup` tinyint(4) NOT NULL DEFAULT 0,
  `maxoccur` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `SegTag` (`segtag`),
  KEY `SegNo` (`seggroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.edi_orders_segs: ~0 rows (大约)
/*!40000 ALTER TABLE `edi_orders_segs` DISABLE KEYS */;
/*!40000 ALTER TABLE `edi_orders_segs` ENABLE KEYS */;

-- Dumping structure for table cncerp.edi_orders_seg_groups
CREATE TABLE IF NOT EXISTS `edi_orders_seg_groups` (
  `seggroupno` tinyint(4) NOT NULL DEFAULT 0,
  `maxoccur` int(4) NOT NULL DEFAULT 0,
  `parentseggroup` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`seggroupno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.edi_orders_seg_groups: ~0 rows (大约)
/*!40000 ALTER TABLE `edi_orders_seg_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `edi_orders_seg_groups` ENABLE KEYS */;

-- Dumping structure for table cncerp.emailsettings
CREATE TABLE IF NOT EXISTS `emailsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(30) NOT NULL,
  `port` char(5) NOT NULL,
  `heloaddress` varchar(20) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `timeout` int(11) DEFAULT 5,
  `companyname` varchar(50) DEFAULT NULL,
  `auth` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.emailsettings: ~0 rows (大约)
/*!40000 ALTER TABLE `emailsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailsettings` ENABLE KEYS */;

-- Dumping structure for table cncerp.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `stockid` varchar(20) NOT NULL COMMENT 'FK with stockmaster',
  `manager` int(11) DEFAULT NULL COMMENT 'an employee also in this table',
  `normalhours` double NOT NULL DEFAULT 40,
  `userid` varchar(20) NOT NULL DEFAULT '' COMMENT 'loose FK with www-users will have some employees who are not users',
  `email` varchar(55) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `surname` (`surname`),
  KEY `firstname` (`firstname`),
  KEY `stockid` (`stockid`),
  KEY `manager` (`manager`),
  KEY `userid` (`userid`),
  CONSTRAINT `stk_ibfk_1` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.employees: ~0 rows (大约)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table cncerp.factorcompanies
CREATE TABLE IF NOT EXISTS `factorcompanies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coyname` varchar(50) NOT NULL DEFAULT '',
  `address1` varchar(40) NOT NULL DEFAULT '',
  `address2` varchar(40) NOT NULL DEFAULT '',
  `address3` varchar(40) NOT NULL DEFAULT '',
  `address4` varchar(40) NOT NULL DEFAULT '',
  `address5` varchar(20) NOT NULL DEFAULT '',
  `address6` varchar(15) NOT NULL DEFAULT '',
  `contact` varchar(25) NOT NULL DEFAULT '',
  `telephone` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(55) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `factor_name` (`coyname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.factorcompanies: ~0 rows (大约)
/*!40000 ALTER TABLE `factorcompanies` DISABLE KEYS */;
/*!40000 ALTER TABLE `factorcompanies` ENABLE KEYS */;

-- Dumping structure for table cncerp.favourites
CREATE TABLE IF NOT EXISTS `favourites` (
  `userid` varchar(20) NOT NULL DEFAULT '',
  `caption` varchar(50) NOT NULL DEFAULT '',
  `href` varchar(200) NOT NULL DEFAULT '#',
  PRIMARY KEY (`userid`,`caption`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.favourites: ~0 rows (大约)
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;

-- Dumping structure for table cncerp.fixedassetcategories
CREATE TABLE IF NOT EXISTS `fixedassetcategories` (
  `categoryid` char(6) NOT NULL DEFAULT '',
  `categorydescription` char(20) NOT NULL DEFAULT '',
  `costact` varchar(20) NOT NULL DEFAULT '0',
  `depnact` varchar(20) NOT NULL DEFAULT '0',
  `disposalact` varchar(20) NOT NULL DEFAULT '80000',
  `accumdepnact` varchar(20) NOT NULL DEFAULT '0',
  `defaultdepnrate` double NOT NULL DEFAULT 0.2,
  `defaultdepntype` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.fixedassetcategories: ~0 rows (大约)
/*!40000 ALTER TABLE `fixedassetcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `fixedassetcategories` ENABLE KEYS */;

-- Dumping structure for table cncerp.fixedassetlocations
CREATE TABLE IF NOT EXISTS `fixedassetlocations` (
  `locationid` char(6) NOT NULL DEFAULT '',
  `locationdescription` char(20) NOT NULL DEFAULT '',
  `parentlocationid` char(6) DEFAULT '',
  PRIMARY KEY (`locationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.fixedassetlocations: ~0 rows (大约)
/*!40000 ALTER TABLE `fixedassetlocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fixedassetlocations` ENABLE KEYS */;

-- Dumping structure for table cncerp.fixedassetmoves
CREATE TABLE IF NOT EXISTS `fixedassetmoves` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fixedassetid` int(11) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `createdday` timestamp NULL DEFAULT current_timestamp(),
  `createdby` varchar(20) DEFAULT NULL,
  `fromloc` char(6) DEFAULT NULL,
  `toloc` char(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.fixedassetmoves: ~0 rows (大约)
/*!40000 ALTER TABLE `fixedassetmoves` DISABLE KEYS */;
/*!40000 ALTER TABLE `fixedassetmoves` ENABLE KEYS */;

-- Dumping structure for table cncerp.fixedassets
CREATE TABLE IF NOT EXISTS `fixedassets` (
  `assetid` int(11) NOT NULL AUTO_INCREMENT,
  `serialno` varchar(30) NOT NULL DEFAULT '',
  `barcode` varchar(20) NOT NULL,
  `assetlocation` varchar(6) NOT NULL DEFAULT '',
  `cost` double NOT NULL DEFAULT 0,
  `accumdepn` double NOT NULL DEFAULT 0,
  `datepurchased` date NOT NULL DEFAULT '1000-01-01',
  `disposalproceeds` double NOT NULL DEFAULT 0,
  `assetcategoryid` varchar(6) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL DEFAULT '',
  `longdescription` text NOT NULL,
  `depntype` int(11) NOT NULL DEFAULT 1,
  `depnrate` double NOT NULL,
  `disposaldate` date NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (`assetid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.fixedassets: ~0 rows (大约)
/*!40000 ALTER TABLE `fixedassets` DISABLE KEYS */;
/*!40000 ALTER TABLE `fixedassets` ENABLE KEYS */;

-- Dumping structure for table cncerp.fixedassettasks
CREATE TABLE IF NOT EXISTS `fixedassettasks` (
  `taskid` int(11) NOT NULL AUTO_INCREMENT,
  `assetid` int(11) NOT NULL,
  `taskdescription` text NOT NULL,
  `frequencydays` int(11) NOT NULL DEFAULT 365,
  `lastcompleted` date NOT NULL,
  `userresponsible` varchar(20) NOT NULL,
  `manager` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`taskid`),
  KEY `assetid` (`assetid`),
  KEY `userresponsible` (`userresponsible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.fixedassettasks: ~0 rows (大约)
/*!40000 ALTER TABLE `fixedassettasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `fixedassettasks` ENABLE KEYS */;

-- Dumping structure for table cncerp.fixedassettrans
CREATE TABLE IF NOT EXISTS `fixedassettrans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assetid` int(11) NOT NULL,
  `transtype` tinyint(4) NOT NULL,
  `transdate` date NOT NULL,
  `transno` int(11) NOT NULL,
  `periodno` smallint(6) NOT NULL,
  `inputdate` date NOT NULL,
  `fixedassettranstype` varchar(8) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assetid` (`assetid`,`transtype`,`transno`),
  KEY `inputdate` (`inputdate`),
  KEY `transdate` (`transdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.fixedassettrans: ~0 rows (大约)
/*!40000 ALTER TABLE `fixedassettrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `fixedassettrans` ENABLE KEYS */;

-- Dumping structure for table cncerp.freightcosts
CREATE TABLE IF NOT EXISTS `freightcosts` (
  `shipcostfromid` int(11) NOT NULL AUTO_INCREMENT,
  `locationfrom` varchar(5) NOT NULL DEFAULT '',
  `destinationcountry` varchar(40) NOT NULL,
  `destination` varchar(40) NOT NULL DEFAULT '',
  `shipperid` int(11) NOT NULL DEFAULT 0,
  `cubrate` double NOT NULL DEFAULT 0,
  `kgrate` double NOT NULL DEFAULT 0,
  `maxkgs` double NOT NULL DEFAULT 999999,
  `maxcub` double NOT NULL DEFAULT 999999,
  `fixedprice` double NOT NULL DEFAULT 0,
  `minimumchg` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`shipcostfromid`),
  KEY `Destination` (`destination`),
  KEY `LocationFrom` (`locationfrom`),
  KEY `ShipperID` (`shipperid`),
  KEY `Destination_2` (`destination`,`locationfrom`,`shipperid`),
  CONSTRAINT `freightcosts_ibfk_1` FOREIGN KEY (`locationfrom`) REFERENCES `locations` (`loccode`),
  CONSTRAINT `freightcosts_ibfk_2` FOREIGN KEY (`shipperid`) REFERENCES `shippers` (`shipper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.freightcosts: ~0 rows (大约)
/*!40000 ALTER TABLE `freightcosts` DISABLE KEYS */;
INSERT INTO `freightcosts` (`shipcostfromid`, `locationfrom`, `destinationcountry`, `destination`, `shipperid`, `cubrate`, `kgrate`, `maxkgs`, `maxcub`, `fixedprice`, `minimumchg`) VALUES
	(1, 'CK001', '中国', '大陆', 1, 50, 10, 100, 5, 2, 10);
/*!40000 ALTER TABLE `freightcosts` ENABLE KEYS */;

-- Dumping structure for table cncerp.geocode_param
CREATE TABLE IF NOT EXISTS `geocode_param` (
  `geocodeid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `geocode_key` varchar(200) NOT NULL DEFAULT '',
  `center_long` varchar(20) NOT NULL DEFAULT '',
  `center_lat` varchar(20) NOT NULL DEFAULT '',
  `map_height` varchar(10) NOT NULL DEFAULT '',
  `map_width` varchar(10) NOT NULL DEFAULT '',
  `map_host` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`geocodeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.geocode_param: ~0 rows (大约)
/*!40000 ALTER TABLE `geocode_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `geocode_param` ENABLE KEYS */;

-- Dumping structure for table cncerp.glaccountusers
CREATE TABLE IF NOT EXISTS `glaccountusers` (
  `accountcode` varchar(20) NOT NULL COMMENT 'GL account code from chartmaster',
  `userid` varchar(20) NOT NULL,
  `canview` tinyint(4) NOT NULL DEFAULT 0,
  `canupd` tinyint(4) NOT NULL DEFAULT 0,
  UNIQUE KEY `useraccount` (`userid`,`accountcode`),
  UNIQUE KEY `accountuser` (`accountcode`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.glaccountusers: ~148 rows (大约)
/*!40000 ALTER TABLE `glaccountusers` DISABLE KEYS */;
INSERT INTO `glaccountusers` (`accountcode`, `userid`, `canview`, `canupd`) VALUES
	('100108', 'admin', 1, 1),
	('100109', 'admin', 1, 1),
	('100201', 'admin', 1, 1),
	('100202', 'admin', 1, 1),
	('100203', 'admin', 1, 1),
	('100204', 'admin', 1, 1),
	('100205', 'admin', 1, 1),
	('1101', 'admin', 1, 1),
	('1121', 'admin', 1, 1),
	('1122', 'admin', 1, 1),
	('1123', 'admin', 1, 1),
	('112301', 'admin', 1, 1),
	('1131', 'admin', 1, 1),
	('1132', 'admin', 1, 1),
	('122104', 'admin', 1, 1),
	('122111', 'admin', 1, 1),
	('122135', 'admin', 1, 1),
	('1403', 'admin', 1, 1),
	('1405', 'admin', 1, 1),
	('1406', 'admin', 1, 1),
	('1407', 'admin', 1, 1),
	('1408', 'admin', 1, 1),
	('141201', 'admin', 1, 1),
	('1501', 'admin', 1, 1),
	('1511', 'admin', 1, 1),
	('1601', 'admin', 1, 1),
	('1602', 'admin', 1, 1),
	('1603', 'admin', 1, 1),
	('160401', 'admin', 1, 1),
	('1605', 'admin', 1, 1),
	('1606', 'admin', 1, 1),
	('1701', 'admin', 1, 1),
	('1702', 'admin', 1, 1),
	('1801', 'admin', 1, 1),
	('200101', 'admin', 1, 1),
	('200102', 'admin', 1, 1),
	('2201', 'admin', 1, 1),
	('2202', 'admin', 1, 1),
	('220201', 'admin', 1, 1),
	('220203', 'admin', 1, 1),
	('220301', 'admin', 1, 1),
	('2211', 'admin', 1, 1),
	('2221', 'admin', 1, 1),
	('22211', 'admin', 1, 1),
	('22212', 'admin', 1, 1),
	('22213', 'admin', 1, 1),
	('2231', 'admin', 1, 1),
	('2232', 'admin', 1, 1),
	('224105', 'admin', 1, 1),
	('224120', 'admin', 1, 1),
	('2501', 'admin', 1, 1),
	('2701', 'admin', 1, 1),
	('4001', 'admin', 1, 1),
	('4002', 'admin', 1, 1),
	('4101', 'admin', 1, 1),
	('4103', 'admin', 1, 1),
	('4104', 'admin', 1, 1),
	('500102', 'admin', 1, 1),
	('500103', 'admin', 1, 1),
	('510101', 'admin', 1, 1),
	('510102', 'admin', 1, 1),
	('510103', 'admin', 1, 1),
	('510104', 'admin', 1, 1),
	('510105', 'admin', 1, 1),
	('510106', 'admin', 1, 1),
	('510107', 'admin', 1, 1),
	('5402', 'admin', 1, 1),
	('60010101', 'admin', 1, 1),
	('60010102', 'admin', 1, 1),
	('60010201', 'admin', 1, 1),
	('60010202', 'admin', 1, 1),
	('6111', 'admin', 1, 1),
	('6301', 'admin', 1, 1),
	('64010101', 'admin', 1, 1),
	('64010102', 'admin', 1, 1),
	('64010201', 'admin', 1, 1),
	('64010202', 'admin', 1, 1),
	('6402', 'admin', 1, 1),
	('640301', 'admin', 1, 1),
	('640302', 'admin', 1, 1),
	('640303', 'admin', 1, 1),
	('640304', 'admin', 1, 1),
	('650101', 'admin', 1, 1),
	('660201', 'admin', 1, 1),
	('660202', 'admin', 1, 1),
	('660203', 'admin', 1, 1),
	('660204', 'admin', 1, 1),
	('660205', 'admin', 1, 1),
	('660206', 'admin', 1, 1),
	('660207', 'admin', 1, 1),
	('660208', 'admin', 1, 1),
	('660209', 'admin', 1, 1),
	('660210', 'admin', 1, 1),
	('660211', 'admin', 1, 1),
	('660212', 'admin', 1, 1),
	('660213', 'admin', 1, 1),
	('660214', 'admin', 1, 1),
	('660215', 'admin', 1, 1),
	('660216', 'admin', 1, 1),
	('660217', 'admin', 1, 1),
	('660218', 'admin', 1, 1),
	('660301', 'admin', 1, 1),
	('660302', 'admin', 1, 1),
	('660303', 'admin', 1, 1),
	('660304', 'admin', 1, 1),
	('660401', 'admin', 1, 1),
	('660402', 'admin', 1, 1),
	('660403', 'admin', 1, 1),
	('660404', 'admin', 1, 1),
	('660405', 'admin', 1, 1),
	('660406', 'admin', 1, 1),
	('660407', 'admin', 1, 1),
	('660408', 'admin', 1, 1),
	('660409', 'admin', 1, 1),
	('660410', 'admin', 1, 1),
	('660411', 'admin', 1, 1),
	('660412', 'admin', 1, 1),
	('660413', 'admin', 1, 1),
	('660415', 'admin', 1, 1),
	('660501', 'admin', 1, 1),
	('660502', 'admin', 1, 1),
	('660503', 'admin', 1, 1),
	('660504', 'admin', 1, 1),
	('660505', 'admin', 1, 1),
	('660506', 'admin', 1, 1),
	('660507', 'admin', 1, 1),
	('660508', 'admin', 1, 1),
	('660509', 'admin', 1, 1),
	('660510', 'admin', 1, 1),
	('660511', 'admin', 1, 1),
	('660512', 'admin', 1, 1),
	('660513', 'admin', 1, 1),
	('660514', 'admin', 1, 1),
	('660515', 'admin', 1, 1),
	('660516', 'admin', 1, 1),
	('660601', 'admin', 1, 1),
	('660602', 'admin', 1, 1),
	('660603', 'admin', 1, 1),
	('660604', 'admin', 1, 1),
	('660605', 'admin', 1, 1),
	('660606', 'admin', 1, 1),
	('660607', 'admin', 1, 1),
	('6701', 'admin', 1, 1),
	('6702', 'admin', 1, 1),
	('6703', 'admin', 1, 1),
	('671101', 'admin', 1, 1),
	('6801', 'admin', 1, 1),
	('6901', 'admin', 1, 1);
/*!40000 ALTER TABLE `glaccountusers` ENABLE KEYS */;

-- Dumping structure for table cncerp.gltrans
CREATE TABLE IF NOT EXISTS `gltrans` (
  `creationtime` timestamp NOT NULL DEFAULT current_timestamp(),
  `counterindex` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT 0,
  `typeno` bigint(16) NOT NULL DEFAULT 1,
  `chequeno` int(11) NOT NULL DEFAULT 0,
  `trandate` date NOT NULL DEFAULT '1000-01-01',
  `periodno` smallint(6) NOT NULL DEFAULT 0,
  `account` varchar(20) NOT NULL DEFAULT '0',
  `narrative` varchar(200) NOT NULL DEFAULT '',
  `amount` double NOT NULL DEFAULT 0,
  `posted` tinyint(4) NOT NULL DEFAULT 0,
  `jobref` varchar(20) NOT NULL DEFAULT '',
  `tag` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`counterindex`),
  KEY `Account` (`account`),
  KEY `ChequeNo` (`chequeno`),
  KEY `PeriodNo` (`periodno`),
  KEY `Posted` (`posted`),
  KEY `TranDate` (`trandate`),
  KEY `TypeNo` (`typeno`),
  KEY `Type_and_Number` (`type`,`typeno`),
  KEY `JobRef` (`jobref`),
  KEY `tag` (`tag`),
  CONSTRAINT `gltrans_ibfk_1` FOREIGN KEY (`account`) REFERENCES `chartmaster` (`accountcode`),
  CONSTRAINT `gltrans_ibfk_2` FOREIGN KEY (`type`) REFERENCES `systypes` (`typeid`),
  CONSTRAINT `gltrans_ibfk_3` FOREIGN KEY (`periodno`) REFERENCES `periods` (`periodno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.gltrans: ~0 rows (大约)
/*!40000 ALTER TABLE `gltrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `gltrans` ENABLE KEYS */;

-- Dumping structure for table cncerp.grns
CREATE TABLE IF NOT EXISTS `grns` (
  `grnbatch` smallint(6) NOT NULL DEFAULT 0,
  `grnno` int(11) NOT NULL AUTO_INCREMENT,
  `podetailitem` int(11) NOT NULL DEFAULT 0,
  `itemcode` varchar(20) NOT NULL DEFAULT '',
  `deliverydate` date NOT NULL DEFAULT '1000-01-01',
  `itemdescription` varchar(100) NOT NULL DEFAULT '',
  `qtyrecd` double NOT NULL DEFAULT 0,
  `quantityinv` double NOT NULL DEFAULT 0,
  `supplierid` varchar(10) NOT NULL DEFAULT '',
  `stdcostunit` double NOT NULL DEFAULT 0,
  `supplierref` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`grnno`),
  KEY `DeliveryDate` (`deliverydate`),
  KEY `ItemCode` (`itemcode`),
  KEY `PODetailItem` (`podetailitem`),
  KEY `SupplierID` (`supplierid`),
  CONSTRAINT `grns_ibfk_1` FOREIGN KEY (`supplierid`) REFERENCES `suppliers` (`supplierid`),
  CONSTRAINT `grns_ibfk_2` FOREIGN KEY (`podetailitem`) REFERENCES `purchorderdetails` (`podetailitem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.grns: ~0 rows (大约)
/*!40000 ALTER TABLE `grns` DISABLE KEYS */;
/*!40000 ALTER TABLE `grns` ENABLE KEYS */;

-- Dumping structure for table cncerp.holdreasons
CREATE TABLE IF NOT EXISTS `holdreasons` (
  `reasoncode` smallint(6) NOT NULL DEFAULT 1,
  `reasondescription` char(30) NOT NULL DEFAULT '',
  `dissallowinvoices` tinyint(4) NOT NULL DEFAULT -1,
  PRIMARY KEY (`reasoncode`),
  KEY `ReasonDescription` (`reasondescription`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.holdreasons: ~3 rows (大约)
/*!40000 ALTER TABLE `holdreasons` DISABLE KEYS */;
INSERT INTO `holdreasons` (`reasoncode`, `reasondescription`, `dissallowinvoices`) VALUES
	(1, '守信', 0),
	(20, '一般', 2),
	(51, '不守信', 1);
/*!40000 ALTER TABLE `holdreasons` ENABLE KEYS */;

-- Dumping structure for table cncerp.internalstockcatrole
CREATE TABLE IF NOT EXISTS `internalstockcatrole` (
  `categoryid` varchar(6) NOT NULL,
  `secroleid` int(11) NOT NULL,
  PRIMARY KEY (`categoryid`,`secroleid`),
  KEY `internalstockcatrole_ibfk_1` (`categoryid`),
  KEY `internalstockcatrole_ibfk_2` (`secroleid`),
  CONSTRAINT `internalstockcatrole_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `stockcategory` (`categoryid`),
  CONSTRAINT `internalstockcatrole_ibfk_2` FOREIGN KEY (`secroleid`) REFERENCES `securityroles` (`secroleid`),
  CONSTRAINT `internalstockcatrole_ibfk_3` FOREIGN KEY (`categoryid`) REFERENCES `stockcategory` (`categoryid`),
  CONSTRAINT `internalstockcatrole_ibfk_4` FOREIGN KEY (`secroleid`) REFERENCES `securityroles` (`secroleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.internalstockcatrole: ~0 rows (大约)
/*!40000 ALTER TABLE `internalstockcatrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `internalstockcatrole` ENABLE KEYS */;

-- Dumping structure for table cncerp.jnltmpldetails
CREATE TABLE IF NOT EXISTS `jnltmpldetails` (
  `linenumber` int(11) NOT NULL DEFAULT 0,
  `templateid` int(11) NOT NULL DEFAULT 0,
  `tags` varchar(50) NOT NULL DEFAULT '0',
  `accountcode` varchar(20) NOT NULL DEFAULT '1',
  `amount` double NOT NULL DEFAULT 0,
  `narrative` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`templateid`,`linenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.jnltmpldetails: ~0 rows (大约)
/*!40000 ALTER TABLE `jnltmpldetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `jnltmpldetails` ENABLE KEYS */;

-- Dumping structure for table cncerp.jnltmplheader
CREATE TABLE IF NOT EXISTS `jnltmplheader` (
  `templateid` int(11) NOT NULL DEFAULT 0,
  `templatedescription` varchar(50) NOT NULL DEFAULT '',
  `journaltype` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.jnltmplheader: ~0 rows (大约)
/*!40000 ALTER TABLE `jnltmplheader` DISABLE KEYS */;
/*!40000 ALTER TABLE `jnltmplheader` ENABLE KEYS */;

-- Dumping structure for table cncerp.labelfields
CREATE TABLE IF NOT EXISTS `labelfields` (
  `labelfieldid` int(11) NOT NULL AUTO_INCREMENT,
  `labelid` tinyint(4) NOT NULL,
  `fieldvalue` varchar(20) NOT NULL,
  `vpos` double NOT NULL DEFAULT 0,
  `hpos` double NOT NULL DEFAULT 0,
  `fontsize` tinyint(4) NOT NULL,
  `barcode` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`labelfieldid`),
  KEY `labelid` (`labelid`),
  KEY `vpos` (`vpos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.labelfields: ~0 rows (大约)
/*!40000 ALTER TABLE `labelfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `labelfields` ENABLE KEYS */;

-- Dumping structure for table cncerp.labels
CREATE TABLE IF NOT EXISTS `labels` (
  `labelid` tinyint(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `pagewidth` double NOT NULL DEFAULT 0,
  `pageheight` double NOT NULL DEFAULT 0,
  `height` double NOT NULL DEFAULT 0,
  `width` double NOT NULL DEFAULT 0,
  `topmargin` double NOT NULL DEFAULT 0,
  `leftmargin` double NOT NULL DEFAULT 0,
  `rowheight` double NOT NULL DEFAULT 0,
  `columnwidth` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`labelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.labels: ~0 rows (大约)
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;

-- Dumping structure for table cncerp.lastcostrollup
CREATE TABLE IF NOT EXISTS `lastcostrollup` (
  `stockid` char(20) NOT NULL DEFAULT '',
  `totalonhand` double NOT NULL DEFAULT 0,
  `matcost` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `labcost` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `oheadcost` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `categoryid` char(6) NOT NULL DEFAULT '',
  `stockact` varchar(20) NOT NULL DEFAULT '0',
  `adjglact` varchar(20) NOT NULL DEFAULT '0',
  `newmatcost` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `newlabcost` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `newoheadcost` decimal(20,4) NOT NULL DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.lastcostrollup: ~0 rows (大约)
/*!40000 ALTER TABLE `lastcostrollup` DISABLE KEYS */;
/*!40000 ALTER TABLE `lastcostrollup` ENABLE KEYS */;

-- Dumping structure for table cncerp.leasehist
CREATE TABLE IF NOT EXISTS `leasehist` (
  `leaseid` int(11) NOT NULL,
  `orderno` int(11) NOT NULL,
  `action` int(11) NOT NULL DEFAULT 0 COMMENT '0修改保存等的替换;1删除订单'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.leasehist: ~0 rows (大约)
/*!40000 ALTER TABLE `leasehist` DISABLE KEYS */;
/*!40000 ALTER TABLE `leasehist` ENABLE KEYS */;

-- Dumping structure for table cncerp.leases
CREATE TABLE IF NOT EXISTS `leases` (
  `leaseid` int(11) NOT NULL AUTO_INCREMENT,
  `leasename` varchar(50) NOT NULL COMMENT '桌号',
  `description` varchar(50) NOT NULL COMMENT '预留的描述',
  `label` varchar(50) NOT NULL COMMENT '分类',
  `orderno` int(11) NOT NULL COMMENT '订单号',
  `status` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '0空闲;1使用中;2预订',
  `disabled` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '0桌子可用;1桌子不可用',
  PRIMARY KEY (`leaseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='status=1:orderno;status=2:description';

-- Dumping data for table cncerp.leases: ~0 rows (大约)
/*!40000 ALTER TABLE `leases` DISABLE KEYS */;
/*!40000 ALTER TABLE `leases` ENABLE KEYS */;

-- Dumping structure for table cncerp.levels
CREATE TABLE IF NOT EXISTS `levels` (
  `part` char(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `leadtime` smallint(6) NOT NULL DEFAULT 0,
  `pansize` double NOT NULL DEFAULT 0,
  `shrinkfactor` double NOT NULL DEFAULT 0,
  `eoq` double NOT NULL DEFAULT 0,
  KEY `part` (`part`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.levels: ~0 rows (大约)
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;

-- Dumping structure for table cncerp.locations
CREATE TABLE IF NOT EXISTS `locations` (
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `locationname` varchar(50) NOT NULL DEFAULT '',
  `deladd1` varchar(40) NOT NULL DEFAULT '',
  `deladd2` varchar(40) NOT NULL DEFAULT '',
  `deladd3` varchar(40) NOT NULL DEFAULT '',
  `deladd4` varchar(40) NOT NULL DEFAULT '',
  `deladd5` varchar(20) NOT NULL DEFAULT '',
  `deladd6` varchar(15) NOT NULL DEFAULT '',
  `tel` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(55) NOT NULL DEFAULT '',
  `contact` varchar(30) NOT NULL DEFAULT '',
  `taxprovinceid` tinyint(4) NOT NULL DEFAULT 1,
  `cashsalecustomer` varchar(10) DEFAULT '',
  `managed` int(11) DEFAULT 0,
  `cashsalebranch` varchar(10) DEFAULT '',
  `internalrequest` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Allow (1) or not (0) internal request from this location',
  `usedforwo` tinyint(4) NOT NULL DEFAULT 1,
  `glaccountcode` varchar(20) NOT NULL DEFAULT '' COMMENT 'GL account of the location',
  `allowinvoicing` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Allow invoicing of items at this location',
  PRIMARY KEY (`loccode`),
  UNIQUE KEY `locationname` (`locationname`),
  KEY `taxprovinceid` (`taxprovinceid`),
  CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`taxprovinceid`) REFERENCES `taxprovinces` (`taxprovinceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.locations: ~0 rows (大约)
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;

-- Dumping structure for table cncerp.locationusers
CREATE TABLE IF NOT EXISTS `locationusers` (
  `loccode` varchar(5) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `canview` tinyint(4) NOT NULL DEFAULT 0,
  `canupd` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`loccode`,`userid`),
  KEY `UserId` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.locationusers: ~0 rows (大约)
/*!40000 ALTER TABLE `locationusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `locationusers` ENABLE KEYS */;

-- Dumping structure for table cncerp.locstock
CREATE TABLE IF NOT EXISTS `locstock` (
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT 0,
  `reorderlevel` bigint(20) NOT NULL DEFAULT 0,
  `bin` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`loccode`,`stockid`),
  KEY `StockID` (`stockid`),
  KEY `bin` (`bin`),
  CONSTRAINT `locstock_ibfk_1` FOREIGN KEY (`loccode`) REFERENCES `locations` (`loccode`),
  CONSTRAINT `locstock_ibfk_2` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.locstock: ~0 rows (大约)
/*!40000 ALTER TABLE `locstock` DISABLE KEYS */;
/*!40000 ALTER TABLE `locstock` ENABLE KEYS */;

-- Dumping structure for table cncerp.loctransfercancellations
CREATE TABLE IF NOT EXISTS `loctransfercancellations` (
  `reference` int(11) NOT NULL,
  `stockid` varchar(20) NOT NULL,
  `cancelqty` double NOT NULL,
  `canceldate` datetime NOT NULL,
  `canceluserid` varchar(20) NOT NULL,
  KEY `Index1` (`reference`,`stockid`),
  KEY `Index2` (`canceldate`,`reference`,`stockid`),
  KEY `refstockid` (`reference`,`stockid`),
  KEY `cancelrefstockid` (`canceldate`,`reference`,`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table cncerp.loctransfercancellations: ~0 rows (大约)
/*!40000 ALTER TABLE `loctransfercancellations` DISABLE KEYS */;
/*!40000 ALTER TABLE `loctransfercancellations` ENABLE KEYS */;

-- Dumping structure for table cncerp.loctransfers
CREATE TABLE IF NOT EXISTS `loctransfers` (
  `reference` int(11) NOT NULL DEFAULT 0,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `shipqty` double NOT NULL DEFAULT 0,
  `recqty` double NOT NULL DEFAULT 0,
  `shipdate` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `recdate` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `shiploc` varchar(7) NOT NULL DEFAULT '',
  `recloc` varchar(7) NOT NULL DEFAULT '',
  KEY `Reference` (`reference`,`stockid`),
  KEY `ShipLoc` (`shiploc`),
  KEY `RecLoc` (`recloc`),
  KEY `StockID` (`stockid`),
  CONSTRAINT `loctransfers_ibfk_1` FOREIGN KEY (`shiploc`) REFERENCES `locations` (`loccode`),
  CONSTRAINT `loctransfers_ibfk_2` FOREIGN KEY (`recloc`) REFERENCES `locations` (`loccode`),
  CONSTRAINT `loctransfers_ibfk_3` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores Shipments To And From Locations';

-- Dumping data for table cncerp.loctransfers: ~0 rows (大约)
/*!40000 ALTER TABLE `loctransfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `loctransfers` ENABLE KEYS */;

-- Dumping structure for table cncerp.mailgroupdetails
CREATE TABLE IF NOT EXISTS `mailgroupdetails` (
  `groupname` varchar(100) NOT NULL,
  `userid` varchar(20) NOT NULL,
  KEY `userid` (`userid`),
  KEY `groupname` (`groupname`),
  CONSTRAINT `mailgroupdetails_ibfk_1` FOREIGN KEY (`groupname`) REFERENCES `mailgroups` (`groupname`),
  CONSTRAINT `mailgroupdetails_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `www_users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.mailgroupdetails: ~0 rows (大约)
/*!40000 ALTER TABLE `mailgroupdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailgroupdetails` ENABLE KEYS */;

-- Dumping structure for table cncerp.mailgroups
CREATE TABLE IF NOT EXISTS `mailgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groupname` (`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.mailgroups: ~0 rows (大约)
/*!40000 ALTER TABLE `mailgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailgroups` ENABLE KEYS */;

-- Dumping structure for table cncerp.manufacturers
CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturers_name` varchar(32) NOT NULL,
  `manufacturers_url` varchar(50) NOT NULL DEFAULT '',
  `manufacturers_image` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`),
  KEY `manufacturers_name` (`manufacturers_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.manufacturers: ~0 rows (大约)
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;

-- Dumping structure for table cncerp.mrpcalendar
CREATE TABLE IF NOT EXISTS `mrpcalendar` (
  `calendardate` date NOT NULL,
  `daynumber` int(6) NOT NULL,
  `manufacturingflag` smallint(6) NOT NULL DEFAULT 1,
  PRIMARY KEY (`calendardate`),
  KEY `daynumber` (`daynumber`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.mrpcalendar: 0 rows
/*!40000 ALTER TABLE `mrpcalendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `mrpcalendar` ENABLE KEYS */;

-- Dumping structure for table cncerp.mrpdemands
CREATE TABLE IF NOT EXISTS `mrpdemands` (
  `demandid` int(11) NOT NULL AUTO_INCREMENT,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `mrpdemandtype` varchar(6) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT 0,
  `duedate` date NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (`demandid`),
  KEY `StockID` (`stockid`),
  KEY `mrpdemands_ibfk_1` (`mrpdemandtype`),
  CONSTRAINT `mrpdemands_ibfk_1` FOREIGN KEY (`mrpdemandtype`) REFERENCES `mrpdemandtypes` (`mrpdemandtype`),
  CONSTRAINT `mrpdemands_ibfk_2` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.mrpdemands: ~0 rows (大约)
/*!40000 ALTER TABLE `mrpdemands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mrpdemands` ENABLE KEYS */;

-- Dumping structure for table cncerp.mrpdemandtypes
CREATE TABLE IF NOT EXISTS `mrpdemandtypes` (
  `mrpdemandtype` varchar(6) NOT NULL DEFAULT '',
  `description` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`mrpdemandtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.mrpdemandtypes: ~0 rows (大约)
/*!40000 ALTER TABLE `mrpdemandtypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mrpdemandtypes` ENABLE KEYS */;

-- Dumping structure for table cncerp.mrpparameters
CREATE TABLE IF NOT EXISTS `mrpparameters` (
  `runtime` datetime DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `pansizeflag` varchar(5) DEFAULT NULL,
  `shrinkageflag` varchar(5) DEFAULT NULL,
  `eoqflag` varchar(5) DEFAULT NULL,
  `usemrpdemands` varchar(5) DEFAULT NULL,
  `leeway` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.mrpparameters: ~0 rows (大约)
/*!40000 ALTER TABLE `mrpparameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mrpparameters` ENABLE KEYS */;

-- Dumping structure for table cncerp.mrpplannedorders
CREATE TABLE IF NOT EXISTS `mrpplannedorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part` char(20) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `supplyquantity` double DEFAULT NULL,
  `ordertype` varchar(6) DEFAULT NULL,
  `orderno` int(11) DEFAULT NULL,
  `mrpdate` date DEFAULT NULL,
  `updateflag` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.mrpplannedorders: ~0 rows (大约)
/*!40000 ALTER TABLE `mrpplannedorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `mrpplannedorders` ENABLE KEYS */;

-- Dumping structure for table cncerp.mrprequirements
CREATE TABLE IF NOT EXISTS `mrprequirements` (
  `part` char(20) DEFAULT NULL,
  `daterequired` date DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `mrpdemandtype` varchar(6) DEFAULT NULL,
  `orderno` int(11) DEFAULT NULL,
  `directdemand` smallint(6) DEFAULT NULL,
  `whererequired` char(20) DEFAULT NULL,
  KEY `part` (`part`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.mrprequirements: ~0 rows (大约)
/*!40000 ALTER TABLE `mrprequirements` DISABLE KEYS */;
/*!40000 ALTER TABLE `mrprequirements` ENABLE KEYS */;

-- Dumping structure for table cncerp.mrpsupplies
CREATE TABLE IF NOT EXISTS `mrpsupplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part` char(20) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `supplyquantity` double DEFAULT NULL,
  `ordertype` varchar(6) DEFAULT NULL,
  `orderno` int(11) DEFAULT NULL,
  `mrpdate` date DEFAULT NULL,
  `updateflag` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `part` (`part`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.mrpsupplies: ~0 rows (大约)
/*!40000 ALTER TABLE `mrpsupplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `mrpsupplies` ENABLE KEYS */;

-- Dumping structure for table cncerp.offers
CREATE TABLE IF NOT EXISTS `offers` (
  `offerid` int(11) NOT NULL AUTO_INCREMENT,
  `tenderid` int(11) NOT NULL DEFAULT 0,
  `supplierid` varchar(10) NOT NULL DEFAULT '',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT 0,
  `uom` varchar(15) NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT 0,
  `expirydate` date NOT NULL DEFAULT '1000-01-01',
  `currcode` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`offerid`),
  KEY `offers_ibfk_1` (`supplierid`),
  KEY `offers_ibfk_2` (`stockid`),
  CONSTRAINT `offers_ibfk_1` FOREIGN KEY (`supplierid`) REFERENCES `suppliers` (`supplierid`),
  CONSTRAINT `offers_ibfk_2` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.offers: ~0 rows (大约)
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;

-- Dumping structure for table cncerp.orderdeliverydifferenceslog
CREATE TABLE IF NOT EXISTS `orderdeliverydifferenceslog` (
  `orderno` int(11) NOT NULL DEFAULT 0,
  `invoiceno` int(11) NOT NULL DEFAULT 0,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `quantitydiff` double NOT NULL DEFAULT 0,
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `branch` varchar(10) NOT NULL DEFAULT '',
  `can_or_bo` char(3) NOT NULL DEFAULT 'CAN',
  KEY `StockID` (`stockid`),
  KEY `DebtorNo` (`debtorno`,`branch`),
  KEY `Can_or_BO` (`can_or_bo`),
  KEY `OrderNo` (`orderno`),
  CONSTRAINT `orderdeliverydifferenceslog_ibfk_1` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `orderdeliverydifferenceslog_ibfk_2` FOREIGN KEY (`debtorno`, `branch`) REFERENCES `custbranch` (`debtorno`, `branchcode`),
  CONSTRAINT `orderdeliverydifferenceslog_ibfk_3` FOREIGN KEY (`orderno`) REFERENCES `salesorders` (`orderno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.orderdeliverydifferenceslog: ~0 rows (大约)
/*!40000 ALTER TABLE `orderdeliverydifferenceslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdeliverydifferenceslog` ENABLE KEYS */;

-- Dumping structure for table cncerp.paymentmethods
CREATE TABLE IF NOT EXISTS `paymentmethods` (
  `paymentid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `paymentname` varchar(15) NOT NULL DEFAULT '',
  `paymenttype` int(11) NOT NULL DEFAULT 1,
  `receipttype` int(11) NOT NULL DEFAULT 1,
  `usepreprintedstationery` tinyint(4) NOT NULL DEFAULT 0,
  `opencashdrawer` tinyint(4) NOT NULL DEFAULT 0,
  `percentdiscount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`paymentid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.paymentmethods: ~5 rows (大约)
/*!40000 ALTER TABLE `paymentmethods` DISABLE KEYS */;
INSERT INTO `paymentmethods` (`paymentid`, `paymentname`, `paymenttype`, `receipttype`, `usepreprintedstationery`, `opencashdrawer`, `percentdiscount`) VALUES
	(1, '现金交易', 1, 1, 1, 0, 0),
	(2, '现金发票（含税）', 1, 1, 0, 0, 0),
	(4, '现金支票', 1, 1, 1, 0, 0),
	(5, '银行转账', 1, 1, 0, 0, 0),
	(6, '转账支票', 1, 1, 0, 0, 0);
/*!40000 ALTER TABLE `paymentmethods` ENABLE KEYS */;

-- Dumping structure for table cncerp.paymentterms
CREATE TABLE IF NOT EXISTS `paymentterms` (
  `termsindicator` char(2) NOT NULL DEFAULT '',
  `terms` char(40) NOT NULL DEFAULT '',
  `daysbeforedue` smallint(6) NOT NULL DEFAULT 0,
  `dayinfollowingmonth` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`termsindicator`),
  KEY `DaysBeforeDue` (`daysbeforedue`),
  KEY `DayInFollowingMonth` (`dayinfollowingmonth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.paymentterms: ~4 rows (大约)
/*!40000 ALTER TABLE `paymentterms` DISABLE KEYS */;
INSERT INTO `paymentterms` (`termsindicator`, `terms`, `daysbeforedue`, `dayinfollowingmonth`) VALUES
	('20', '次月22日结账', 0, 22),
	('30', '按月结账', 0, 30),
	('7', '7天内付款', 7, 0),
	('CA', '两天内付款', 2, 0);
/*!40000 ALTER TABLE `paymentterms` ENABLE KEYS */;

-- Dumping structure for table cncerp.pcashdetails
CREATE TABLE IF NOT EXISTS `pcashdetails` (
  `counterindex` int(20) NOT NULL AUTO_INCREMENT,
  `tabcode` varchar(20) NOT NULL,
  `tag` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `codeexpense` varchar(20) NOT NULL,
  `amount` double NOT NULL,
  `authorized` date NOT NULL COMMENT 'date cash assigment was revised and authorized by authorizer from tabs table',
  `posted` tinyint(4) NOT NULL COMMENT 'has (or has not) been posted into gltrans',
  `purpose` text DEFAULT NULL,
  `notes` text NOT NULL,
  `receipt` text DEFAULT NULL COMMENT 'Column redundant. Replaced by receipt file upload. Nov 2017.',
  PRIMARY KEY (`counterindex`),
  UNIQUE KEY `tabcodedate` (`tabcode`,`date`,`codeexpense`,`counterindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.pcashdetails: ~0 rows (大约)
/*!40000 ALTER TABLE `pcashdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `pcashdetails` ENABLE KEYS */;

-- Dumping structure for table cncerp.pcashdetailtaxes
CREATE TABLE IF NOT EXISTS `pcashdetailtaxes` (
  `counterindex` int(20) NOT NULL AUTO_INCREMENT,
  `pccashdetail` int(20) NOT NULL DEFAULT 0,
  `calculationorder` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(40) NOT NULL DEFAULT '',
  `taxauthid` tinyint(4) NOT NULL DEFAULT 0,
  `purchtaxglaccount` varchar(20) NOT NULL DEFAULT '',
  `taxontax` tinyint(4) NOT NULL DEFAULT 0,
  `taxrate` double NOT NULL DEFAULT 0,
  `amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`counterindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.pcashdetailtaxes: ~0 rows (大约)
/*!40000 ALTER TABLE `pcashdetailtaxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pcashdetailtaxes` ENABLE KEYS */;

-- Dumping structure for table cncerp.pcexpenses
CREATE TABLE IF NOT EXISTS `pcexpenses` (
  `codeexpense` varchar(20) NOT NULL COMMENT 'code for the group',
  `description` varchar(50) NOT NULL COMMENT 'text description, e.g. meals, train tickets, fuel, etc',
  `glaccount` varchar(20) NOT NULL DEFAULT '0',
  `tag` tinyint(4) NOT NULL DEFAULT 0,
  `taxcatid` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`codeexpense`),
  KEY `glaccount` (`glaccount`),
  CONSTRAINT `pcexpenses_ibfk_1` FOREIGN KEY (`glaccount`) REFERENCES `chartmaster` (`accountcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.pcexpenses: ~0 rows (大约)
/*!40000 ALTER TABLE `pcexpenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `pcexpenses` ENABLE KEYS */;

-- Dumping structure for table cncerp.pcreceipts
CREATE TABLE IF NOT EXISTS `pcreceipts` (
  `counterindex` int(20) NOT NULL AUTO_INCREMENT,
  `pccashdetail` int(20) NOT NULL DEFAULT 0 COMMENT 'Expenses record identity',
  `hashfile` varchar(32) NOT NULL DEFAULT '' COMMENT 'MD5 hash of uploaded receipt file',
  `type` varchar(80) NOT NULL DEFAULT '' COMMENT 'Mime type of uploaded receipt file',
  `extension` varchar(4) NOT NULL DEFAULT '' COMMENT 'File extension of uploaded receipt',
  `size` int(20) NOT NULL DEFAULT 0 COMMENT 'File size of uploaded receipt',
  PRIMARY KEY (`counterindex`),
  KEY `pcreceipts_ibfk_1` (`pccashdetail`),
  CONSTRAINT `pcreceipts_ibfk_1` FOREIGN KEY (`pccashdetail`) REFERENCES `pcashdetails` (`counterindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.pcreceipts: ~0 rows (大约)
/*!40000 ALTER TABLE `pcreceipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `pcreceipts` ENABLE KEYS */;

-- Dumping structure for table cncerp.pctabexpenses
CREATE TABLE IF NOT EXISTS `pctabexpenses` (
  `typetabcode` varchar(20) NOT NULL,
  `codeexpense` varchar(20) NOT NULL,
  KEY `typetabcode` (`typetabcode`),
  KEY `codeexpense` (`codeexpense`),
  CONSTRAINT `pctabexpenses_ibfk_1` FOREIGN KEY (`typetabcode`) REFERENCES `pctypetabs` (`typetabcode`),
  CONSTRAINT `pctabexpenses_ibfk_2` FOREIGN KEY (`codeexpense`) REFERENCES `pcexpenses` (`codeexpense`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.pctabexpenses: ~0 rows (大约)
/*!40000 ALTER TABLE `pctabexpenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `pctabexpenses` ENABLE KEYS */;

-- Dumping structure for table cncerp.pctabs
CREATE TABLE IF NOT EXISTS `pctabs` (
  `tabcode` varchar(20) NOT NULL,
  `usercode` varchar(20) NOT NULL COMMENT 'code of user employee from www_users',
  `typetabcode` varchar(20) NOT NULL,
  `currency` char(3) NOT NULL,
  `tablimit` double NOT NULL,
  `assigner` varchar(100) DEFAULT NULL,
  `authorizer` varchar(100) DEFAULT NULL,
  `authorizerexpenses` varchar(20) NOT NULL,
  `glaccountassignment` varchar(20) NOT NULL DEFAULT '0',
  `glaccountpcash` varchar(20) NOT NULL DEFAULT '0',
  `defaulttag` tinyint(4) NOT NULL DEFAULT 0,
  `taxgroupid` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`tabcode`),
  KEY `usercode` (`usercode`),
  KEY `typetabcode` (`typetabcode`),
  KEY `currency` (`currency`),
  KEY `authorizer` (`authorizer`),
  KEY `glaccountassignment` (`glaccountassignment`),
  CONSTRAINT `pctabs_ibfk_1` FOREIGN KEY (`usercode`) REFERENCES `www_users` (`userid`),
  CONSTRAINT `pctabs_ibfk_2` FOREIGN KEY (`typetabcode`) REFERENCES `pctypetabs` (`typetabcode`),
  CONSTRAINT `pctabs_ibfk_3` FOREIGN KEY (`currency`) REFERENCES `currencies` (`currabrev`),
  CONSTRAINT `pctabs_ibfk_5` FOREIGN KEY (`glaccountassignment`) REFERENCES `chartmaster` (`accountcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.pctabs: ~0 rows (大约)
/*!40000 ALTER TABLE `pctabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pctabs` ENABLE KEYS */;

-- Dumping structure for table cncerp.pctypetabs
CREATE TABLE IF NOT EXISTS `pctypetabs` (
  `typetabcode` varchar(20) NOT NULL COMMENT 'code for the type of petty cash tab',
  `typetabdescription` varchar(50) NOT NULL COMMENT 'text description, e.g. tab for CEO',
  PRIMARY KEY (`typetabcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.pctypetabs: ~0 rows (大约)
/*!40000 ALTER TABLE `pctypetabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pctypetabs` ENABLE KEYS */;

-- Dumping structure for table cncerp.periods
CREATE TABLE IF NOT EXISTS `periods` (
  `periodno` smallint(6) NOT NULL DEFAULT 0,
  `lastdate_in_period` date NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (`periodno`),
  KEY `LastDate_in_Period` (`lastdate_in_period`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.periods: ~73 rows (大约)
/*!40000 ALTER TABLE `periods` DISABLE KEYS */;
INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES
	(-1, '2013-11-30'),
	(0, '2014-01-31'),
	(1, '2014-02-28'),
	(2, '2014-03-31'),
	(3, '2014-04-30'),
	(4, '2014-05-31'),
	(5, '2014-06-30'),
	(6, '2014-07-31'),
	(7, '2014-08-31'),
	(8, '2014-09-30'),
	(9, '2014-10-31'),
	(10, '2014-11-30'),
	(11, '2014-12-31'),
	(12, '2015-01-31'),
	(13, '2015-02-28'),
	(14, '2015-03-31'),
	(15, '2015-04-30'),
	(16, '2015-05-31'),
	(17, '2015-06-30'),
	(18, '2015-07-31'),
	(19, '2015-08-31'),
	(20, '2015-09-30'),
	(21, '2015-10-31'),
	(22, '2015-11-30'),
	(23, '2015-12-31'),
	(24, '2016-01-31'),
	(25, '2016-02-29'),
	(26, '2016-03-31'),
	(27, '2016-04-30'),
	(28, '2016-05-31'),
	(29, '2016-06-30'),
	(30, '2016-07-31'),
	(31, '2016-08-31'),
	(32, '2016-09-30'),
	(33, '2016-10-31'),
	(34, '2016-11-30'),
	(35, '2016-12-31'),
	(36, '2017-01-31'),
	(37, '2017-02-28'),
	(38, '2017-03-31'),
	(39, '2017-04-30'),
	(40, '2017-05-31'),
	(41, '2017-06-30'),
	(42, '2017-07-31'),
	(43, '2017-08-31'),
	(44, '2017-09-30'),
	(45, '2017-10-31'),
	(46, '2017-11-30'),
	(47, '2017-12-31'),
	(48, '2018-01-31'),
	(49, '2018-02-28'),
	(50, '2018-03-31'),
	(51, '2018-04-30'),
	(52, '2018-05-31'),
	(53, '2018-06-30'),
	(54, '2018-07-31'),
	(55, '2018-08-31'),
	(56, '2018-09-30'),
	(57, '2018-10-31'),
	(58, '2018-11-30'),
	(59, '2018-12-31'),
	(60, '2019-01-31'),
	(61, '2019-02-28'),
	(62, '2019-03-31'),
	(63, '2019-04-30'),
	(64, '2019-05-31'),
	(65, '2019-06-30'),
	(66, '2019-07-31'),
	(67, '2019-08-31'),
	(68, '2019-09-30'),
	(69, '2019-10-31'),
	(70, '2019-11-30'),
	(71, '2019-12-31');
/*!40000 ALTER TABLE `periods` ENABLE KEYS */;

-- Dumping structure for table cncerp.pickinglistdetails
CREATE TABLE IF NOT EXISTS `pickinglistdetails` (
  `pickinglistno` int(11) NOT NULL DEFAULT 0,
  `pickinglistlineno` int(11) NOT NULL DEFAULT 0,
  `orderlineno` int(11) NOT NULL DEFAULT 0,
  `qtyexpected` double NOT NULL DEFAULT 0,
  `qtypicked` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`pickinglistno`,`pickinglistlineno`),
  CONSTRAINT `pickinglistdetails_ibfk_1` FOREIGN KEY (`pickinglistno`) REFERENCES `pickinglists` (`pickinglistno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.pickinglistdetails: ~0 rows (大约)
/*!40000 ALTER TABLE `pickinglistdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `pickinglistdetails` ENABLE KEYS */;

-- Dumping structure for table cncerp.pickinglists
CREATE TABLE IF NOT EXISTS `pickinglists` (
  `pickinglistno` int(11) NOT NULL DEFAULT 0,
  `orderno` int(11) NOT NULL DEFAULT 0,
  `pickinglistdate` date NOT NULL DEFAULT '1000-01-01',
  `dateprinted` date NOT NULL DEFAULT '1000-01-01',
  `deliverynotedate` date NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (`pickinglistno`),
  KEY `pickinglists_ibfk_1` (`orderno`),
  CONSTRAINT `pickinglists_ibfk_1` FOREIGN KEY (`orderno`) REFERENCES `salesorders` (`orderno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.pickinglists: ~0 rows (大约)
/*!40000 ALTER TABLE `pickinglists` DISABLE KEYS */;
/*!40000 ALTER TABLE `pickinglists` ENABLE KEYS */;

-- Dumping structure for table cncerp.pickreq
CREATE TABLE IF NOT EXISTS `pickreq` (
  `prid` int(11) NOT NULL AUTO_INCREMENT,
  `initiator` varchar(20) NOT NULL DEFAULT '',
  `shippedby` varchar(20) NOT NULL DEFAULT '',
  `initdate` date NOT NULL DEFAULT '1000-01-01',
  `requestdate` date NOT NULL DEFAULT '1000-01-01',
  `shipdate` date NOT NULL DEFAULT '1000-01-01',
  `status` varchar(12) NOT NULL DEFAULT '',
  `comments` text DEFAULT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT 0,
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `orderno` int(11) NOT NULL DEFAULT 1,
  `consignment` varchar(15) NOT NULL DEFAULT '',
  `packages` int(11) NOT NULL DEFAULT 1 COMMENT 'number of cartons',
  PRIMARY KEY (`prid`),
  KEY `orderno` (`orderno`),
  KEY `requestdate` (`requestdate`),
  KEY `shipdate` (`shipdate`),
  KEY `status` (`status`),
  KEY `closed` (`closed`),
  KEY `loccode` (`loccode`),
  CONSTRAINT `pickreq_ibfk_1` FOREIGN KEY (`loccode`) REFERENCES `locations` (`loccode`),
  CONSTRAINT `pickreq_ibfk_2` FOREIGN KEY (`orderno`) REFERENCES `salesorders` (`orderno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.pickreq: ~0 rows (大约)
/*!40000 ALTER TABLE `pickreq` DISABLE KEYS */;
/*!40000 ALTER TABLE `pickreq` ENABLE KEYS */;

-- Dumping structure for table cncerp.pickreqdetails
CREATE TABLE IF NOT EXISTS `pickreqdetails` (
  `detailno` int(11) NOT NULL AUTO_INCREMENT,
  `prid` int(11) NOT NULL DEFAULT 1,
  `orderlineno` int(11) NOT NULL DEFAULT 0,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `qtyexpected` double NOT NULL DEFAULT 0,
  `qtypicked` double NOT NULL DEFAULT 0,
  `invoicedqty` double NOT NULL DEFAULT 0,
  `shipqty` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`detailno`),
  KEY `prid` (`prid`),
  KEY `stockid` (`stockid`),
  CONSTRAINT `pickreqdetails_ibfk_1` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `pickreqdetails_ibfk_2` FOREIGN KEY (`prid`) REFERENCES `pickreq` (`prid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.pickreqdetails: ~0 rows (大约)
/*!40000 ALTER TABLE `pickreqdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `pickreqdetails` ENABLE KEYS */;

-- Dumping structure for table cncerp.pickserialdetails
CREATE TABLE IF NOT EXISTS `pickserialdetails` (
  `serialmoveid` int(11) NOT NULL AUTO_INCREMENT,
  `detailno` int(11) NOT NULL DEFAULT 1,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `serialno` varchar(30) NOT NULL DEFAULT '',
  `moveqty` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`serialmoveid`),
  KEY `detailno` (`detailno`),
  KEY `stockid` (`stockid`,`serialno`),
  KEY `serialno` (`serialno`),
  CONSTRAINT `pickserialdetails_ibfk_1` FOREIGN KEY (`detailno`) REFERENCES `pickreqdetails` (`detailno`),
  CONSTRAINT `pickserialdetails_ibfk_2` FOREIGN KEY (`stockid`, `serialno`) REFERENCES `stockserialitems` (`stockid`, `serialno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.pickserialdetails: ~0 rows (大约)
/*!40000 ALTER TABLE `pickserialdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `pickserialdetails` ENABLE KEYS */;

-- Dumping structure for table cncerp.pricematrix
CREATE TABLE IF NOT EXISTS `pricematrix` (
  `salestype` char(2) NOT NULL DEFAULT '',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `quantitybreak` int(11) NOT NULL DEFAULT 1,
  `price` double NOT NULL DEFAULT 0,
  `currabrev` char(3) NOT NULL DEFAULT '',
  `startdate` date NOT NULL DEFAULT '1000-01-01',
  `enddate` date NOT NULL DEFAULT '9999-12-31',
  PRIMARY KEY (`salestype`,`stockid`,`currabrev`,`quantitybreak`,`startdate`,`enddate`),
  KEY `SalesType` (`salestype`),
  KEY `currabrev` (`currabrev`),
  KEY `stockid` (`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.pricematrix: ~0 rows (大约)
/*!40000 ALTER TABLE `pricematrix` DISABLE KEYS */;
/*!40000 ALTER TABLE `pricematrix` ENABLE KEYS */;

-- Dumping structure for table cncerp.prices
CREATE TABLE IF NOT EXISTS `prices` (
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `typeabbrev` char(2) NOT NULL DEFAULT '',
  `currabrev` char(3) NOT NULL DEFAULT '',
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `startdate` date NOT NULL DEFAULT '1000-01-01',
  `enddate` date NOT NULL DEFAULT '9999-12-31',
  PRIMARY KEY (`stockid`,`typeabbrev`,`currabrev`,`debtorno`,`branchcode`,`startdate`,`enddate`),
  KEY `CurrAbrev` (`currabrev`),
  KEY `DebtorNo` (`debtorno`),
  KEY `StockID` (`stockid`),
  KEY `TypeAbbrev` (`typeabbrev`),
  CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `prices_ibfk_2` FOREIGN KEY (`currabrev`) REFERENCES `currencies` (`currabrev`),
  CONSTRAINT `prices_ibfk_3` FOREIGN KEY (`typeabbrev`) REFERENCES `salestypes` (`typeabbrev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.prices: ~0 rows (大约)
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;

-- Dumping structure for table cncerp.prodspecs
CREATE TABLE IF NOT EXISTS `prodspecs` (
  `keyval` varchar(25) NOT NULL,
  `testid` int(11) NOT NULL,
  `defaultvalue` varchar(150) NOT NULL DEFAULT '',
  `targetvalue` varchar(30) NOT NULL DEFAULT '',
  `rangemin` float DEFAULT NULL,
  `rangemax` float DEFAULT NULL,
  `showoncert` tinyint(11) NOT NULL DEFAULT 1,
  `showonspec` tinyint(4) NOT NULL DEFAULT 1,
  `showontestplan` tinyint(4) NOT NULL DEFAULT 1,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`keyval`,`testid`),
  KEY `testid` (`testid`),
  CONSTRAINT `prodspecs_ibfk_1` FOREIGN KEY (`testid`) REFERENCES `qatests` (`testid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.prodspecs: ~0 rows (大约)
/*!40000 ALTER TABLE `prodspecs` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodspecs` ENABLE KEYS */;

-- Dumping structure for table cncerp.purchdata
CREATE TABLE IF NOT EXISTS `purchdata` (
  `supplierno` char(10) NOT NULL DEFAULT '',
  `stockid` char(20) NOT NULL DEFAULT '',
  `price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `suppliersuom` char(50) NOT NULL DEFAULT '',
  `conversionfactor` double NOT NULL DEFAULT 1,
  `supplierdescription` char(50) NOT NULL DEFAULT '',
  `leadtime` smallint(6) NOT NULL DEFAULT 1,
  `preferred` tinyint(4) NOT NULL DEFAULT 0,
  `effectivefrom` date NOT NULL,
  `suppliers_partno` varchar(50) NOT NULL DEFAULT '',
  `minorderqty` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`supplierno`,`stockid`,`effectivefrom`),
  KEY `StockID` (`stockid`),
  KEY `SupplierNo` (`supplierno`),
  KEY `Preferred` (`preferred`),
  CONSTRAINT `purchdata_ibfk_1` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `purchdata_ibfk_2` FOREIGN KEY (`supplierno`) REFERENCES `suppliers` (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.purchdata: ~0 rows (大约)
/*!40000 ALTER TABLE `purchdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchdata` ENABLE KEYS */;

-- Dumping structure for table cncerp.purchorderauth
CREATE TABLE IF NOT EXISTS `purchorderauth` (
  `userid` varchar(20) NOT NULL DEFAULT '',
  `currabrev` char(3) NOT NULL DEFAULT '',
  `cancreate` smallint(2) NOT NULL DEFAULT 0,
  `authlevel` double NOT NULL DEFAULT 0,
  `offhold` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`userid`,`currabrev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.purchorderauth: ~0 rows (大约)
/*!40000 ALTER TABLE `purchorderauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchorderauth` ENABLE KEYS */;

-- Dumping structure for table cncerp.purchorderdetails
CREATE TABLE IF NOT EXISTS `purchorderdetails` (
  `podetailitem` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` int(11) NOT NULL DEFAULT 0,
  `itemcode` varchar(20) NOT NULL DEFAULT '',
  `deliverydate` date NOT NULL DEFAULT '1000-01-01',
  `itemdescription` varchar(100) NOT NULL,
  `glcode` varchar(20) NOT NULL DEFAULT '0',
  `qtyinvoiced` double NOT NULL DEFAULT 0,
  `unitprice` double NOT NULL DEFAULT 0,
  `actprice` double NOT NULL DEFAULT 0,
  `stdcostunit` double NOT NULL DEFAULT 0,
  `quantityord` double NOT NULL DEFAULT 0,
  `quantityrecd` double NOT NULL DEFAULT 0,
  `shiptref` int(11) NOT NULL DEFAULT 0,
  `jobref` varchar(20) NOT NULL DEFAULT '',
  `completed` tinyint(4) NOT NULL DEFAULT 0,
  `suppliersunit` varchar(50) DEFAULT NULL,
  `suppliers_partno` varchar(50) NOT NULL DEFAULT '',
  `assetid` int(11) NOT NULL DEFAULT 0,
  `conversionfactor` double NOT NULL DEFAULT 1,
  PRIMARY KEY (`podetailitem`),
  KEY `DeliveryDate` (`deliverydate`),
  KEY `GLCode` (`glcode`),
  KEY `ItemCode` (`itemcode`),
  KEY `JobRef` (`jobref`),
  KEY `OrderNo` (`orderno`),
  KEY `ShiptRef` (`shiptref`),
  KEY `Completed` (`completed`),
  CONSTRAINT `purchorderdetails_ibfk_1` FOREIGN KEY (`orderno`) REFERENCES `purchorders` (`orderno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.purchorderdetails: ~0 rows (大约)
/*!40000 ALTER TABLE `purchorderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchorderdetails` ENABLE KEYS */;

-- Dumping structure for table cncerp.purchorders
CREATE TABLE IF NOT EXISTS `purchorders` (
  `orderno` int(11) NOT NULL AUTO_INCREMENT,
  `supplierno` varchar(10) NOT NULL DEFAULT '',
  `comments` longblob DEFAULT NULL,
  `orddate` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `rate` double NOT NULL DEFAULT 1,
  `dateprinted` datetime DEFAULT NULL,
  `allowprint` tinyint(4) NOT NULL DEFAULT 1,
  `initiator` varchar(20) DEFAULT NULL,
  `requisitionno` varchar(15) DEFAULT NULL,
  `intostocklocation` varchar(5) NOT NULL DEFAULT '',
  `deladd1` varchar(40) NOT NULL DEFAULT '',
  `deladd2` varchar(40) NOT NULL DEFAULT '',
  `deladd3` varchar(40) NOT NULL DEFAULT '',
  `deladd4` varchar(40) NOT NULL DEFAULT '',
  `deladd5` varchar(20) NOT NULL DEFAULT '',
  `deladd6` varchar(15) NOT NULL DEFAULT '',
  `tel` varchar(30) NOT NULL DEFAULT '',
  `suppdeladdress1` varchar(40) NOT NULL DEFAULT '',
  `suppdeladdress2` varchar(40) NOT NULL DEFAULT '',
  `suppdeladdress3` varchar(40) NOT NULL DEFAULT '',
  `suppdeladdress4` varchar(40) NOT NULL DEFAULT '',
  `suppdeladdress5` varchar(20) NOT NULL DEFAULT '',
  `suppdeladdress6` varchar(15) NOT NULL DEFAULT '',
  `suppliercontact` varchar(30) NOT NULL DEFAULT '',
  `supptel` varchar(30) NOT NULL DEFAULT '',
  `contact` varchar(30) NOT NULL DEFAULT '',
  `version` decimal(3,2) NOT NULL DEFAULT 1.00,
  `revised` date NOT NULL DEFAULT '1000-01-01',
  `realorderno` varchar(16) NOT NULL DEFAULT '',
  `deliveryby` varchar(100) NOT NULL DEFAULT '',
  `deliverydate` date NOT NULL DEFAULT '1000-01-01',
  `status` varchar(12) NOT NULL DEFAULT '',
  `stat_comment` text NOT NULL,
  `paymentterms` char(2) NOT NULL DEFAULT '',
  `port` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`orderno`),
  KEY `OrdDate` (`orddate`),
  KEY `SupplierNo` (`supplierno`),
  KEY `IntoStockLocation` (`intostocklocation`),
  KEY `AllowPrintPO` (`allowprint`),
  CONSTRAINT `purchorders_ibfk_1` FOREIGN KEY (`supplierno`) REFERENCES `suppliers` (`supplierid`),
  CONSTRAINT `purchorders_ibfk_2` FOREIGN KEY (`intostocklocation`) REFERENCES `locations` (`loccode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.purchorders: ~0 rows (大约)
/*!40000 ALTER TABLE `purchorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchorders` ENABLE KEYS */;

-- Dumping structure for table cncerp.qasamples
CREATE TABLE IF NOT EXISTS `qasamples` (
  `sampleid` int(11) NOT NULL AUTO_INCREMENT,
  `prodspeckey` varchar(25) NOT NULL DEFAULT '',
  `lotkey` varchar(25) NOT NULL DEFAULT '',
  `identifier` varchar(10) NOT NULL DEFAULT '',
  `createdby` varchar(15) NOT NULL DEFAULT '',
  `sampledate` date NOT NULL DEFAULT '1000-01-01',
  `comments` varchar(255) NOT NULL DEFAULT '',
  `cert` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sampleid`),
  KEY `prodspeckey` (`prodspeckey`,`lotkey`),
  CONSTRAINT `qasamples_ibfk_1` FOREIGN KEY (`prodspeckey`) REFERENCES `prodspecs` (`keyval`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.qasamples: ~0 rows (大约)
/*!40000 ALTER TABLE `qasamples` DISABLE KEYS */;
/*!40000 ALTER TABLE `qasamples` ENABLE KEYS */;

-- Dumping structure for table cncerp.qatests
CREATE TABLE IF NOT EXISTS `qatests` (
  `testid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `method` varchar(20) DEFAULT NULL,
  `groupby` varchar(20) DEFAULT NULL,
  `units` varchar(20) NOT NULL,
  `type` varchar(15) NOT NULL,
  `defaultvalue` varchar(150) NOT NULL DEFAULT '',
  `numericvalue` tinyint(4) NOT NULL DEFAULT 0,
  `showoncert` int(11) NOT NULL DEFAULT 1,
  `showonspec` int(11) NOT NULL DEFAULT 1,
  `showontestplan` tinyint(4) NOT NULL DEFAULT 1,
  `active` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`testid`),
  KEY `name` (`name`),
  KEY `groupname` (`groupby`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.qatests: ~0 rows (大约)
/*!40000 ALTER TABLE `qatests` DISABLE KEYS */;
/*!40000 ALTER TABLE `qatests` ENABLE KEYS */;

-- Dumping structure for table cncerp.recurringsalesorders
CREATE TABLE IF NOT EXISTS `recurringsalesorders` (
  `recurrorderno` int(11) NOT NULL AUTO_INCREMENT,
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `customerref` varchar(50) NOT NULL DEFAULT '',
  `buyername` varchar(50) DEFAULT NULL,
  `comments` longblob DEFAULT NULL,
  `orddate` date NOT NULL DEFAULT '1000-01-01',
  `ordertype` char(2) NOT NULL DEFAULT '',
  `shipvia` int(11) NOT NULL DEFAULT 0,
  `deladd1` varchar(40) NOT NULL DEFAULT '',
  `deladd2` varchar(40) NOT NULL DEFAULT '',
  `deladd3` varchar(40) NOT NULL DEFAULT '',
  `deladd4` varchar(40) DEFAULT NULL,
  `deladd5` varchar(20) NOT NULL DEFAULT '',
  `deladd6` varchar(15) NOT NULL DEFAULT '',
  `contactphone` varchar(25) DEFAULT NULL,
  `contactemail` varchar(25) DEFAULT NULL,
  `deliverto` varchar(40) NOT NULL DEFAULT '',
  `freightcost` double NOT NULL DEFAULT 0,
  `fromstkloc` varchar(5) NOT NULL DEFAULT '',
  `lastrecurrence` date NOT NULL DEFAULT '1000-01-01',
  `stopdate` date NOT NULL DEFAULT '1000-01-01',
  `frequency` tinyint(4) NOT NULL DEFAULT 1,
  `autoinvoice` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`recurrorderno`),
  KEY `debtorno` (`debtorno`),
  KEY `orddate` (`orddate`),
  KEY `ordertype` (`ordertype`),
  KEY `locationindex` (`fromstkloc`),
  KEY `branchcode` (`branchcode`,`debtorno`),
  CONSTRAINT `recurringsalesorders_ibfk_1` FOREIGN KEY (`branchcode`, `debtorno`) REFERENCES `custbranch` (`branchcode`, `debtorno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.recurringsalesorders: ~0 rows (大约)
/*!40000 ALTER TABLE `recurringsalesorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurringsalesorders` ENABLE KEYS */;

-- Dumping structure for table cncerp.recurrsalesorderdetails
CREATE TABLE IF NOT EXISTS `recurrsalesorderdetails` (
  `recurrorderno` int(11) NOT NULL DEFAULT 0,
  `stkcode` varchar(20) NOT NULL DEFAULT '',
  `unitprice` double NOT NULL DEFAULT 0,
  `quantity` double NOT NULL DEFAULT 0,
  `discountpercent` double NOT NULL DEFAULT 0,
  `narrative` text NOT NULL,
  KEY `orderno` (`recurrorderno`),
  KEY `stkcode` (`stkcode`),
  CONSTRAINT `recurrsalesorderdetails_ibfk_1` FOREIGN KEY (`recurrorderno`) REFERENCES `recurringsalesorders` (`recurrorderno`),
  CONSTRAINT `recurrsalesorderdetails_ibfk_2` FOREIGN KEY (`stkcode`) REFERENCES `stockmaster` (`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.recurrsalesorderdetails: ~0 rows (大约)
/*!40000 ALTER TABLE `recurrsalesorderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurrsalesorderdetails` ENABLE KEYS */;

-- Dumping structure for table cncerp.relateditems
CREATE TABLE IF NOT EXISTS `relateditems` (
  `stockid` varchar(20) CHARACTER SET utf8 NOT NULL,
  `related` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`stockid`,`related`),
  UNIQUE KEY `Related` (`related`,`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table cncerp.relateditems: ~0 rows (大约)
/*!40000 ALTER TABLE `relateditems` DISABLE KEYS */;
/*!40000 ALTER TABLE `relateditems` ENABLE KEYS */;

-- Dumping structure for table cncerp.reportcolumns
CREATE TABLE IF NOT EXISTS `reportcolumns` (
  `reportid` smallint(6) NOT NULL DEFAULT 0,
  `colno` smallint(6) NOT NULL DEFAULT 0,
  `heading1` varchar(15) NOT NULL DEFAULT '',
  `heading2` varchar(15) DEFAULT NULL,
  `calculation` tinyint(1) NOT NULL DEFAULT 0,
  `periodfrom` smallint(6) DEFAULT NULL,
  `periodto` smallint(6) DEFAULT NULL,
  `datatype` varchar(15) DEFAULT NULL,
  `colnumerator` tinyint(4) DEFAULT NULL,
  `coldenominator` tinyint(4) DEFAULT NULL,
  `calcoperator` char(1) DEFAULT NULL,
  `budgetoractual` tinyint(1) NOT NULL DEFAULT 0,
  `valformat` char(1) NOT NULL DEFAULT 'N',
  `constant` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`reportid`,`colno`),
  CONSTRAINT `reportcolumns_ibfk_1` FOREIGN KEY (`reportid`) REFERENCES `reportheaders` (`reportid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.reportcolumns: ~0 rows (大约)
/*!40000 ALTER TABLE `reportcolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportcolumns` ENABLE KEYS */;

-- Dumping structure for table cncerp.reportfields
CREATE TABLE IF NOT EXISTS `reportfields` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `reportid` int(5) NOT NULL DEFAULT 0,
  `entrytype` varchar(15) NOT NULL DEFAULT '',
  `seqnum` int(3) NOT NULL DEFAULT 0,
  `fieldname` varchar(80) NOT NULL DEFAULT '',
  `displaydesc` varchar(25) NOT NULL DEFAULT '',
  `visible` enum('1','0') NOT NULL DEFAULT '1',
  `columnbreak` enum('1','0') NOT NULL DEFAULT '1',
  `params` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reportid` (`reportid`)
) ENGINE=MyISAM AUTO_INCREMENT=1828 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.reportfields: 19 rows
/*!40000 ALTER TABLE `reportfields` DISABLE KEYS */;
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES
	(1808, 137, 'fieldlist', 1, 'debtortrans.order_', '订单号', '1', '0', '0'),
	(1807, 137, 'dateselect', 0, '', 'a', '1', '1', 'a'),
	(1809, 137, 'fieldlist', 2, 'debtortrans.transno', '交易号', '1', '0', '0'),
	(1810, 137, 'fieldlist', 3, 'systypes.typename', '交易类型', '1', '0', '0'),
	(1811, 137, 'fieldlist', 4, 'debtorsmaster.name', '客户名称', '1', '0', '0'),
	(1812, 137, 'fieldlist', 5, 'debtortrans.trandate', '交易日期', '1', '0', '0'),
	(1813, 137, 'fieldlist', 6, 'stockmaster.description', '商品名称', '1', '0', '0'),
	(1814, 137, 'fieldlist', 7, 'stockmoves.price', '单价', '1', '0', '0'),
	(1815, 137, 'fieldlist', 8, 'stockmoves.qty', '商品数量', '1', '0', '0'),
	(1816, 137, 'fieldlist', 9, 'debtortrans.ovamount', '商品金额', '1', '0', '0'),
	(1817, 137, 'trunclong', 0, '', '', '1', '1', '0'),
	(1820, 139, 'critlist', 1, 'prices.currabrev', 'Currency', '0', '0', '0'),
	(1821, 139, 'dateselect', 0, '', '', '1', '1', 'a'),
	(1822, 139, 'fieldlist', 1, 'stockmaster.stockid', 'Item', '1', '1', '0'),
	(1823, 139, 'fieldlist', 2, 'prices.price', 'Price', '1', '1', '0'),
	(1824, 139, 'fieldlist', 3, 'prices.typeabbrev', 'Price List', '1', '1', '0'),
	(1825, 139, 'fieldlist', 4, 'prices.currabrev', 'Currency', '1', '1', '0'),
	(1826, 139, 'sortlist', 1, 'stockmaster.stockid', 'Item', '0', '0', '1'),
	(1827, 139, 'trunclong', 0, '', '', '1', '1', '0');
/*!40000 ALTER TABLE `reportfields` ENABLE KEYS */;

-- Dumping structure for table cncerp.reportheaders
CREATE TABLE IF NOT EXISTS `reportheaders` (
  `reportid` smallint(6) NOT NULL AUTO_INCREMENT,
  `reportheading` varchar(80) NOT NULL DEFAULT '',
  `groupbydata1` varchar(15) NOT NULL DEFAULT '',
  `newpageafter1` tinyint(1) NOT NULL DEFAULT 0,
  `lower1` varchar(10) NOT NULL DEFAULT '',
  `upper1` varchar(10) NOT NULL DEFAULT '',
  `groupbydata2` varchar(15) DEFAULT NULL,
  `newpageafter2` tinyint(1) NOT NULL DEFAULT 0,
  `lower2` varchar(10) DEFAULT NULL,
  `upper2` varchar(10) DEFAULT NULL,
  `groupbydata3` varchar(15) DEFAULT NULL,
  `newpageafter3` tinyint(1) NOT NULL DEFAULT 0,
  `lower3` varchar(10) DEFAULT NULL,
  `upper3` varchar(10) DEFAULT NULL,
  `groupbydata4` varchar(15) NOT NULL DEFAULT '',
  `newpageafter4` tinyint(1) NOT NULL DEFAULT 0,
  `upper4` varchar(10) NOT NULL DEFAULT '',
  `lower4` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`reportid`),
  KEY `ReportHeading` (`reportheading`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.reportheaders: ~0 rows (大约)
/*!40000 ALTER TABLE `reportheaders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportheaders` ENABLE KEYS */;

-- Dumping structure for table cncerp.reportlinks
CREATE TABLE IF NOT EXISTS `reportlinks` (
  `table1` varchar(25) NOT NULL DEFAULT '',
  `table2` varchar(25) NOT NULL DEFAULT '',
  `equation` varchar(75) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.reportlinks: ~0 rows (大约)
/*!40000 ALTER TABLE `reportlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportlinks` ENABLE KEYS */;

-- Dumping structure for table cncerp.reports
CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `reportname` varchar(30) NOT NULL DEFAULT '',
  `reporttype` char(3) NOT NULL DEFAULT 'rpt',
  `groupname` varchar(9) NOT NULL DEFAULT 'misc',
  `defaultreport` enum('1','0') NOT NULL DEFAULT '0',
  `papersize` varchar(15) NOT NULL DEFAULT 'A4,210,297',
  `paperorientation` enum('P','L') NOT NULL DEFAULT 'P',
  `margintop` int(3) NOT NULL DEFAULT 10,
  `marginbottom` int(3) NOT NULL DEFAULT 10,
  `marginleft` int(3) NOT NULL DEFAULT 10,
  `marginright` int(3) NOT NULL DEFAULT 10,
  `coynamefont` varchar(20) NOT NULL DEFAULT 'Helvetica',
  `coynamefontsize` int(3) NOT NULL DEFAULT 12,
  `coynamefontcolor` varchar(11) NOT NULL DEFAULT '0,0,0',
  `coynamealign` enum('L','C','R') NOT NULL DEFAULT 'C',
  `coynameshow` enum('1','0') NOT NULL DEFAULT '1',
  `title1desc` varchar(50) NOT NULL DEFAULT '%reportname%',
  `title1font` varchar(20) NOT NULL DEFAULT 'Helvetica',
  `title1fontsize` int(3) NOT NULL DEFAULT 10,
  `title1fontcolor` varchar(11) NOT NULL DEFAULT '0,0,0',
  `title1fontalign` enum('L','C','R') NOT NULL DEFAULT 'C',
  `title1show` enum('1','0') NOT NULL DEFAULT '1',
  `title2desc` varchar(50) NOT NULL DEFAULT 'Report Generated %date%',
  `title2font` varchar(20) NOT NULL DEFAULT 'Helvetica',
  `title2fontsize` int(3) NOT NULL DEFAULT 10,
  `title2fontcolor` varchar(11) NOT NULL DEFAULT '0,0,0',
  `title2fontalign` enum('L','C','R') NOT NULL DEFAULT 'C',
  `title2show` enum('1','0') NOT NULL DEFAULT '1',
  `filterfont` varchar(10) NOT NULL DEFAULT 'Helvetica',
  `filterfontsize` int(3) NOT NULL DEFAULT 8,
  `filterfontcolor` varchar(11) NOT NULL DEFAULT '0,0,0',
  `filterfontalign` enum('L','C','R') NOT NULL DEFAULT 'L',
  `datafont` varchar(10) NOT NULL DEFAULT 'Helvetica',
  `datafontsize` int(3) NOT NULL DEFAULT 10,
  `datafontcolor` varchar(10) NOT NULL DEFAULT 'black',
  `datafontalign` enum('L','C','R') NOT NULL DEFAULT 'L',
  `totalsfont` varchar(10) NOT NULL DEFAULT 'Helvetica',
  `totalsfontsize` int(3) NOT NULL DEFAULT 10,
  `totalsfontcolor` varchar(11) NOT NULL DEFAULT '0,0,0',
  `totalsfontalign` enum('L','C','R') NOT NULL DEFAULT 'L',
  `col1width` int(3) NOT NULL DEFAULT 25,
  `col2width` int(3) NOT NULL DEFAULT 25,
  `col3width` int(3) NOT NULL DEFAULT 25,
  `col4width` int(3) NOT NULL DEFAULT 25,
  `col5width` int(3) NOT NULL DEFAULT 25,
  `col6width` int(3) NOT NULL DEFAULT 25,
  `col7width` int(3) NOT NULL DEFAULT 25,
  `col8width` int(3) NOT NULL DEFAULT 25,
  `col9width` int(3) NOT NULL DEFAULT 25,
  `col10width` int(3) NOT NULL DEFAULT 25,
  `col11width` int(3) NOT NULL DEFAULT 25,
  `col12width` int(3) NOT NULL DEFAULT 25,
  `col13width` int(3) NOT NULL DEFAULT 25,
  `col14width` int(3) NOT NULL DEFAULT 25,
  `col15width` int(3) NOT NULL DEFAULT 25,
  `col16width` int(3) NOT NULL DEFAULT 25,
  `col17width` int(3) NOT NULL DEFAULT 25,
  `col18width` int(3) NOT NULL DEFAULT 25,
  `col19width` int(3) NOT NULL DEFAULT 25,
  `col20width` int(3) NOT NULL DEFAULT 25,
  `table1` varchar(25) NOT NULL DEFAULT '',
  `table2` varchar(25) DEFAULT NULL,
  `table2criteria` varchar(75) DEFAULT NULL,
  `table3` varchar(25) DEFAULT NULL,
  `table3criteria` varchar(75) DEFAULT NULL,
  `table4` varchar(25) DEFAULT NULL,
  `table4criteria` varchar(75) DEFAULT NULL,
  `table5` varchar(25) DEFAULT NULL,
  `table5criteria` varchar(75) DEFAULT NULL,
  `table6` varchar(25) DEFAULT NULL,
  `table6criteria` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`reportname`,`groupname`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.reports: 1 rows
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` (`id`, `reportname`, `reporttype`, `groupname`, `defaultreport`, `papersize`, `paperorientation`, `margintop`, `marginbottom`, `marginleft`, `marginright`, `coynamefont`, `coynamefontsize`, `coynamefontcolor`, `coynamealign`, `coynameshow`, `title1desc`, `title1font`, `title1fontsize`, `title1fontcolor`, `title1fontalign`, `title1show`, `title2desc`, `title2font`, `title2fontsize`, `title2fontcolor`, `title2fontalign`, `title2show`, `filterfont`, `filterfontsize`, `filterfontcolor`, `filterfontalign`, `datafont`, `datafontsize`, `datafontcolor`, `datafontalign`, `totalsfont`, `totalsfontsize`, `totalsfontcolor`, `totalsfontalign`, `col1width`, `col2width`, `col3width`, `col4width`, `col5width`, `col6width`, `col7width`, `col8width`, `col9width`, `col10width`, `col11width`, `col12width`, `col13width`, `col14width`, `col15width`, `col16width`, `col17width`, `col18width`, `col19width`, `col20width`, `table1`, `table2`, `table2criteria`, `table3`, `table3criteria`, `table4`, `table4criteria`, `table5`, `table5criteria`, `table6`, `table6criteria`) VALUES
	(137, '销售台账', 'rpt', 'ord', '1', 'A3:297:420', 'P', 10, 10, 10, 10, 'helvetica', 12, '0:0:0', 'C', '1', '%reportname%', 'helvetica', 10, '0:0:0', 'C', '1', 'Report Generated %date%', 'helvetica', 10, '0:0:0', 'C', '1', 'helvetica', 8, '0:0:0', 'L', 'helvetica', 10, '0:0:0', 'L', 'helvetica', 10, '0:0:0', 'L', 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 'debtortrans', 'stockmoves', 'debtortrans.transno=stockmoves.transno and debtortrans.type=stockmoves.type', 'systypes', 'debtortrans.type=systypes.typeid', 'salesorders', 'debtortrans.order_=salesorders.orderno', 'debtorsmaster', 'debtorsmaster.debtorno=debtortrans.debtorno', 'stockmaster', 'stockmaster.stockid=stockmoves.stockid');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;

-- Dumping structure for table cncerp.salesanalysis
CREATE TABLE IF NOT EXISTS `salesanalysis` (
  `typeabbrev` char(2) NOT NULL DEFAULT '',
  `periodno` smallint(6) NOT NULL DEFAULT 0,
  `amt` double NOT NULL DEFAULT 0,
  `cost` double NOT NULL DEFAULT 0,
  `cust` varchar(10) NOT NULL DEFAULT '',
  `custbranch` varchar(10) NOT NULL DEFAULT '',
  `qty` double NOT NULL DEFAULT 0,
  `disc` double NOT NULL DEFAULT 0,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `area` varchar(3) NOT NULL,
  `budgetoractual` tinyint(1) NOT NULL DEFAULT 0,
  `salesperson` varchar(4) NOT NULL DEFAULT '',
  `stkcategory` varchar(6) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `CustBranch` (`custbranch`),
  KEY `Cust` (`cust`),
  KEY `PeriodNo` (`periodno`),
  KEY `StkCategory` (`stkcategory`),
  KEY `StockID` (`stockid`),
  KEY `TypeAbbrev` (`typeabbrev`),
  KEY `Area` (`area`),
  KEY `BudgetOrActual` (`budgetoractual`),
  KEY `Salesperson` (`salesperson`),
  CONSTRAINT `salesanalysis_ibfk_1` FOREIGN KEY (`periodno`) REFERENCES `periods` (`periodno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.salesanalysis: ~0 rows (大约)
/*!40000 ALTER TABLE `salesanalysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesanalysis` ENABLE KEYS */;

-- Dumping structure for table cncerp.salescat
CREATE TABLE IF NOT EXISTS `salescat` (
  `salescatid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `parentcatid` tinyint(4) DEFAULT NULL,
  `salescatname` varchar(50) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1 COMMENT '1 if active 0 if inactive',
  `posactive` int(11) NOT NULL DEFAULT 1 COMMENT '1 if active 0 if inactive for pos',
  `posprinter` int(11) NOT NULL DEFAULT -1 COMMENT 'printer index',
  PRIMARY KEY (`salescatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.salescat: ~0 rows (大约)
/*!40000 ALTER TABLE `salescat` DISABLE KEYS */;
/*!40000 ALTER TABLE `salescat` ENABLE KEYS */;

-- Dumping structure for table cncerp.salescatprod
CREATE TABLE IF NOT EXISTS `salescatprod` (
  `salescatid` tinyint(4) NOT NULL DEFAULT 0,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(20) NOT NULL DEFAULT '',
  `Code0` varchar(20) NOT NULL DEFAULT '助记符',
  `Code` varchar(20) NOT NULL DEFAULT '' COMMENT '助记符',
  `units` varchar(20) NOT NULL DEFAULT '',
  `manufacturers_id` int(11) NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 0,
  `price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `posprinter` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`salescatid`,`stockid`),
  KEY `salescatid` (`salescatid`),
  KEY `stockid` (`stockid`),
  KEY `manufacturer_id` (`manufacturers_id`),
  CONSTRAINT `salescatprod_ibfk_1` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `salescatprod_ibfk_2` FOREIGN KEY (`salescatid`) REFERENCES `salescat` (`salescatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.salescatprod: ~0 rows (大约)
/*!40000 ALTER TABLE `salescatprod` DISABLE KEYS */;
/*!40000 ALTER TABLE `salescatprod` ENABLE KEYS */;

-- Dumping structure for table cncerp.salescattranslations
CREATE TABLE IF NOT EXISTS `salescattranslations` (
  `salescatid` tinyint(4) NOT NULL DEFAULT 0,
  `language_id` varchar(10) NOT NULL DEFAULT 'en_GB.utf8',
  `salescattranslation` varchar(40) NOT NULL,
  PRIMARY KEY (`salescatid`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.salescattranslations: ~0 rows (大约)
/*!40000 ALTER TABLE `salescattranslations` DISABLE KEYS */;
/*!40000 ALTER TABLE `salescattranslations` ENABLE KEYS */;

-- Dumping structure for table cncerp.salesglpostings
CREATE TABLE IF NOT EXISTS `salesglpostings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(3) NOT NULL,
  `stkcat` varchar(6) NOT NULL DEFAULT '',
  `discountglcode` varchar(20) NOT NULL DEFAULT '0',
  `salesglcode` varchar(20) NOT NULL DEFAULT '0',
  `salestype` char(2) NOT NULL DEFAULT 'AN',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Area_StkCat` (`area`,`stkcat`,`salestype`),
  KEY `Area` (`area`),
  KEY `StkCat` (`stkcat`),
  KEY `SalesType` (`salestype`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.salesglpostings: ~3 rows (大约)
/*!40000 ALTER TABLE `salesglpostings` DISABLE KEYS */;
INSERT INTO `salesglpostings` (`id`, `area`, `stkcat`, `discountglcode`, `salesglcode`, `salestype`) VALUES
	(12, '871', '01', '60010201', '60010201', 'AN'),
	(13, 'AN', 'ANY', '60010101', '60010101', 'AN'),
	(14, '870', 'ANY', '60010101', '60010101', 'AN');
/*!40000 ALTER TABLE `salesglpostings` ENABLE KEYS */;

-- Dumping structure for table cncerp.salesman
CREATE TABLE IF NOT EXISTS `salesman` (
  `salesmancode` varchar(4) NOT NULL DEFAULT '',
  `salesmanname` char(30) NOT NULL DEFAULT '',
  `smantel` char(20) NOT NULL DEFAULT '',
  `smanfax` char(20) NOT NULL DEFAULT '',
  `commissionrate1` double NOT NULL DEFAULT 0,
  `breakpoint` decimal(10,0) NOT NULL DEFAULT 0,
  `commissionrate2` double NOT NULL DEFAULT 0,
  `current` tinyint(4) NOT NULL COMMENT 'Salesman current (1) or not (0)',
  PRIMARY KEY (`salesmancode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.salesman: ~0 rows (大约)
/*!40000 ALTER TABLE `salesman` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesman` ENABLE KEYS */;

-- Dumping structure for table cncerp.salesorderdetails
CREATE TABLE IF NOT EXISTS `salesorderdetails` (
  `orderlineno` int(11) NOT NULL DEFAULT 0,
  `orderno` int(11) NOT NULL DEFAULT 0,
  `stkcode` varchar(20) NOT NULL DEFAULT '',
  `qtyinvoiced` double NOT NULL DEFAULT 0,
  `unitprice` double NOT NULL DEFAULT 0,
  `quantity` double NOT NULL DEFAULT 0,
  `estimate` tinyint(4) NOT NULL DEFAULT 0,
  `discountpercent` double NOT NULL DEFAULT 0,
  `actualdispatchdate` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `narrative` text DEFAULT NULL,
  `itemdue` date DEFAULT NULL COMMENT 'Due date for line item.  Some customers require \r\nacknowledgements with due dates by line item',
  `poline` varchar(10) DEFAULT NULL COMMENT 'Some Customers require acknowledgements with a PO line number for each sales line',
  `bomversion` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`orderlineno`,`orderno`),
  KEY `OrderNo` (`orderno`),
  KEY `StkCode` (`stkcode`),
  KEY `Completed` (`completed`),
  CONSTRAINT `salesorderdetails_ibfk_1` FOREIGN KEY (`orderno`) REFERENCES `salesorders` (`orderno`),
  CONSTRAINT `salesorderdetails_ibfk_2` FOREIGN KEY (`stkcode`) REFERENCES `stockmaster` (`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.salesorderdetails: ~0 rows (大约)
/*!40000 ALTER TABLE `salesorderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesorderdetails` ENABLE KEYS */;

-- Dumping structure for table cncerp.salesorderdetailsbom
CREATE TABLE IF NOT EXISTS `salesorderdetailsbom` (
  `parent` char(20) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sequence` int(11) NOT NULL DEFAULT 0,
  `version` int(11) NOT NULL,
  `component` char(20) NOT NULL DEFAULT '',
  `workcentreadded` char(5) NOT NULL DEFAULT '',
  `loccode` char(5) NOT NULL DEFAULT '',
  `effectiveafter` date NOT NULL DEFAULT '0000-00-00',
  `effectiveto` date NOT NULL DEFAULT '9999-12-31',
  `quantity` double NOT NULL DEFAULT 1,
  `autoissue` tinyint(4) NOT NULL DEFAULT 0,
  `remark` varchar(500) NOT NULL DEFAULT '',
  `digitals` int(11) NOT NULL DEFAULT 0,
  `isshow` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `Component` (`component`),
  KEY `LocCode` (`loccode`),
  KEY `Parent` (`parent`),
  CONSTRAINT `salesorderdetailsbom_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `salescatprod` (`stockid`),
  CONSTRAINT `salesorderdetailsbom_ibfk_2` FOREIGN KEY (`component`) REFERENCES `salescatprod` (`stockid`),
  CONSTRAINT `salesorderdetailsbom_ibfk_4` FOREIGN KEY (`loccode`) REFERENCES `locations` (`loccode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.salesorderdetailsbom: ~0 rows (大约)
/*!40000 ALTER TABLE `salesorderdetailsbom` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesorderdetailsbom` ENABLE KEYS */;

-- Dumping structure for table cncerp.salesorderdiscountauth
CREATE TABLE IF NOT EXISTS `salesorderdiscountauth` (
  `userid` varchar(20) NOT NULL DEFAULT '',
  `currabrev` char(3) NOT NULL DEFAULT '',
  `authlevel` double NOT NULL DEFAULT 0,
  `accountcode` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`,`currabrev`),
  KEY `salesorderdiscountauth_accountcode_1` (`accountcode`),
  KEY `salesorderdiscountauth_currabrev_1` (`currabrev`),
  CONSTRAINT `salesorderdiscountauth_accountcode_1` FOREIGN KEY (`accountcode`) REFERENCES `chartmaster` (`accountcode`),
  CONSTRAINT `salesorderdiscountauth_currabrev_1` FOREIGN KEY (`currabrev`) REFERENCES `currencies` (`currabrev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.salesorderdiscountauth: ~0 rows (大约)
/*!40000 ALTER TABLE `salesorderdiscountauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesorderdiscountauth` ENABLE KEYS */;

-- Dumping structure for table cncerp.salesorders
CREATE TABLE IF NOT EXISTS `salesorders` (
  `orderno` int(11) NOT NULL,
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `customerref` varchar(50) NOT NULL DEFAULT '',
  `buyername` varchar(50) DEFAULT NULL,
  `comments` longblob DEFAULT NULL,
  `orddate` date NOT NULL DEFAULT '1000-01-01',
  `ordertype` char(2) NOT NULL DEFAULT '',
  `shipvia` int(11) NOT NULL DEFAULT 0,
  `deladd1` varchar(40) NOT NULL DEFAULT '',
  `deladd2` varchar(40) NOT NULL DEFAULT '',
  `deladd3` varchar(40) NOT NULL DEFAULT '',
  `deladd4` varchar(40) DEFAULT NULL,
  `deladd5` varchar(20) NOT NULL DEFAULT '',
  `deladd6` varchar(15) NOT NULL DEFAULT '',
  `contactphone` varchar(25) DEFAULT NULL,
  `contactemail` varchar(40) DEFAULT NULL,
  `deliverto` varchar(40) NOT NULL DEFAULT '',
  `deliverblind` tinyint(1) DEFAULT 1,
  `freightcost` double NOT NULL DEFAULT 0,
  `fromstkloc` varchar(5) NOT NULL DEFAULT '',
  `deliverydate` date NOT NULL DEFAULT '1000-01-01',
  `confirmeddate` date NOT NULL DEFAULT '1000-01-01',
  `printedpackingslip` tinyint(4) NOT NULL DEFAULT 0,
  `datepackingslipprinted` date NOT NULL DEFAULT '1000-01-01',
  `quotation` tinyint(4) NOT NULL DEFAULT 0,
  `quotedate` date NOT NULL DEFAULT '1000-01-01',
  `poplaced` tinyint(4) NOT NULL DEFAULT 0,
  `salesperson` varchar(4) NOT NULL,
  `internalcomment` blob DEFAULT NULL,
  PRIMARY KEY (`orderno`),
  KEY `DebtorNo` (`debtorno`),
  KEY `OrdDate` (`orddate`),
  KEY `OrderType` (`ordertype`),
  KEY `LocationIndex` (`fromstkloc`),
  KEY `BranchCode` (`branchcode`,`debtorno`),
  KEY `ShipVia` (`shipvia`),
  KEY `quotation` (`quotation`),
  KEY `poplaced` (`poplaced`),
  KEY `salesperson` (`salesperson`),
  CONSTRAINT `salesorders_ibfk_1` FOREIGN KEY (`branchcode`, `debtorno`) REFERENCES `custbranch` (`branchcode`, `debtorno`),
  CONSTRAINT `salesorders_ibfk_2` FOREIGN KEY (`shipvia`) REFERENCES `shippers` (`shipper_id`),
  CONSTRAINT `salesorders_ibfk_3` FOREIGN KEY (`fromstkloc`) REFERENCES `locations` (`loccode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.salesorders: ~0 rows (大约)
/*!40000 ALTER TABLE `salesorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesorders` ENABLE KEYS */;

-- Dumping structure for table cncerp.salestypes
CREATE TABLE IF NOT EXISTS `salestypes` (
  `typeabbrev` char(2) NOT NULL DEFAULT '',
  `sales_type` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`typeabbrev`),
  KEY `Sales_Type` (`sales_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.salestypes: ~2 rows (大约)
/*!40000 ALTER TABLE `salestypes` DISABLE KEYS */;
INSERT INTO `salestypes` (`typeabbrev`, `sales_type`) VALUES
	('02', '批发'),
	('01', '零售');
/*!40000 ALTER TABLE `salestypes` ENABLE KEYS */;

-- Dumping structure for table cncerp.sampleresults
CREATE TABLE IF NOT EXISTS `sampleresults` (
  `resultid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sampleid` int(11) NOT NULL,
  `testid` int(11) NOT NULL,
  `defaultvalue` varchar(150) NOT NULL,
  `targetvalue` varchar(30) NOT NULL,
  `rangemin` float DEFAULT NULL,
  `rangemax` float DEFAULT NULL,
  `testvalue` varchar(30) NOT NULL DEFAULT '',
  `testdate` date NOT NULL DEFAULT '1000-01-01',
  `testedby` varchar(15) NOT NULL DEFAULT '',
  `comments` varchar(255) NOT NULL DEFAULT '',
  `isinspec` tinyint(4) NOT NULL DEFAULT 0,
  `showoncert` tinyint(4) NOT NULL DEFAULT 1,
  `showontestplan` tinyint(4) NOT NULL DEFAULT 1,
  `manuallyadded` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`resultid`),
  KEY `sampleid` (`sampleid`),
  KEY `testid` (`testid`),
  CONSTRAINT `sampleresults_ibfk_1` FOREIGN KEY (`testid`) REFERENCES `qatests` (`testid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.sampleresults: ~0 rows (大约)
/*!40000 ALTER TABLE `sampleresults` DISABLE KEYS */;
/*!40000 ALTER TABLE `sampleresults` ENABLE KEYS */;

-- Dumping structure for table cncerp.scripts
CREATE TABLE IF NOT EXISTS `scripts` (
  `script` varchar(78) NOT NULL DEFAULT '',
  `pagesecurity` int(11) NOT NULL DEFAULT 1,
  `description` text NOT NULL,
  PRIMARY KEY (`script`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.scripts: ~431 rows (大约)
/*!40000 ALTER TABLE `scripts` DISABLE KEYS */;
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES
	('AccountGroups.php', 10, '会计科目组设定'),
	('AccountSections.php', 10, '会计要素设定'),
	('AddCustomerContacts.php', 2, '顾客联系人设定'),
	('AddCustomerNotes.php', 2, '客户网络信息等设定'),
	('AddCustomerTypeNotes.php', 2, '顾客(组）备注'),
	('AgedControlledInventory.php', 11, 'Report of Controlled Items and their age'),
	('AgedDebtors.php', 3, '应收账款账龄分析表'),
	('AgedSuppliers.php', 3, '应付账款帐龄分析'),
	('AnalysisHorizontalIncome.php', 8, 'Shows the horizontal analysis of the statement of comprehensive income'),
	('AnalysisHorizontalPosition.php', 8, 'Shows the horizontal analysis of the statement of financial position'),
	('Areas.php', 15, '销售区域设定'),
	('AuditTrail.php', 15, '审核追踪黑匣子查询'),
	('AutomaticTranslationDescriptions.php', 15, 'Translates via Google Translator all empty translated descriptions'),
	('BankAccountBalances.php', 1, 'Shows bank accounts authorised for with balances'),
	('BankAccounts.php', 15, '银行账户设定'),
	('BankAccountUsers.php', 15, '银行账户授权'),
	('BankMatching.php', 7, '银行账户对账'),
	('BankReconciliation.php', 7, '银行对账单'),
	('BOMExtendedQty.php', 15, 'bom需列表求PDF'),
	('BOMIndented.php', 15, '缩排式BOM列表'),
	('BOMIndentedReverse.php', 15, '逆向缩排式BOM2PDF打印上层需求'),
	('BOMInquiry.php', 15, 'BOM成本'),
	('BOMListing.php', 15, 'BOM清单PDF'),
	('BOMs.php', 15, '多层BOM设定修改'),
	('COGSGLPostings.php', 15, '销售成本科目设置'),
	('CollectiveWorkOrderCost.php', 2, 'Multiple work orders cost review'),
	('CompanyPreferences.php', 15, '公司设定'),
	('ConfirmDispatchControlled_Invoice.php', 15, '指定受控物料的控制信息'),
	('ConfirmDispatch_Invoice.php', 2, '确认发货并为订单开发票'),
	('ContractBOM.php', 15, '合同明细输入'),
	('ContractCosting.php', 15, '合同成本'),
	('ContractOtherReqts.php', 15, '合同输入'),
	('Contracts.php', 15, '合同输入'),
	('CopyBOM.php', 15, '复制BOM'),
	('CostUpdate', 10, 'NB Not a script but allows users to maintain item costs from withing StockCostUpdate.php'),
	('CounterReturns.php', 5, 'Allows credits and refunds from the default Counter Sale account for an inventory location'),
	('CounterSales.php', 1, '门店销售'),
	('CreditItemsControlled.php', 21, '红字受控物料信息'),
	('CreditStatus.php', 15, '信用等级编号'),
	('Credit_Invoice.php', 21, '红字冲销发票'),
	('Currencies.php', 15, '货币设定'),
	('CustEDISetup.php', 15, '客户EDI设置'),
	('CustItem.php', 11, 'Customer Items'),
	('CustLoginSetup.php', 15, '客户登录配置'),
	('CustomerAccount.php', 1, 'Shows customer account/statement on screen rather than PDF'),
	('CustomerAllocations.php', 21, '客户收据(收款)/红字发票清算'),
	('CustomerBalancesMovement.php', 3, 'Allow customers to be listed in local currency with balances and activity over a date range'),
	('CustomerBranches.php', 3, '客户分公司设定'),
	('CustomerInquiry.php', 1, '客户交易查询'),
	('CustomerPurchases.php', 5, 'Shows the purchases a customer has made.'),
	('CustomerReceipt.php', 3, '收款操作'),
	('Customers.php', 3, '客户设定修改'),
	('CustomerTransInquiry.php', 2, '期间所有客户交易查询'),
	('CustomerTypes.php', 15, '顾客类型分类设定'),
	('CustWhereAlloc.php', 2, '交易清算状态查询'),
	('DailyBankTransactions.php', 3, 'Allows you to view all bank transactions for a selected date range, and the inquiry can be filtered by matched or unmatched transactions, or all transactions can be chosen'),
	('DailySalesInquiry.php', 2, '销售日报查询'),
	('Dashboard.php', 1, 'Display outstanding debtors, creditors etc'),
	('DebtorsAtPeriodEnd.php', 3, '期末客户欠款汇总表PDF'),
	('DeliveryDetails.php', 1, '购物车交易明细'),
	('Departments.php', 15, '部门设定'),
	('DiscountCategories.php', 15, '折扣类别设定'),
	('DiscountMatrix.php', 15, '折扣设定'),
	('EDIMessageFormat.php', 15, 'EDI模板设定'),
	('EDIProcessOrders.php', 15, 'EDI订单文件列表（档案列表显示）'),
	('EDISendInvoices.php', 15, '流程发票EDI消息'),
	('EmailConfirmation.php', 15, '电子邮件确认'),
	('EmailCustStatements.php', 3, 'Email customer statement to customer'),
	('EmailCustTrans.php', 15, '电子邮件 红字发票'),
	('ExchangeRateTrend.php', 15, '查看货币趋势'),
	('Factors.php', 15, '代理公司维护'),
	('FixedAssetCategories.php', 16, '固定资产种类维护'),
	('FixedAssetDepreciation.php', 10, '折旧日记账分录'),
	('FixedAssetItems.php', 16, '固定资产、档案修改查询下载'),
	('FixedAssetLocations.php', 16, '固定资产地点设定'),
	('FixedAssetMoves.php', 16, '档案、车辆、公章、固定资产借用记录'),
	('FixedAssetRegister.php', 5, '固定资产账簿'),
	('FixedAssetTransfer.php', 16, '变更资产地点'),
	('FixedAssetUsage.php', 16, '档案、车辆、公章、固定资产利用记录'),
	('FormDesigner.php', 15, '表单设计工具'),
	('FormMaker.php', 1, 'Allows running user defined Forms'),
	('FreightCosts.php', 15, '发运点设定'),
	('FTP_RadioBeacon.php', 15, 'FTP 订单'),
	('GeneratePickingList.php', 11, 'Generate a picking list'),
	('geocode.php', 15, '顾客和供应商地理编码'),
	('GeocodeSetup.php', 15, '地理编码'),
	('geocode_genxml_customers.php', 15, '地理编码'),
	('geocode_genxml_suppliers.php', 15, '地理编码'),
	('geo_displaymap_customers.php', 15, '地理编码'),
	('geo_displaymap_suppliers.php', 15, '地理编码'),
	('GetStockImage.php', 16, '档案在线预览'),
	('GLAccountCSV.php', 8, '会计账簿导出csv'),
	('GLAccountGraph.php', 8, 'Shows a graph of GL account transactions'),
	('GLAccountInquiry.php', 8, '总账查询'),
	('GLAccountReport.php', 8, '账簿打印'),
	('GLAccounts.php', 10, '会计科目设定'),
	('GLAccountUsers.php', 15, 'Maintenance of users allowed to a GL Account'),
	('GLBalanceSheet.php', 10, '资产负债表'),
	('GLBudgets.php', 10, '总帐预算'),
	('GLCashFlowsIndirect.php', 8, 'Shows a statement of cash flows for the period using the indirect method'),
	('GLCashFlowsSetup.php', 8, 'Setups the statement of cash flows sections'),
	('GLCodesInquiry.php', 8, '总账科目查询'),
	('GLJournal.php', 3, '转账凭证录入'),
	('GLJournalInquiry.php', 3, '打印会计凭证'),
	('GLProfit_Loss.php', 10, '损益表'),
	('GLTagProfit_Loss.php', 10, '标签分类的收入和费用'),
	('GLTags.php', 10, '总账标签设定'),
	('GLTransInquiry.php', 8, '系统凭证查看'),
	('GLTrialBalance.php', 8, '试算表'),
	('GLTrialBalance_csv.php', 5, '试算平衡表导出csv（余额表）'),
	('GoodsReceived.php', 17, '采购收货'),
	('GoodsReceivedControlled.php', 17, '受控物料收货'),
	('GoodsReceivedNotInvoiced.php', 2, 'Shows the list of goods received but not yet invoiced, both in supplier currency and home currency. Total in home curency should match the GL Account for Goods received not invoiced. Any discrepancy is due to multicurrency errors.'),
	('HistoricalTestResults.php', 16, 'Historical Test Results'),
	('ImportBankTrans.php', 11, 'Imports bank transactions'),
	('ImportBankTransAnalysis.php', 11, 'Allows analysis of bank transactions being imported'),
	('index.php', 1, '主页'),
	('InternalStockCategoriesByRole.php', 15, '易耗品申请单安全角色设定'),
	('InternalStockRequest.php', 1, '创建易耗品申请单'),
	('InternalStockRequestAuthorisation.php', 10, '审核易耗品申请单'),
	('InternalStockRequestFulfill.php', 18, '执行易耗品申请'),
	('InternalStockRequestInquiry.php', 1, 'Internal Stock Request inquiry'),
	('InventoryPlanning.php', 15, '物料需求计划报表'),
	('InventoryPlanningPrefSupplier.php', 15, '首选供应商库存计划'),
	('InventoryPlanningPrefSupplier_CSV.php', 2, 'Inventory planning spreadsheet'),
	('InventoryQuantities.php', 2, '库存数量报表PDF'),
	('InventoryValuation.php', 10, '库存价值报表PDF'),
	('Labels.php', 15, '标签模板'),
	('Locations.php', 15, '定义库存地点仓库'),
	('LocationUsers.php', 15, 'User Location Maintenance'),
	('Logout.php', 1, '退出页面'),
	('MailingGroupMaintenance.php', 15, 'Mainting mailing lists for items to mail'),
	('MailInventoryValuation.php', 15, '电邮库存报告'),
	('MailSalesReport_csv.php', 15, 'Mailing the sales report'),
	('MaintenanceReminders.php', 1, 'Sends email reminders for scheduled asset maintenance tasks'),
	('MaintenanceTasks.php', 1, 'Allows set up and edit of scheduled maintenance tasks'),
	('MaintenanceUserSchedule.php', 1, 'List users or managers scheduled maintenance tasks and allow to be flagged as completed'),
	('Manufacturers.php', 15, 'Maintain brands of sales products'),
	('MaterialsNotUsed.php', 4, 'Lists the items from Raw Material Categories not used in any BOM (thus, not used at all)'),
	('MRP.php', 15, '运行MRP计算'),
	('MRPCalendar.php', 15, 'MRP 日历'),
	('MRPCreateDemands.php', 15, 'MRP 创建需求'),
	('MRPDemands.php', 15, 'MRP需求查询'),
	('MRPDemandTypes.php', 15, 'MRP 需求种类'),
	('MRPPlannedPurchaseOrders.php', 15, '物料需求计划计划（MRP）采购订单报告'),
	('MRPPlannedWorkOrders.php', 15, 'MRP计划的工作单报告'),
	('MRPReport.php', 15, 'MRP 报告'),
	('MRPReschedules.php', 15, 'MRP重新计划报告'),
	('MRPShortages.php', 15, 'MRP缺料-滞料报告'),
	('NoSalesItems.php', 2, '销售不佳的商品'),
	('OffersReceived.php', 15, '供应商报盘'),
	('OrderDetails.php', 2, '检视销售订单的细节'),
	('OrderEntryDiscountPricing', 13, 'Not a script but an authority level marker - required if the user is allowed to enter discounts and special pricing against a customer order'),
	('OutstandingGRNs.php', 2, '已收货未开发票暂估报表'),
	('PageSecurity.php', 15, '页面安全等级设定'),
	('PaymentAllocations.php', 3, '付款分配'),
	('PaymentMethods.php', 15, '收付款方式设定'),
	('Payments.php', 3, '付款'),
	('PaymentTerms.php', 10, '付款条款（合同条款）'),
	('PcAnalysis.php', 15, 'Creates an Excel with details of PC expense for 24 months'),
	('PcAssignCashTabToTab.php', 12, 'Assign cash from one tab to another'),
	('PcAssignCashToTab.php', 10, '安排小额现金预付款'),
	('PcAuthorizeCash.php', 6, 'Authorisation of assigned cash'),
	('PcAuthorizeExpenses.php', 10, '小额现金费用授权'),
	('PcClaimExpensesFromTab.php', 2, '报销申请'),
	('PcExpenses.php', 10, '报销费用种类设定'),
	('PcExpensesTypeTab.php', 10, '设定费用与员工组别的对应'),
	('PcReportExpense.php', 15, ''),
	('PcReportTab.php', 10, '小额现金管理报表'),
	('PcTabExpensesList.php', 15, 'Creates excel with all movements of tab between dates'),
	('PcTabs.php', 15, '小额现金标签设定'),
	('PcTypeTabs.php', 15, '小额现金种类设定'),
	('PDFAck.php', 15, 'Print an acknowledgement'),
	('PDFBankingSummary.php', 3, '打印收款单'),
	('PDFChequeListing.php', 3, '付款清单报表'),
	('PDFCOA.php', 0, 'PDF of COA'),
	('PDFCustomerList.php', 2, '打印客户清单（名单及联系方式）'),
	('PDFCustTransListing.php', 3, '客户交易报告（发票，红字、收款）'),
	('PDFDeliveryDifferences.php', 15, '拖期交货报表'),
	('PDFDIFOT.php', 15, '按期足量交货报表'),
	('PDFFGLabel.php', 11, 'Produces FG Labels'),
	('PDFGLJournal.php', 3, '凭证PDF生成'),
	('PDFGLJournalCN.php', 1, 'Print GL Journal Chinese version'),
	('PDFGrn.php', 17, '打印采购收货单'),
	('PDFLowGP.php', 15, '低毛利销售报表'),
	('PDFOrdersInvoiced.php', 3, '已开发票报告'),
	('PDFOrderStatus.php', 15, '订单执行状况报表'),
	('PDFPeriodStockTransListing.php', 18, '库存（期间）交易列表'),
	('PDFPickingList.php', 15, '打印装箱单'),
	('PDFPriceList.php', 2, '打印价格表'),
	('PDFPrintLabel.php', 15, '打印价格标签'),
	('PDFProdSpec.php', 0, 'PDF OF Product Specification'),
	('PDFQALabel.php', 2, 'Produces a QA label on receipt of stock'),
	('PDFQuotation.php', 2, '打印报价单'),
	('PDFQuotationPortrait.php', 2, '报价单'),
	('PDFReceipt.php', 20, '打印客户收据'),
	('PDFRemittanceAdvice.php', 15, '打印汇款通知'),
	('PDFSellThroughSupportClaim.php', 9, 'Reports the sell through support claims to be made against all suppliers for a given date range.'),
	('PDFShipLabel.php', 15, 'Print a ship label'),
	('PDFStockCheckComparison.php', 15, '库存核对报告（小心）'),
	('PDFStockLocTransfer.php', 18, '打印调拨发货单'),
	('PDFStockNegatives.php', 18, '负库存报表打印'),
	('PDFStockTransfer.php', 15, '打印移库单（转移结束）'),
	('PDFSuppTransListing.php', 3, '供应商交易列表（发票、红字、付款）'),
	('PDFTestPlan.php', 16, 'PDF of Test Plan'),
	('PDFTopItems.php', 15, '顶层物料销售报告'),
	('PDFWOPrint.php', 11, 'Produces W/O Paperwork'),
	('PDFWorkOrderReceived.php', 17, '打印产成品入库'),
	('PeriodsInquiry.php', 2, '会计期间查看'),
	('PickingLists.php', 11, 'Picking List Maintenance'),
	('PickingListsControlled.php', 11, 'Picking List Maintenance - Controlled'),
	('POReport.php', 2, '采购订单报告（采购台账）'),
	('PO_AuthorisationLevels.php', 15, '采购订单授权设定'),
	('PO_AuthoriseMyOrders.php', 4, '授权采购订单'),
	('PO_Header.php', 4, '采购抬头选择'),
	('PO_Items.php', 4, '采购订单明细车'),
	('PO_OrderDetails.php', 2, '查看采购订单'),
	('PO_PDFPurchOrder.php', 4, '打印采购订单'),
	('PO_SelectOSPurchOrder.php', 4, '查找未完成采购订单'),
	('PO_SelectPurchOrder.php', 2, '查找采购订单'),
	('PriceMatrix.php', 11, 'Mantain stock prices according to quantity break and sales types'),
	('Prices.php', 3, '物料价格设定'),
	('PricesBasedOnMarkUp.php', 15, '按比例更新价格'),
	('PricesByCost.php', 15, '根据多个成本更新价格'),
	('Prices_Customer.php', 15, '特殊价格设定'),
	('PrintCheque.php', 15, ''),
	('PrintCustOrder.php', 15, '打印销售订单（套打）'),
	('PrintCustOrder_generic.php', 15, '打印销售订单'),
	('PrintCustStatements.php', 2, '打印客户对账单'),
	('PrintCustTrans.php', 20, '打印批量打印发票红字发票'),
	('PrintCustTransPortrait.php', 20, '打印批量打印发票红字发票（横竖之差）'),
	('PrintSalesOrder_generic.php', 20, '打印通用销售订单'),
	('PrintWOItemSlip.php', 4, 'PDF WO Item production Slip '),
	('ProductSpecs.php', 16, 'Product Specification Maintenance'),
	('PurchaseByPrefSupplier.php', 2, 'Purchase ordering by preferred supplier'),
	('PurchasesReport.php', 2, 'Shows a report of purchases from suppliers for the range of selected dates'),
	('PurchData.php', 4, '供应商供货信息'),
	('QATests.php', 16, 'Quality Test Maintenance'),
	('RecurringSalesOrders.php', 15, '客户循环订单'),
	('RecurringSalesOrdersProcess.php', 15, '执行循环订单'),
	('RelatedItemsUpdate.php', 2, 'Maintains Related Items'),
	('ReorderLevel.php', 15, '库存再订购水平报告'),
	('ReorderLevelLocation.php', 15, '重新订货水平仓库报告'),
	('ReportCreator.php', 20, '用户定义的报表'),
	('ReportMaker.php', 1, '用户定义的报表'),
	('reportwriter/admin/ReportCreator.php', 15, '自定义报表工具'),
	('ReprintGRN.php', 18, '打印采购收货单'),
	('ReverseGRN.php', 10, '撤销收货'),
	('RevisionTranslations.php', 15, 'Human revision for automatic descriptions translations'),
	('SalesAnalReptCols.php', 2, '销售分析报告'),
	('SalesAnalRepts.php', 2, '自定义销售分析报表'),
	('SalesAnalysis_UserDefined.php', 15, '用户自定义销售分析'),
	('SalesByTypePeriodInquiry.php', 2, '销售报表'),
	('SalesCategories.php', 15, '商品分类'),
	('SalesCategoryDescriptions.php', 15, 'Maintain translations for sales categories'),
	('SalesCategoryPeriodInquiry.php', 2, '销售分类报告'),
	('SalesGLPostings.php', 10, '销售收入科目配置'),
	('SalesGraph.php', 1, '销售报告图'),
	('SalesInquiry.php', 2, '销售查询发（导出csv）'),
	('SalesPeople.php', 15, '销售员(负责人）设定'),
	('SalesTopCustomersInquiry.php', 2, 'Shows the sales to the top customers'),
	('SalesTopItemsInquiry.php', 2, ' 热销商品查询'),
	('SalesTypes.php', 15, '销售方式 / 价格表'),
	('SecurityTokens.php', 15, '安全令牌设定'),
	('SelectAsset.php', 16, '选择资产、档案'),
	('SelectCompletedOrder.php', 1, '搜寻所有销售订单'),
	('SelectContract.php', 15, '选择合同'),
	('SelectCreditItems.php', 21, '新建红字发票'),
	('SelectCustomer.php', 2, '选择客户'),
	('SelectGLAccount.php', 8, '选择会计科目'),
	('SelectOrderItems.php', 1, '输入销售订单，报价单行'),
	('SelectPickingLists.php', 11, 'Select a picking list'),
	('SelectProduct.php', 1, '选择查询物料商品'),
	('SelectQASamples.php', 16, 'Select  QA Samples'),
	('SelectRecurringSalesOrder.php', 15, '查找循环销售订单'),
	('SelectSalesOrder.php', 2, '搜索未完成销售订单'),
	('SelectSupplier.php', 4, '选择供应商'),
	('SelectWorkOrder.php', 1, '工单查找选择'),
	('SellThroughSupport.php', 9, 'Defines the items, period and quantum of support for which supplier has agreed to provide.'),
	('ShipmentCosting.php', 5, '运费'),
	('Shipments.php', 5, '建运单、修改'),
	('Shippers.php', 15, '承运人设定'),
	('ShiptsList.php', 15, '运输过程查询'),
	('Shipt_Select.php', 5, '查找运单'),
	('ShopParameters.php', 15, 'Maintain web-store configuration and set up'),
	('SMTPServer.php', 15, 'SMTP服务器细节设定'),
	('SpecialOrder.php', 15, '输入特殊订单'),
	('StockAdjustments.php', 21, '存货调整'),
	('StockAdjustmentsControlled.php', 10, '调整受控物料'),
	('StockCategories.php', 15, '物料组设定'),
	('StockCategorySalesInquiry.php', 2, 'Sales inquiry by stock category showing top items'),
	('StockCheck.php', 15, '存货检查表'),
	('StockClone.php', 11, 'Script to copy a stock item and associated properties, image, price, purchase and cost data'),
	('StockCostUpdate.php', 15, '存货成本更新'),
	('StockCounts.php', 15, '输入盘点表'),
	('StockDispatch.php', 15, '存货水平调节内调发货'),
	('StockLocMovements.php', 2, '按仓库的全部物料转移查询'),
	('StockLocStatus.php', 2, '地点/类别的全部存货状况'),
	('StockLocTransfer.php', 18, '调拨发货'),
	('StockLocTransferReceive.php', 18, '调拨接收'),
	('StockMovements.php', 18, '存货台账查询'),
	('StockQties_csv.php', 15, '存货数量CSV文件'),
	('StockQuantityByDate.php', 2, '历史库存查询'),
	('StockReorderLevel.php', 15, '物料再订货点'),
	('Stocks.php', 3, '物料设定'),
	('StockSerialItemResearch.php', 3, '序列号查询'),
	('StockSerialItems.php', 15, '受控物料的存货'),
	('StockStatus.php', 2, '存货状况'),
	('StockTransferControlled.php', 15, '移动受控物料'),
	('StockTransfers.php', 15, '物料移动（一步到位）'),
	('StockUsage.php', 2, '存货用量'),
	('StockUsageGraph.php', 2, '存货用量走势图表'),
	('SuppContractChgs.php', 15, '合同费用或者付费'),
	('SuppCreditGRNs.php', 5, '供应商红字发票'),
	('SuppFixedAssetChgs.php', 5, '固定资产费用或冲销'),
	('SuppInvGRNs.php', 5, '按收货单输入供应商发票'),
	('SupplierAllocations.php', 3, '供应商付款/红字发票清算'),
	('SupplierBalsAtPeriodEnd.php', 5, '期末的供应商（应付）余额报表'),
	('SupplierContacts.php', 4, '供应商联系人'),
	('SupplierCredit.php', 3, '供应商红字发票'),
	('SupplierGRNAndInvoiceInquiry.php', 5, 'Supplier\'s delivery note and grn relationship inquiry'),
	('SupplierInquiry.php', 4, '供应商交易查询'),
	('SupplierInvoice.php', 5, '输入供应商发票'),
	('SupplierPriceList.php', 4, '供应商供货信息'),
	('Suppliers.php', 3, '供应商设定'),
	('SupplierTenderCreate.php', 15, '创建新供应商投标申请'),
	('SupplierTenders.php', 15, '供应商投标'),
	('SupplierTransInquiry.php', 2, '供应商交易统计报告'),
	('SupplierTypes.php', 15, '供应商类型设定'),
	('SuppLoginSetup.php', 15, '供应商登录配置'),
	('SuppPaymentRun.php', 15, '批量执行付款（！小心使用）'),
	('SuppPriceList.php', 2, '供应商价格表'),
	('SuppShiptChgs.php', 5, '输入运费发票'),
	('SuppTransGLAnalysis.php', 5, '输入费用发票'),
	('SuppWhereAlloc.php', 3, 'Suppliers where allocated'),
	('SystemParameters.php', 15, '系统设置'),
	('Tax.php', 2, '税报告PDF打印'),
	('TaxAuthorities.php', 15, '税收管辖部门设定'),
	('TaxAuthorityRates.php', 15, '税率设定'),
	('TaxCategories.php', 15, '税目维护'),
	('TaxGroups.php', 15, '税收组设定'),
	('TaxProvinces.php', 15, '纳税区域设定'),
	('TestPlanResults.php', 16, 'Test Plan Results Entry'),
	('TopCustomers.php', 1, 'Shows the top customers'),
	('TopItems.php', 2, '销售排行榜查询'),
	('UnitsOfMeasure.php', 15, '计量单位设定'),
	('UpgradeDatabase.php', 15, '升级ERP到数据库'),
	('UserBankAccounts.php', 15, 'Maintains table bankaccountusers (Authorized users to work with a bank account in webERP)'),
	('UserGLAccounts.php', 15, 'Maintenance of GL Accounts allowed for a user'),
	('UserLocations.php', 15, 'Location User Maintenance'),
	('UserSettings.php', 1, '用户个人设定'),
	('WhereUsedInquiry.php', 15, '物料用途查询'),
	('WOCanBeProducedNow.php', 4, 'List of WO items that can be produced with available stock in location'),
	('WorkCentres.php', 15, '工作中心设定'),
	('WorkOrderCosting.php', 10, '成本查看发料凭证查看'),
	('WorkOrderEntry.php', 19, '工单输入修改'),
	('WorkOrderIssue.php', 17, '生产发料、打印投料单'),
	('WorkOrderIssue2.php', 15, '控制物料发放、打印投料单'),
	('WorkOrderIssue_pdf.php', 18, '生产投料单打印'),
	('WorkOrderReceive.php', 17, '产成品入库、打印入库单'),
	('WorkOrderStatus.php', 19, '工单状态查询'),
	('WOSerialNos.php', 15, '处理中的工作单批次'),
	('WWW_Access.php', 15, '职位设定'),
	('WWW_Users.php', 15, '用户管理'),
	('Z-GLAccountsInit.php', 15, 'CNCERP总账余额初始化'),
	('Z_BottomUpCosts.php', 15, ''),
	('Z_ChangeBranchCode.php', 15, '更改所有表的客户分公司编号'),
	('Z_ChangeCustomerCode.php', 15, '更改所有表的客户编码'),
	('Z_ChangeGLAccountCode.php', 15, 'Script to change a GL account code accross all tables necessary'),
	('Z_ChangeLocationCode.php', 15, '更改仓库编码'),
	('Z_ChangeSalesmanCode.php', 15, 'Utility to change a salesman code'),
	('Z_ChangeStockCategory.php', 15, ''),
	('Z_ChangeStockCode.php', 15, '更改存货编码'),
	('Z_ChangeSupplierCode.php', 15, '更改所有表的客户编码'),
	('Z_CheckAllocationsFrom.php', 15, ''),
	('Z_CheckAllocs.php', 15, ''),
	('Z_CheckDebtorsControl.php', 15, '债务人统制整合'),
	('Z_CheckGLTransBalance.php', 15, '检查期间销售账控制账目'),
	('Z_CreateChartDetails.php', 15, '产生明细资料记录'),
	('Z_CreateCompany.php', 15, '设定新的空白公司记录'),
	('Z_CreateCompanyTemplateFile.php', 15, ''),
	('Z_CurrencyDebtorsBalances.php', 15, '货币借方结余'),
	('Z_CurrencySuppliersBalances.php', 15, '供应商结余, 按货币总结'),
	('Z_DataExport.php', 15, ''),
	('Z_DeleteCreditNote.php', 15, '删除红字发票'),
	('Z_DeleteInvoice.php', 15, '删除发票'),
	('Z_DeleteOldPrices.php', 15, '删除所有旧价格'),
	('Z_DeleteSalesTransActions.php', 15, '删除销售交易'),
	('Z_DescribeTable.php', 15, ''),
	('Z_Fix1cAllocations.php', 9, ''),
	('Z_GLAccountUsersCopyAuthority.php', 15, 'Utility to copy authority of GL accounts from one user to another'),
	('Z_ImportChartOfAccounts.php', 15, ''),
	('Z_ImportDebtors.php', 15, 'Import debtors by csv file'),
	('Z_ImportFixedAssets.php', 15, '导入固定资产'),
	('Z_ImportGLAccountGroups.php', 15, ''),
	('Z_ImportGLAccountSections.php', 15, ''),
	('Z_ImportGLTransactions.php', 15, 'Import General Ledger Transactions'),
	('Z_ImportPartCodes.php', 15, '导入库存物料'),
	('Z_ImportPriceList.php', 15, 'Loads a new price list from a csv file'),
	('Z_ImportStocks.php', 15, ''),
	('Z_index.php', 15, 'Utility menu page'),
	('Z_ItemsWithoutPicture.php', 15, 'Shows the list of curent items without picture in webERP'),
	('Z_MakeLocUsers.php', 15, 'Create User Location records'),
	('Z_MakeNewCompany.php', 15, ''),
	('Z_MakeStockLocns.php', 15, '制作地点存货记录'),
	('Z_poAddLanguage.php', 15, '新语言'),
	('Z_poAdmin.php', 15, ' 用于维护语言文件'),
	('Z_poEditLangHeader.php', 15, ''),
	('Z_poEditLangModule.php', 15, ''),
	('Z_poEditLangRemaining.php', 15, ''),
	('Z_poRebuildDefault.php', 15, ''),
	('Z_PriceChanges.php', 15, '目前不存在了'),
	('Z_ReApplyCostToSA.php', 15, '更新销售成本分析'),
	('Z_RemovePurchaseBackOrders.php', 1, 'Removes all purchase order back orders'),
	('Z_RePostGLFromPeriod.php', 15, '重计明细表的总账结余'),
	('Z_ReverseSuppPaymentRun.php', 15, '撤销和删除供应商付款'),
	('Z_SalesIntegrityCheck.php', 15, ''),
	('Z_UpdateChartDetailsBFwd.php', 15, '重新转结科目余额'),
	('Z_UpdateItemCosts.php', 15, 'Use CSV of item codes and costs to update webERP item costs'),
	('Z_UpdateSalesAnalysisWithLatestCustomerData.php', 15, 'Updates the salesanalysis table with the latest data from the customer debtorsmaster salestype and custbranch sales area and sales person irrespective of the sales type, area, salesperson at the time when the sale was made'),
	('Z_Upgrade3.10.php', 15, ''),
	('Z_Upgrade_3.01-3.02.php', 15, ''),
	('Z_Upgrade_3.04-3.05.php', 15, ''),
	('Z_Upgrade_3.05-3.06.php', 15, ''),
	('Z_Upgrade_3.07-3.08.php', 15, ''),
	('Z_Upgrade_3.08-3.09.php', 15, ''),
	('Z_Upgrade_3.09-3.10.php', 15, ''),
	('Z_Upgrade_3.10-3.11.php', 15, ''),
	('Z_Upgrade_3.11-4.00.php', 15, ''),
	('Z_UploadForm.php', 15, '档案上传'),
	('Z_UploadResult.php', 15, '档案上传报告');
/*!40000 ALTER TABLE `scripts` ENABLE KEYS */;

-- Dumping structure for table cncerp.securitygroups
CREATE TABLE IF NOT EXISTS `securitygroups` (
  `secroleid` int(11) NOT NULL DEFAULT 0,
  `tokenid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`secroleid`,`tokenid`),
  KEY `secroleid` (`secroleid`),
  KEY `tokenid` (`tokenid`),
  CONSTRAINT `securitygroups_secroleid_fk` FOREIGN KEY (`secroleid`) REFERENCES `securityroles` (`secroleid`),
  CONSTRAINT `securitygroups_tokenid_fk` FOREIGN KEY (`tokenid`) REFERENCES `securitytokens` (`tokenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.securitygroups: ~139 rows (大约)
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES
	(1, 0),
	(1, 1),
	(1, 2),
	(1, 13),
	(1, 20),
	(1, 21),
	(2, 0),
	(2, 1),
	(2, 19),
	(3, 0),
	(3, 1),
	(3, 2),
	(3, 4),
	(3, 12),
	(3, 22),
	(4, 0),
	(4, 1),
	(4, 2),
	(4, 3),
	(4, 7),
	(4, 8),
	(4, 11),
	(4, 13),
	(4, 18),
	(4, 20),
	(4, 21),
	(4, 23),
	(5, 0),
	(5, 1),
	(5, 2),
	(5, 4),
	(5, 9),
	(5, 11),
	(5, 17),
	(5, 18),
	(5, 19),
	(6, 0),
	(6, 1),
	(6, 2),
	(6, 3),
	(6, 4),
	(6, 5),
	(6, 6),
	(6, 7),
	(6, 8),
	(6, 9),
	(6, 10),
	(6, 11),
	(6, 12),
	(6, 13),
	(6, 14),
	(6, 18),
	(6, 19),
	(6, 20),
	(6, 21),
	(6, 22),
	(6, 23),
	(6, 24),
	(7, 0),
	(7, 1),
	(8, 0),
	(8, 1),
	(8, 2),
	(8, 3),
	(8, 4),
	(8, 5),
	(8, 6),
	(8, 7),
	(8, 8),
	(8, 9),
	(8, 10),
	(8, 11),
	(8, 12),
	(8, 13),
	(8, 14),
	(8, 15),
	(8, 16),
	(8, 17),
	(8, 18),
	(8, 19),
	(8, 20),
	(8, 21),
	(8, 22),
	(8, 23),
	(8, 24),
	(9, 0),
	(9, 9),
	(10, 0),
	(10, 1),
	(10, 2),
	(10, 3),
	(10, 4),
	(10, 5),
	(10, 7),
	(10, 8),
	(10, 11),
	(10, 12),
	(10, 13),
	(10, 17),
	(10, 18),
	(10, 20),
	(10, 21),
	(10, 22),
	(10, 23),
	(11, 0),
	(11, 1),
	(11, 16),
	(12, 0),
	(12, 1),
	(12, 2),
	(12, 4),
	(12, 5),
	(12, 6),
	(12, 8),
	(12, 9),
	(12, 13),
	(12, 18),
	(12, 21),
	(13, 0),
	(13, 1),
	(13, 2),
	(13, 3),
	(13, 4),
	(13, 5),
	(13, 6),
	(13, 7),
	(13, 8),
	(13, 9),
	(13, 10),
	(13, 11),
	(13, 12),
	(13, 13),
	(13, 14),
	(13, 16),
	(13, 17),
	(13, 18),
	(13, 19),
	(13, 20),
	(13, 21);
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;

-- Dumping structure for table cncerp.securityroles
CREATE TABLE IF NOT EXISTS `securityroles` (
  `secroleid` int(11) NOT NULL AUTO_INCREMENT,
  `secrolename` text NOT NULL,
  PRIMARY KEY (`secroleid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.securityroles: ~13 rows (大约)
/*!40000 ALTER TABLE `securityroles` DISABLE KEYS */;
INSERT INTO `securityroles` (`secroleid`, `secrolename`) VALUES
	(1, '销售负责人'),
	(2, '生产主管'),
	(3, '采购主任'),
	(4, '分公司出纳'),
	(5, '化验检验'),
	(6, '财务经理'),
	(7, '客户登录'),
	(8, '系统管理'),
	(9, '供方登陆'),
	(10, '财务出纳'),
	(11, '办公文员'),
	(12, '财务会计'),
	(13, '测试所有除管理');
/*!40000 ALTER TABLE `securityroles` ENABLE KEYS */;

-- Dumping structure for table cncerp.securitytokens
CREATE TABLE IF NOT EXISTS `securitytokens` (
  `tokenid` int(11) NOT NULL DEFAULT 0,
  `tokenname` text NOT NULL,
  PRIMARY KEY (`tokenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.securitytokens: ~22 rows (大约)
/*!40000 ALTER TABLE `securitytokens` DISABLE KEYS */;
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES
	(0, '主菜单'),
	(1, '订单录入查询客户访问'),
	(2, '基本报表和选择选项查询'),
	(3, '出纳'),
	(4, '采购数据/采购订单录入/再订购水平'),
	(5, '财务会计副职'),
	(6, '费用申请'),
	(7, '银行对帐'),
	(8, '总帐报表/查询'),
	(9, '供应商中心 - 供应商访问'),
	(10, '财务总监'),
	(11, '库存管理和定价'),
	(12, '价格管理'),
	(13, '价格'),
	(14, 'Unknown'),
	(15, '用户管理和系统管理'),
	(16, '资产经理'),
	(17, '化验'),
	(18, '仓库'),
	(19, '生产'),
	(20, '销售'),
	(21, '红字发票');
/*!40000 ALTER TABLE `securitytokens` ENABLE KEYS */;

-- Dumping structure for table cncerp.sellthroughsupport
CREATE TABLE IF NOT EXISTS `sellthroughsupport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplierno` varchar(10) NOT NULL,
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `categoryid` char(6) NOT NULL DEFAULT '',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `narrative` varchar(20) NOT NULL DEFAULT '',
  `rebatepercent` double NOT NULL DEFAULT 0,
  `rebateamount` double NOT NULL DEFAULT 0,
  `effectivefrom` date NOT NULL,
  `effectiveto` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `supplierno` (`supplierno`),
  KEY `debtorno` (`debtorno`),
  KEY `effectivefrom` (`effectivefrom`),
  KEY `effectiveto` (`effectiveto`),
  KEY `stockid` (`stockid`),
  KEY `categoryid` (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.sellthroughsupport: ~0 rows (大约)
/*!40000 ALTER TABLE `sellthroughsupport` DISABLE KEYS */;
/*!40000 ALTER TABLE `sellthroughsupport` ENABLE KEYS */;

-- Dumping structure for table cncerp.shipmentcharges
CREATE TABLE IF NOT EXISTS `shipmentcharges` (
  `shiptchgid` int(11) NOT NULL AUTO_INCREMENT,
  `shiptref` int(11) NOT NULL DEFAULT 0,
  `transtype` smallint(6) NOT NULL DEFAULT 0,
  `transno` int(11) NOT NULL DEFAULT 0,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `value` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`shiptchgid`),
  KEY `TransType` (`transtype`,`transno`),
  KEY `ShiptRef` (`shiptref`),
  KEY `StockID` (`stockid`),
  KEY `TransType_2` (`transtype`),
  CONSTRAINT `shipmentcharges_ibfk_1` FOREIGN KEY (`shiptref`) REFERENCES `shipments` (`shiptref`),
  CONSTRAINT `shipmentcharges_ibfk_2` FOREIGN KEY (`transtype`) REFERENCES `systypes` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.shipmentcharges: ~0 rows (大约)
/*!40000 ALTER TABLE `shipmentcharges` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipmentcharges` ENABLE KEYS */;

-- Dumping structure for table cncerp.shipments
CREATE TABLE IF NOT EXISTS `shipments` (
  `shiptref` int(11) NOT NULL DEFAULT 0,
  `voyageref` varchar(20) NOT NULL DEFAULT '0',
  `vessel` varchar(50) NOT NULL DEFAULT '',
  `eta` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `accumvalue` double NOT NULL DEFAULT 0,
  `supplierid` varchar(10) NOT NULL DEFAULT '',
  `closed` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`shiptref`),
  KEY `ETA` (`eta`),
  KEY `SupplierID` (`supplierid`),
  KEY `ShipperRef` (`voyageref`),
  KEY `Vessel` (`vessel`),
  CONSTRAINT `shipments_ibfk_1` FOREIGN KEY (`supplierid`) REFERENCES `suppliers` (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.shipments: ~0 rows (大约)
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;

-- Dumping structure for table cncerp.shippers
CREATE TABLE IF NOT EXISTS `shippers` (
  `shipper_id` int(11) NOT NULL AUTO_INCREMENT,
  `shippername` char(40) NOT NULL DEFAULT '',
  `mincharge` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`shipper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.shippers: ~0 rows (大约)
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;
INSERT INTO `shippers` (`shipper_id`, `shippername`, `mincharge`) VALUES
	(1, '菜鸟物流', 0);
/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;

-- Dumping structure for table cncerp.stockcategory
CREATE TABLE IF NOT EXISTS `stockcategory` (
  `categoryid` char(6) NOT NULL DEFAULT '',
  `categorydescription` char(20) NOT NULL DEFAULT '',
  `stocktype` char(1) NOT NULL DEFAULT 'F',
  `stockact` varchar(20) NOT NULL DEFAULT '0',
  `adjglact` varchar(20) NOT NULL DEFAULT '0',
  `issueglact` varchar(20) NOT NULL DEFAULT '0',
  `purchpricevaract` varchar(20) NOT NULL DEFAULT '80000',
  `materialuseagevarac` varchar(20) NOT NULL DEFAULT '80000',
  `wipact` varchar(20) NOT NULL DEFAULT '0',
  `defaulttaxcatid` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`categoryid`),
  KEY `CategoryDescription` (`categorydescription`),
  KEY `StockType` (`stocktype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.stockcategory: ~7 rows (大约)
/*!40000 ALTER TABLE `stockcategory` DISABLE KEYS */;
INSERT INTO `stockcategory` (`categoryid`, `categorydescription`, `stocktype`, `stockact`, `adjglact`, `issueglact`, `purchpricevaract`, `materialuseagevarac`, `wipact`, `defaulttaxcatid`) VALUES
	('01', '产成品', 'F', '1405', '6701', '6701', '6702', '6702', '1406', 1),
	('02', '原料', 'F', '1403', '6701', '6701', '6702', '6702', '1406', 1),
	('03', '包装物', 'F', '1403', '6701', '6701', '6702', '6702', '1406', 1),
	('04', '贩卖品', 'F', '1405', '6701', '6701', '6702', '6702', '1405', 1),
	('05', '虚拟物料', 'D', '1407', '6701', '6701', '6702', '6702', '1407', 1),
	('06', '人工', 'L', '500102', '500102', '500102', '500102', '500102', '1406', 1),
	('07', '制造费用', 'L', '500103', '500102', '500102', '500102', '500102', '1406', 1);
/*!40000 ALTER TABLE `stockcategory` ENABLE KEYS */;

-- Dumping structure for table cncerp.stockcatproperties
CREATE TABLE IF NOT EXISTS `stockcatproperties` (
  `stkcatpropid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` char(6) NOT NULL,
  `label` text NOT NULL,
  `controltype` tinyint(4) NOT NULL DEFAULT 0,
  `defaultvalue` varchar(100) NOT NULL DEFAULT '''''',
  `maximumvalue` double NOT NULL DEFAULT 999999999,
  `reqatsalesorder` tinyint(4) NOT NULL DEFAULT 0,
  `minimumvalue` double NOT NULL DEFAULT -999999999,
  `numericvalue` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`stkcatpropid`),
  KEY `categoryid` (`categoryid`),
  CONSTRAINT `stockcatproperties_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `stockcategory` (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.stockcatproperties: ~0 rows (大约)
/*!40000 ALTER TABLE `stockcatproperties` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockcatproperties` ENABLE KEYS */;

-- Dumping structure for table cncerp.stockcheckfreeze
CREATE TABLE IF NOT EXISTS `stockcheckfreeze` (
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `qoh` double NOT NULL DEFAULT 0,
  `stockcheckdate` date NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (`stockid`,`loccode`),
  KEY `LocCode` (`loccode`),
  CONSTRAINT `stockcheckfreeze_ibfk_1` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `stockcheckfreeze_ibfk_2` FOREIGN KEY (`loccode`) REFERENCES `locations` (`loccode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.stockcheckfreeze: ~0 rows (大约)
/*!40000 ALTER TABLE `stockcheckfreeze` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockcheckfreeze` ENABLE KEYS */;

-- Dumping structure for table cncerp.stockcounts
CREATE TABLE IF NOT EXISTS `stockcounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `qtycounted` double NOT NULL DEFAULT 0,
  `reference` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `StockID` (`stockid`),
  KEY `LocCode` (`loccode`),
  CONSTRAINT `stockcounts_ibfk_1` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `stockcounts_ibfk_2` FOREIGN KEY (`loccode`) REFERENCES `locations` (`loccode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.stockcounts: ~0 rows (大约)
/*!40000 ALTER TABLE `stockcounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockcounts` ENABLE KEYS */;

-- Dumping structure for table cncerp.stockdescriptiontranslations
CREATE TABLE IF NOT EXISTS `stockdescriptiontranslations` (
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `language_id` varchar(10) NOT NULL DEFAULT 'en_GB.utf8',
  `descriptiontranslation` varchar(50) DEFAULT NULL COMMENT 'Item''s short description',
  `longdescriptiontranslation` text DEFAULT NULL COMMENT 'Item''s long description',
  `needsrevision` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`stockid`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.stockdescriptiontranslations: ~0 rows (大约)
/*!40000 ALTER TABLE `stockdescriptiontranslations` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockdescriptiontranslations` ENABLE KEYS */;

-- Dumping structure for table cncerp.stockitemproperties
CREATE TABLE IF NOT EXISTS `stockitemproperties` (
  `stockid` varchar(20) NOT NULL,
  `stkcatpropid` int(11) NOT NULL,
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (`stockid`,`stkcatpropid`),
  KEY `stockid` (`stockid`),
  KEY `value` (`value`),
  KEY `stkcatpropid` (`stkcatpropid`),
  CONSTRAINT `stockitemproperties_ibfk_1` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `stockitemproperties_ibfk_2` FOREIGN KEY (`stkcatpropid`) REFERENCES `stockcatproperties` (`stkcatpropid`),
  CONSTRAINT `stockitemproperties_ibfk_3` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `stockitemproperties_ibfk_4` FOREIGN KEY (`stkcatpropid`) REFERENCES `stockcatproperties` (`stkcatpropid`),
  CONSTRAINT `stockitemproperties_ibfk_5` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `stockitemproperties_ibfk_6` FOREIGN KEY (`stkcatpropid`) REFERENCES `stockcatproperties` (`stkcatpropid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.stockitemproperties: ~0 rows (大约)
/*!40000 ALTER TABLE `stockitemproperties` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockitemproperties` ENABLE KEYS */;

-- Dumping structure for table cncerp.stockmaster
CREATE TABLE IF NOT EXISTS `stockmaster` (
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `categoryid` varchar(6) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL DEFAULT '',
  `longdescription` text NOT NULL,
  `units` varchar(20) NOT NULL DEFAULT 'each',
  `mbflag` char(1) NOT NULL DEFAULT 'B',
  `actualcost` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `lastcost` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `materialcost` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `labourcost` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `overheadcost` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `lowestlevel` smallint(6) NOT NULL DEFAULT 0,
  `discontinued` tinyint(4) NOT NULL DEFAULT 0,
  `controlled` tinyint(4) NOT NULL DEFAULT 0,
  `eoq` double NOT NULL DEFAULT 0,
  `volume` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grossweight` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `barcode` varchar(50) NOT NULL DEFAULT '',
  `discountcategory` char(2) NOT NULL DEFAULT '',
  `taxcatid` tinyint(4) NOT NULL DEFAULT 1,
  `serialised` tinyint(4) NOT NULL DEFAULT 0,
  `perishable` tinyint(1) NOT NULL DEFAULT 0,
  `decimalplaces` tinyint(4) NOT NULL DEFAULT 0,
  `pansize` double NOT NULL DEFAULT 0,
  `shrinkfactor` double NOT NULL DEFAULT 0,
  `nextserialno` bigint(20) NOT NULL DEFAULT 0,
  `netweight` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `lastcostupdate` date NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (`stockid`),
  KEY `CategoryID` (`categoryid`),
  KEY `Description` (`description`),
  KEY `MBflag` (`mbflag`),
  KEY `StockID` (`stockid`,`categoryid`),
  KEY `Controlled` (`controlled`),
  KEY `DiscountCategory` (`discountcategory`),
  KEY `taxcatid` (`taxcatid`),
  CONSTRAINT `stockmaster_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `stockcategory` (`categoryid`),
  CONSTRAINT `stockmaster_ibfk_2` FOREIGN KEY (`taxcatid`) REFERENCES `taxcategories` (`taxcatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.stockmaster: ~0 rows (大约)
/*!40000 ALTER TABLE `stockmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockmaster` ENABLE KEYS */;

-- Dumping structure for table cncerp.stockmoves
CREATE TABLE IF NOT EXISTS `stockmoves` (
  `stkmoveno` int(11) NOT NULL AUTO_INCREMENT,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT 0,
  `transno` int(11) NOT NULL DEFAULT 0,
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `trandate` date NOT NULL DEFAULT '1000-01-01',
  `userid` varchar(20) NOT NULL,
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `price` decimal(21,5) NOT NULL DEFAULT 0.00000,
  `prd` smallint(6) NOT NULL DEFAULT 0,
  `reference` varchar(100) NOT NULL DEFAULT '',
  `qty` double NOT NULL DEFAULT 1,
  `discountpercent` double NOT NULL DEFAULT 0,
  `standardcost` double NOT NULL DEFAULT 0,
  `show_on_inv_crds` tinyint(4) NOT NULL DEFAULT 1,
  `newqoh` double NOT NULL DEFAULT 0,
  `hidemovt` tinyint(4) NOT NULL DEFAULT 0,
  `narrative` text DEFAULT NULL,
  PRIMARY KEY (`stkmoveno`),
  KEY `DebtorNo` (`debtorno`),
  KEY `LocCode` (`loccode`),
  KEY `Prd` (`prd`),
  KEY `StockID_2` (`stockid`),
  KEY `TranDate` (`trandate`),
  KEY `TransNo` (`transno`),
  KEY `Type` (`type`),
  KEY `Show_On_Inv_Crds` (`show_on_inv_crds`),
  KEY `Hide` (`hidemovt`),
  KEY `reference` (`reference`),
  CONSTRAINT `stockmoves_ibfk_1` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `stockmoves_ibfk_2` FOREIGN KEY (`type`) REFERENCES `systypes` (`typeid`),
  CONSTRAINT `stockmoves_ibfk_3` FOREIGN KEY (`loccode`) REFERENCES `locations` (`loccode`),
  CONSTRAINT `stockmoves_ibfk_4` FOREIGN KEY (`prd`) REFERENCES `periods` (`periodno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.stockmoves: ~0 rows (大约)
/*!40000 ALTER TABLE `stockmoves` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockmoves` ENABLE KEYS */;

-- Dumping structure for table cncerp.stockmovestaxes
CREATE TABLE IF NOT EXISTS `stockmovestaxes` (
  `stkmoveno` int(11) NOT NULL DEFAULT 0,
  `taxauthid` tinyint(4) NOT NULL DEFAULT 0,
  `taxrate` double NOT NULL DEFAULT 0,
  `taxontax` tinyint(4) NOT NULL DEFAULT 0,
  `taxcalculationorder` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`stkmoveno`,`taxauthid`),
  KEY `taxauthid` (`taxauthid`),
  KEY `calculationorder` (`taxcalculationorder`),
  CONSTRAINT `stockmovestaxes_ibfk_1` FOREIGN KEY (`taxauthid`) REFERENCES `taxauthorities` (`taxid`),
  CONSTRAINT `stockmovestaxes_ibfk_2` FOREIGN KEY (`stkmoveno`) REFERENCES `stockmoves` (`stkmoveno`),
  CONSTRAINT `stockmovestaxes_ibfk_3` FOREIGN KEY (`stkmoveno`) REFERENCES `stockmoves` (`stkmoveno`),
  CONSTRAINT `stockmovestaxes_ibfk_4` FOREIGN KEY (`stkmoveno`) REFERENCES `stockmoves` (`stkmoveno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.stockmovestaxes: ~0 rows (大约)
/*!40000 ALTER TABLE `stockmovestaxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockmovestaxes` ENABLE KEYS */;

-- Dumping structure for table cncerp.stockrequest
CREATE TABLE IF NOT EXISTS `stockrequest` (
  `dispatchid` int(11) NOT NULL AUTO_INCREMENT,
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `departmentid` int(11) NOT NULL DEFAULT 0,
  `despatchdate` date NOT NULL DEFAULT '1000-01-01',
  `authorised` tinyint(4) NOT NULL DEFAULT 0,
  `closed` tinyint(4) NOT NULL DEFAULT 0,
  `narrative` text NOT NULL,
  `initiator` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`dispatchid`),
  KEY `loccode` (`loccode`),
  KEY `departmentid` (`departmentid`),
  CONSTRAINT `stockrequest_ibfk_1` FOREIGN KEY (`loccode`) REFERENCES `locations` (`loccode`),
  CONSTRAINT `stockrequest_ibfk_2` FOREIGN KEY (`departmentid`) REFERENCES `departments` (`departmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.stockrequest: ~0 rows (大约)
/*!40000 ALTER TABLE `stockrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockrequest` ENABLE KEYS */;

-- Dumping structure for table cncerp.stockrequestitems
CREATE TABLE IF NOT EXISTS `stockrequestitems` (
  `dispatchitemsid` int(11) NOT NULL DEFAULT 0,
  `dispatchid` int(11) NOT NULL DEFAULT 0,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT 0,
  `qtydelivered` double NOT NULL DEFAULT 0,
  `decimalplaces` int(11) NOT NULL DEFAULT 0,
  `uom` varchar(20) NOT NULL DEFAULT '',
  `completed` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`dispatchitemsid`,`dispatchid`),
  KEY `dispatchid` (`dispatchid`),
  KEY `stockid` (`stockid`),
  CONSTRAINT `stockrequestitems_ibfk_1` FOREIGN KEY (`dispatchid`) REFERENCES `stockrequest` (`dispatchid`),
  CONSTRAINT `stockrequestitems_ibfk_2` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `stockrequestitems_ibfk_3` FOREIGN KEY (`dispatchid`) REFERENCES `stockrequest` (`dispatchid`),
  CONSTRAINT `stockrequestitems_ibfk_4` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.stockrequestitems: ~0 rows (大约)
/*!40000 ALTER TABLE `stockrequestitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockrequestitems` ENABLE KEYS */;

-- Dumping structure for table cncerp.stockserialitems
CREATE TABLE IF NOT EXISTS `stockserialitems` (
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `serialno` varchar(30) NOT NULL DEFAULT '',
  `expirationdate` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `quantity` double NOT NULL DEFAULT 0,
  `qualitytext` text NOT NULL,
  `createdate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`stockid`,`serialno`,`loccode`),
  KEY `StockID` (`stockid`),
  KEY `LocCode` (`loccode`),
  KEY `serialno` (`serialno`),
  KEY `createdate` (`createdate`),
  CONSTRAINT `stockserialitems_ibfk_1` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `stockserialitems_ibfk_2` FOREIGN KEY (`loccode`) REFERENCES `locations` (`loccode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.stockserialitems: ~0 rows (大约)
/*!40000 ALTER TABLE `stockserialitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockserialitems` ENABLE KEYS */;

-- Dumping structure for table cncerp.stockserialmoves
CREATE TABLE IF NOT EXISTS `stockserialmoves` (
  `stkitmmoveno` int(11) NOT NULL AUTO_INCREMENT,
  `stockmoveno` int(11) NOT NULL DEFAULT 0,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `serialno` varchar(30) NOT NULL DEFAULT '',
  `moveqty` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`stkitmmoveno`),
  KEY `StockMoveNo` (`stockmoveno`),
  KEY `StockID_SN` (`stockid`,`serialno`),
  KEY `serialno` (`serialno`),
  CONSTRAINT `stockserialmoves_ibfk_1` FOREIGN KEY (`stockmoveno`) REFERENCES `stockmoves` (`stkmoveno`),
  CONSTRAINT `stockserialmoves_ibfk_2` FOREIGN KEY (`stockid`, `serialno`) REFERENCES `stockserialitems` (`stockid`, `serialno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.stockserialmoves: ~0 rows (大约)
/*!40000 ALTER TABLE `stockserialmoves` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockserialmoves` ENABLE KEYS */;

-- Dumping structure for table cncerp.suppallocs
CREATE TABLE IF NOT EXISTS `suppallocs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amt` double NOT NULL DEFAULT 0,
  `datealloc` date NOT NULL DEFAULT '1000-01-01',
  `transid_allocfrom` int(11) NOT NULL DEFAULT 0,
  `transid_allocto` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `TransID_AllocFrom` (`transid_allocfrom`),
  KEY `TransID_AllocTo` (`transid_allocto`),
  KEY `DateAlloc` (`datealloc`),
  CONSTRAINT `suppallocs_ibfk_1` FOREIGN KEY (`transid_allocfrom`) REFERENCES `supptrans` (`id`),
  CONSTRAINT `suppallocs_ibfk_2` FOREIGN KEY (`transid_allocto`) REFERENCES `supptrans` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.suppallocs: ~0 rows (大约)
/*!40000 ALTER TABLE `suppallocs` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppallocs` ENABLE KEYS */;

-- Dumping structure for table cncerp.suppinvstogrn
CREATE TABLE IF NOT EXISTS `suppinvstogrn` (
  `suppinv` int(11) NOT NULL,
  `grnno` int(11) NOT NULL,
  PRIMARY KEY (`suppinv`,`grnno`),
  KEY `suppinvstogrn_ibfk_1` (`grnno`),
  CONSTRAINT `suppinvstogrn_ibfk_1` FOREIGN KEY (`grnno`) REFERENCES `grns` (`grnno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.suppinvstogrn: ~0 rows (大约)
/*!40000 ALTER TABLE `suppinvstogrn` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppinvstogrn` ENABLE KEYS */;

-- Dumping structure for table cncerp.suppliercontacts
CREATE TABLE IF NOT EXISTS `suppliercontacts` (
  `supplierid` varchar(10) NOT NULL DEFAULT '',
  `contact` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(30) NOT NULL DEFAULT '',
  `tel` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `mobile` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(55) NOT NULL DEFAULT '',
  `ordercontact` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`supplierid`,`contact`),
  KEY `Contact` (`contact`),
  KEY `SupplierID` (`supplierid`),
  CONSTRAINT `suppliercontacts_ibfk_1` FOREIGN KEY (`supplierid`) REFERENCES `suppliers` (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.suppliercontacts: ~0 rows (大约)
/*!40000 ALTER TABLE `suppliercontacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliercontacts` ENABLE KEYS */;

-- Dumping structure for table cncerp.supplierdiscounts
CREATE TABLE IF NOT EXISTS `supplierdiscounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplierno` varchar(10) NOT NULL,
  `stockid` varchar(20) NOT NULL,
  `discountnarrative` varchar(20) NOT NULL,
  `discountpercent` double NOT NULL,
  `discountamount` double NOT NULL,
  `effectivefrom` date NOT NULL,
  `effectiveto` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `supplierno` (`supplierno`),
  KEY `effectivefrom` (`effectivefrom`),
  KEY `effectiveto` (`effectiveto`),
  KEY `stockid` (`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.supplierdiscounts: ~0 rows (大约)
/*!40000 ALTER TABLE `supplierdiscounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplierdiscounts` ENABLE KEYS */;

-- Dumping structure for table cncerp.suppliers
CREATE TABLE IF NOT EXISTS `suppliers` (
  `supplierid` varchar(10) NOT NULL DEFAULT '',
  `suppname` varchar(40) NOT NULL DEFAULT '',
  `address1` varchar(40) NOT NULL DEFAULT '',
  `address2` varchar(40) NOT NULL DEFAULT '',
  `address3` varchar(40) NOT NULL DEFAULT '',
  `address4` varchar(50) NOT NULL DEFAULT '',
  `address5` varchar(20) NOT NULL DEFAULT '',
  `address6` varchar(40) NOT NULL DEFAULT '',
  `supptype` tinyint(4) NOT NULL DEFAULT 1,
  `lat` float(10,6) NOT NULL DEFAULT 0.000000,
  `lng` float(10,6) NOT NULL DEFAULT 0.000000,
  `currcode` char(3) NOT NULL DEFAULT '',
  `suppliersince` date NOT NULL DEFAULT '1000-01-01',
  `paymentterms` char(2) NOT NULL DEFAULT '',
  `lastpaid` double NOT NULL DEFAULT 0,
  `lastpaiddate` datetime DEFAULT NULL,
  `bankact` varchar(30) NOT NULL DEFAULT '',
  `bankref` varchar(12) NOT NULL DEFAULT '',
  `bankpartics` varchar(12) NOT NULL DEFAULT '',
  `remittance` tinyint(4) NOT NULL DEFAULT 1,
  `taxgroupid` tinyint(4) NOT NULL DEFAULT 1,
  `factorcompanyid` int(11) NOT NULL DEFAULT 1,
  `taxref` varchar(20) NOT NULL DEFAULT '',
  `phn` varchar(50) NOT NULL DEFAULT '',
  `port` varchar(200) NOT NULL DEFAULT '',
  `email` varchar(55) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `telephone` varchar(25) DEFAULT NULL,
  `url` varchar(50) NOT NULL DEFAULT '',
  `defaultshipper` int(11) NOT NULL DEFAULT 0,
  `defaultgl` varchar(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`supplierid`),
  KEY `CurrCode` (`currcode`),
  KEY `PaymentTerms` (`paymentterms`),
  KEY `SuppName` (`suppname`),
  KEY `taxgroupid` (`taxgroupid`),
  CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`currcode`) REFERENCES `currencies` (`currabrev`),
  CONSTRAINT `suppliers_ibfk_2` FOREIGN KEY (`paymentterms`) REFERENCES `paymentterms` (`termsindicator`),
  CONSTRAINT `suppliers_ibfk_3` FOREIGN KEY (`taxgroupid`) REFERENCES `taxgroups` (`taxgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.suppliers: ~0 rows (大约)
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;

-- Dumping structure for table cncerp.suppliertype
CREATE TABLE IF NOT EXISTS `suppliertype` (
  `typeid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `typename` varchar(100) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.suppliertype: ~3 rows (大约)
/*!40000 ALTER TABLE `suppliertype` DISABLE KEYS */;
INSERT INTO `suppliertype` (`typeid`, `typename`) VALUES
	(1, '长期'),
	(2, '短期'),
	(3, '专供');
/*!40000 ALTER TABLE `suppliertype` ENABLE KEYS */;

-- Dumping structure for table cncerp.supptrans
CREATE TABLE IF NOT EXISTS `supptrans` (
  `transno` int(11) NOT NULL DEFAULT 0,
  `type` smallint(6) NOT NULL DEFAULT 0,
  `supplierno` varchar(10) NOT NULL DEFAULT '',
  `suppreference` varchar(20) NOT NULL DEFAULT '',
  `trandate` date NOT NULL DEFAULT '1000-01-01',
  `duedate` date NOT NULL DEFAULT '1000-01-01',
  `inputdate` datetime NOT NULL,
  `settled` tinyint(4) NOT NULL DEFAULT 0,
  `rate` double NOT NULL DEFAULT 1,
  `ovamount` double NOT NULL DEFAULT 0,
  `ovgst` double NOT NULL DEFAULT 0,
  `diffonexch` double NOT NULL DEFAULT 0,
  `alloc` double NOT NULL DEFAULT 0,
  `transtext` text DEFAULT NULL,
  `hold` tinyint(4) NOT NULL DEFAULT 0,
  `chequeno` varchar(16) NOT NULL DEFAULT '',
  `void` tinyint(1) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `DueDate` (`duedate`),
  KEY `Hold` (`hold`),
  KEY `SupplierNo` (`supplierno`),
  KEY `Settled` (`settled`),
  KEY `SupplierNo_2` (`supplierno`,`suppreference`),
  KEY `SuppReference` (`suppreference`),
  KEY `TranDate` (`trandate`),
  KEY `TransNo` (`transno`),
  KEY `Type` (`type`),
  KEY `TypeTransNo` (`transno`,`type`),
  CONSTRAINT `supptrans_ibfk_1` FOREIGN KEY (`type`) REFERENCES `systypes` (`typeid`),
  CONSTRAINT `supptrans_ibfk_2` FOREIGN KEY (`supplierno`) REFERENCES `suppliers` (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.supptrans: ~0 rows (大约)
/*!40000 ALTER TABLE `supptrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `supptrans` ENABLE KEYS */;

-- Dumping structure for table cncerp.supptranstaxes
CREATE TABLE IF NOT EXISTS `supptranstaxes` (
  `supptransid` int(11) NOT NULL DEFAULT 0,
  `taxauthid` tinyint(4) NOT NULL DEFAULT 0,
  `taxamount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`supptransid`,`taxauthid`),
  KEY `taxauthid` (`taxauthid`),
  CONSTRAINT `supptranstaxes_ibfk_1` FOREIGN KEY (`taxauthid`) REFERENCES `taxauthorities` (`taxid`),
  CONSTRAINT `supptranstaxes_ibfk_2` FOREIGN KEY (`supptransid`) REFERENCES `supptrans` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.supptranstaxes: ~0 rows (大约)
/*!40000 ALTER TABLE `supptranstaxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `supptranstaxes` ENABLE KEYS */;

-- Dumping structure for table cncerp.systypes
CREATE TABLE IF NOT EXISTS `systypes` (
  `typeid` smallint(6) NOT NULL DEFAULT 0,
  `typename` char(50) NOT NULL DEFAULT '',
  `typeno` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`typeid`),
  KEY `TypeNo` (`typeno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.systypes: ~36 rows (大约)
/*!40000 ALTER TABLE `systypes` DISABLE KEYS */;
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES
	(0, '转账凭证', 0),
	(1, '总账付款', 0),
	(2, '总账收款', 0),
	(3, 'Standing Journal', 0),
	(10, '销售发票', 0),
	(11, '红字发票', 0),
	(12, '收款收据', 0),
	(15, '其它应收', 0),
	(16, '物料调拨', 0),
	(17, '盘点调整', 0),
	(18, '采购订单', 0),
	(19, '领料单', 0),
	(20, '采购发票', 0),
	(21, '供应商红字发票', 0),
	(22, '偿还债务', 0),
	(23, '应付账款', 0),
	(25, '收货暂估', 0),
	(26, '生产入库', 0),
	(28, '工单发料', 0),
	(29, '工单差异', 0),
	(30, '销售定单', 0),
	(31, '运费', 0),
	(32, '合同费', 0),
	(35, '成本更新', 0),
	(36, '汇兑差额', 0),
	(37, '招、投标', 0),
	(38, '易耗品申请单', 0),
	(40, '工作单', 0),
	(41, '资产加入', 0),
	(42, '资产变更', 0),
	(43, '资产报废', 0),
	(44, '折旧', 0),
	(49, '增加资产', 0),
	(50, '期初结余', 0),
	(500, '客户编号', 0),
	(600, 'Auto Supplier Number', 0);
/*!40000 ALTER TABLE `systypes` ENABLE KEYS */;

-- Dumping structure for table cncerp.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `tagref` tinyint(4) NOT NULL AUTO_INCREMENT,
  `tagdescription` varchar(50) NOT NULL,
  PRIMARY KEY (`tagref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.tags: ~0 rows (大约)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Dumping structure for table cncerp.taxauthorities
CREATE TABLE IF NOT EXISTS `taxauthorities` (
  `taxid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `description` varchar(20) NOT NULL DEFAULT '',
  `taxglcode` varchar(20) NOT NULL DEFAULT '0',
  `purchtaxglaccount` varchar(20) NOT NULL DEFAULT '0',
  `bank` varchar(50) NOT NULL DEFAULT '',
  `bankacctype` varchar(20) NOT NULL DEFAULT '',
  `bankacc` varchar(50) NOT NULL DEFAULT '',
  `bankswift` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`taxid`),
  KEY `TaxGLCode` (`taxglcode`),
  KEY `PurchTaxGLAccount` (`purchtaxglaccount`),
  CONSTRAINT `taxauthorities_ibfk_1` FOREIGN KEY (`taxglcode`) REFERENCES `chartmaster` (`accountcode`),
  CONSTRAINT `taxauthorities_ibfk_2` FOREIGN KEY (`purchtaxglaccount`) REFERENCES `chartmaster` (`accountcode`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.taxauthorities: ~3 rows (大约)
/*!40000 ALTER TABLE `taxauthorities` DISABLE KEYS */;
INSERT INTO `taxauthorities` (`taxid`, `description`, `taxglcode`, `purchtaxglaccount`, `bank`, `bankacctype`, `bankacc`, `bankswift`) VALUES
	(14, '增值税', '22212', '22211', '', '', '', ''),
	(15, '特殊免税', '2221', '2221', '', '', '', ''),
	(16, '普税%3', '22213', '22213', '', '', '', '');
/*!40000 ALTER TABLE `taxauthorities` ENABLE KEYS */;

-- Dumping structure for table cncerp.taxauthrates
CREATE TABLE IF NOT EXISTS `taxauthrates` (
  `taxauthority` tinyint(4) NOT NULL DEFAULT 1,
  `dispatchtaxprovince` tinyint(4) NOT NULL DEFAULT 1,
  `taxcatid` tinyint(4) NOT NULL DEFAULT 0,
  `taxrate` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`taxauthority`,`dispatchtaxprovince`,`taxcatid`),
  KEY `TaxAuthority` (`taxauthority`),
  KEY `dispatchtaxprovince` (`dispatchtaxprovince`),
  KEY `taxcatid` (`taxcatid`),
  CONSTRAINT `taxauthrates_ibfk_1` FOREIGN KEY (`taxauthority`) REFERENCES `taxauthorities` (`taxid`),
  CONSTRAINT `taxauthrates_ibfk_2` FOREIGN KEY (`taxcatid`) REFERENCES `taxcategories` (`taxcatid`),
  CONSTRAINT `taxauthrates_ibfk_3` FOREIGN KEY (`dispatchtaxprovince`) REFERENCES `taxprovinces` (`taxprovinceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.taxauthrates: ~30 rows (大约)
/*!40000 ALTER TABLE `taxauthrates` DISABLE KEYS */;
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES
	(14, 1, 1, 0),
	(14, 1, 2, 0.17),
	(14, 1, 4, 0),
	(14, 1, 6, 0),
	(14, 1, 7, 0.01),
	(14, 2, 1, 0),
	(14, 2, 2, 0.13),
	(14, 2, 4, 0),
	(14, 2, 6, 0),
	(14, 2, 7, 0.02),
	(15, 1, 1, 0),
	(15, 1, 2, 0),
	(15, 1, 4, 0),
	(15, 1, 6, 0),
	(15, 1, 7, 0),
	(15, 2, 1, 0),
	(15, 2, 2, 0),
	(15, 2, 4, 0),
	(15, 2, 6, 0),
	(15, 2, 7, 0),
	(16, 1, 1, 0.03),
	(16, 1, 2, 0),
	(16, 1, 4, 0),
	(16, 1, 6, 0),
	(16, 1, 7, 0),
	(16, 2, 1, 0.05),
	(16, 2, 2, 0),
	(16, 2, 4, 0),
	(16, 2, 6, 0),
	(16, 2, 7, 0);
/*!40000 ALTER TABLE `taxauthrates` ENABLE KEYS */;

-- Dumping structure for table cncerp.taxcategories
CREATE TABLE IF NOT EXISTS `taxcategories` (
  `taxcatid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `taxcatname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`taxcatid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.taxcategories: ~5 rows (大约)
/*!40000 ALTER TABLE `taxcategories` DISABLE KEYS */;
INSERT INTO `taxcategories` (`taxcatid`, `taxcatname`) VALUES
	(1, '普税'),
	(2, '增值税'),
	(4, '免税'),
	(6, 'Freight'),
	(7, '所得税');
/*!40000 ALTER TABLE `taxcategories` ENABLE KEYS */;

-- Dumping structure for table cncerp.taxgroups
CREATE TABLE IF NOT EXISTS `taxgroups` (
  `taxgroupid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `taxgroupdescription` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`taxgroupid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.taxgroups: ~3 rows (大约)
/*!40000 ALTER TABLE `taxgroups` DISABLE KEYS */;
INSERT INTO `taxgroups` (`taxgroupid`, `taxgroupdescription`) VALUES
	(1, '普通税种'),
	(2, '增值税种'),
	(3, '特殊免税');
/*!40000 ALTER TABLE `taxgroups` ENABLE KEYS */;

-- Dumping structure for table cncerp.taxgrouptaxes
CREATE TABLE IF NOT EXISTS `taxgrouptaxes` (
  `taxgroupid` tinyint(4) NOT NULL DEFAULT 0,
  `taxauthid` tinyint(4) NOT NULL DEFAULT 0,
  `calculationorder` tinyint(4) NOT NULL DEFAULT 0,
  `taxontax` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`taxgroupid`,`taxauthid`),
  KEY `taxgroupid` (`taxgroupid`),
  KEY `taxauthid` (`taxauthid`),
  CONSTRAINT `taxgrouptaxes_ibfk_1` FOREIGN KEY (`taxgroupid`) REFERENCES `taxgroups` (`taxgroupid`),
  CONSTRAINT `taxgrouptaxes_ibfk_2` FOREIGN KEY (`taxauthid`) REFERENCES `taxauthorities` (`taxid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.taxgrouptaxes: ~3 rows (大约)
/*!40000 ALTER TABLE `taxgrouptaxes` DISABLE KEYS */;
INSERT INTO `taxgrouptaxes` (`taxgroupid`, `taxauthid`, `calculationorder`, `taxontax`) VALUES
	(1, 16, 0, 0),
	(2, 14, 0, 0),
	(3, 15, 0, 0);
/*!40000 ALTER TABLE `taxgrouptaxes` ENABLE KEYS */;

-- Dumping structure for table cncerp.taxprovinces
CREATE TABLE IF NOT EXISTS `taxprovinces` (
  `taxprovinceid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `taxprovincename` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`taxprovinceid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.taxprovinces: ~2 rows (大约)
/*!40000 ALTER TABLE `taxprovinces` DISABLE KEYS */;
INSERT INTO `taxprovinces` (`taxprovinceid`, `taxprovincename`) VALUES
	(1, '中国大陆'),
	(2, '中国香港');
/*!40000 ALTER TABLE `taxprovinces` ENABLE KEYS */;

-- Dumping structure for table cncerp.tenderitems
CREATE TABLE IF NOT EXISTS `tenderitems` (
  `tenderid` int(11) NOT NULL DEFAULT 0,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `quantity` varchar(40) NOT NULL DEFAULT '',
  `units` varchar(20) NOT NULL DEFAULT 'each',
  PRIMARY KEY (`tenderid`,`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.tenderitems: ~0 rows (大约)
/*!40000 ALTER TABLE `tenderitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenderitems` ENABLE KEYS */;

-- Dumping structure for table cncerp.tenders
CREATE TABLE IF NOT EXISTS `tenders` (
  `tenderid` int(11) NOT NULL DEFAULT 0,
  `location` varchar(5) NOT NULL DEFAULT '',
  `address1` varchar(40) NOT NULL DEFAULT '',
  `address2` varchar(40) NOT NULL DEFAULT '',
  `address3` varchar(40) NOT NULL DEFAULT '',
  `address4` varchar(40) NOT NULL DEFAULT '',
  `address5` varchar(20) NOT NULL DEFAULT '',
  `address6` varchar(15) NOT NULL DEFAULT '',
  `telephone` varchar(25) NOT NULL DEFAULT '',
  `closed` int(2) NOT NULL DEFAULT 0,
  `requiredbydate` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`tenderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.tenders: ~0 rows (大约)
/*!40000 ALTER TABLE `tenders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenders` ENABLE KEYS */;

-- Dumping structure for table cncerp.tendersuppliers
CREATE TABLE IF NOT EXISTS `tendersuppliers` (
  `tenderid` int(11) NOT NULL DEFAULT 0,
  `supplierid` varchar(10) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `responded` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tenderid`,`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.tendersuppliers: ~0 rows (大约)
/*!40000 ALTER TABLE `tendersuppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tendersuppliers` ENABLE KEYS */;

-- Dumping structure for table cncerp.timesheets
CREATE TABLE IF NOT EXISTS `timesheets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wo` int(11) NOT NULL COMMENT 'loose FK with workorders',
  `employeeid` int(11) NOT NULL,
  `weekending` date NOT NULL DEFAULT '1900-01-01',
  `workcentre` varchar(5) NOT NULL COMMENT 'loose FK with workcentres',
  `day1` double NOT NULL DEFAULT 0,
  `day2` double NOT NULL DEFAULT 0,
  `day3` double NOT NULL DEFAULT 0,
  `day4` double NOT NULL DEFAULT 0,
  `day5` double NOT NULL DEFAULT 0,
  `day6` double NOT NULL DEFAULT 0,
  `day7` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=entered 1=submitted 2=approved',
  PRIMARY KEY (`id`),
  KEY `workcentre` (`workcentre`),
  KEY `employees` (`employeeid`),
  KEY `wo` (`wo`),
  KEY `weekending` (`weekending`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`employeeid`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.timesheets: ~0 rows (大约)
/*!40000 ALTER TABLE `timesheets` DISABLE KEYS */;
/*!40000 ALTER TABLE `timesheets` ENABLE KEYS */;

-- Dumping structure for table cncerp.transby
CREATE TABLE IF NOT EXISTS `transby` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT 0,
  `typeno` bigint(16) NOT NULL DEFAULT 1,
  `step` tinyint(4) NOT NULL DEFAULT 0,
  `stepdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` varchar(20) NOT NULL DEFAULT '',
  `realname` varchar(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.transby: ~0 rows (大约)
/*!40000 ALTER TABLE `transby` DISABLE KEYS */;
/*!40000 ALTER TABLE `transby` ENABLE KEYS */;

-- Dumping structure for table cncerp.unitsofmeasure
CREATE TABLE IF NOT EXISTS `unitsofmeasure` (
  `unitid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `unitname` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.unitsofmeasure: ~11 rows (大约)
/*!40000 ALTER TABLE `unitsofmeasure` DISABLE KEYS */;
INSERT INTO `unitsofmeasure` (`unitid`, `unitname`) VALUES
	(1, '瓶'),
	(2, '袋'),
	(3, '盒'),
	(4, '件'),
	(6, '千克'),
	(7, '克'),
	(8, '个'),
	(9, '把'),
	(10, '套'),
	(11, '元'),
	(12, '打');
/*!40000 ALTER TABLE `unitsofmeasure` ENABLE KEYS */;

-- Dumping structure for table cncerp.woitems
CREATE TABLE IF NOT EXISTS `woitems` (
  `wo` int(11) NOT NULL,
  `stockid` char(20) NOT NULL DEFAULT '',
  `qtyreqd` double NOT NULL DEFAULT 1,
  `qtyrecd` double NOT NULL DEFAULT 0,
  `stdcost` double NOT NULL,
  `nextlotsnref` varchar(20) DEFAULT '',
  `comments` longblob DEFAULT NULL,
  PRIMARY KEY (`wo`,`stockid`),
  KEY `stockid` (`stockid`),
  CONSTRAINT `woitems_ibfk_1` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `woitems_ibfk_2` FOREIGN KEY (`wo`) REFERENCES `workorders` (`wo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.woitems: ~0 rows (大约)
/*!40000 ALTER TABLE `woitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `woitems` ENABLE KEYS */;

-- Dumping structure for table cncerp.worequirements
CREATE TABLE IF NOT EXISTS `worequirements` (
  `wo` int(11) NOT NULL,
  `parentstockid` varchar(20) NOT NULL,
  `stockid` varchar(20) NOT NULL,
  `qtypu` double NOT NULL DEFAULT 1,
  `stdcost` double NOT NULL DEFAULT 0,
  `autoissue` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`wo`,`parentstockid`,`stockid`),
  KEY `stockid` (`stockid`),
  KEY `worequirements_ibfk_3` (`parentstockid`),
  CONSTRAINT `worequirements_ibfk_1` FOREIGN KEY (`wo`) REFERENCES `workorders` (`wo`),
  CONSTRAINT `worequirements_ibfk_2` FOREIGN KEY (`stockid`) REFERENCES `stockmaster` (`stockid`),
  CONSTRAINT `worequirements_ibfk_3` FOREIGN KEY (`wo`, `parentstockid`) REFERENCES `woitems` (`wo`, `stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.worequirements: ~0 rows (大约)
/*!40000 ALTER TABLE `worequirements` DISABLE KEYS */;
/*!40000 ALTER TABLE `worequirements` ENABLE KEYS */;

-- Dumping structure for table cncerp.workcentres
CREATE TABLE IF NOT EXISTS `workcentres` (
  `code` char(5) NOT NULL DEFAULT '',
  `location` char(5) NOT NULL DEFAULT '',
  `description` char(20) NOT NULL DEFAULT '',
  `capacity` double NOT NULL DEFAULT 1,
  `overheadperhour` decimal(10,0) NOT NULL DEFAULT 0,
  `overheadrecoveryact` varchar(20) NOT NULL DEFAULT '0',
  `setuphrs` decimal(10,0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`code`),
  KEY `Description` (`description`),
  KEY `Location` (`location`),
  CONSTRAINT `workcentres_ibfk_1` FOREIGN KEY (`location`) REFERENCES `locations` (`loccode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.workcentres: ~0 rows (大约)
/*!40000 ALTER TABLE `workcentres` DISABLE KEYS */;
/*!40000 ALTER TABLE `workcentres` ENABLE KEYS */;

-- Dumping structure for table cncerp.workorders
CREATE TABLE IF NOT EXISTS `workorders` (
  `wo` int(11) NOT NULL,
  `loccode` char(5) NOT NULL DEFAULT '',
  `requiredby` date NOT NULL DEFAULT '1000-01-01',
  `startdate` date NOT NULL DEFAULT '1000-01-01',
  `costissued` double NOT NULL DEFAULT 0,
  `closed` tinyint(4) NOT NULL DEFAULT 0,
  `closecomments` longblob DEFAULT NULL,
  `reference` varchar(40) NOT NULL DEFAULT '',
  `remark` text DEFAULT NULL,
  PRIMARY KEY (`wo`),
  KEY `LocCode` (`loccode`),
  KEY `StartDate` (`startdate`),
  KEY `RequiredBy` (`requiredby`),
  CONSTRAINT `worksorders_ibfk_1` FOREIGN KEY (`loccode`) REFERENCES `locations` (`loccode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.workorders: ~0 rows (大约)
/*!40000 ALTER TABLE `workorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `workorders` ENABLE KEYS */;

-- Dumping structure for table cncerp.woserialnos
CREATE TABLE IF NOT EXISTS `woserialnos` (
  `wo` int(11) NOT NULL,
  `stockid` varchar(20) NOT NULL,
  `serialno` varchar(30) NOT NULL,
  `quantity` double NOT NULL DEFAULT 1,
  `qualitytext` text NOT NULL,
  PRIMARY KEY (`wo`,`stockid`,`serialno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.woserialnos: ~0 rows (大约)
/*!40000 ALTER TABLE `woserialnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `woserialnos` ENABLE KEYS */;

-- Dumping structure for table cncerp.www_users
CREATE TABLE IF NOT EXISTS `www_users` (
  `userid` varchar(20) NOT NULL DEFAULT '',
  `password` text NOT NULL,
  `realname` varchar(35) NOT NULL DEFAULT '',
  `customerid` varchar(10) NOT NULL DEFAULT '',
  `supplierid` varchar(10) NOT NULL DEFAULT '',
  `salesman` char(3) NOT NULL,
  `phone` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(55) DEFAULT NULL,
  `defaultlocation` varchar(5) NOT NULL DEFAULT '',
  `fullaccess` int(11) NOT NULL DEFAULT 1,
  `cancreatetender` tinyint(1) NOT NULL DEFAULT 0,
  `lastvisitdate` datetime DEFAULT NULL,
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `pagesize` varchar(20) NOT NULL DEFAULT 'A4',
  `modulesallowed` varchar(25) NOT NULL,
  `showdashboard` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Display dashboard after login',
  `showpagehelp` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Turn off/on page help',
  `showfieldhelp` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Turn off/on field help',
  `blocked` tinyint(4) NOT NULL DEFAULT 0,
  `displayrecordsmax` int(11) NOT NULL DEFAULT 0,
  `theme` varchar(30) NOT NULL DEFAULT 'fresh',
  `language` varchar(10) NOT NULL DEFAULT 'en_GB.utf8',
  `pdflanguage` tinyint(1) NOT NULL DEFAULT 0,
  `department` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`userid`),
  KEY `CustomerID` (`customerid`),
  KEY `DefaultLocation` (`defaultlocation`),
  CONSTRAINT `www_users_ibfk_1` FOREIGN KEY (`defaultlocation`) REFERENCES `locations` (`loccode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table cncerp.www_users: ~0 rows (大约)
/*!40000 ALTER TABLE `www_users` DISABLE KEYS */;
INSERT INTO `www_users` (`userid`, `password`, `realname`, `customerid`, `supplierid`, `salesman`, `phone`, `email`, `defaultlocation`, `fullaccess`, `cancreatetender`, `lastvisitdate`, `branchcode`, `pagesize`, `modulesallowed`, `showdashboard`, `showpagehelp`, `showfieldhelp`, `blocked`, `displayrecordsmax`, `theme`, `language`, `pdflanguage`, `department`) VALUES
	('admin', '$2y$10$vKwpxifZGQJcg.Obz1//Le.Moz9oSK3LXeUij82YXV3TXYqaW6qOa', '管理员', '', '', '', '', 'admin@cncerp.org', '', 8, 0, '2019-11-08 03:10:47', '', 'A4', '1,1,1,1,1,1,1,1,1,1,1,', 0, 1, 1, 0, 50, 'stisla', 'zh_CN.utf8', 2, 0);
/*!40000 ALTER TABLE `www_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
