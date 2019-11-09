SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE IF NOT EXISTS `accountgroups` (
  `groupname` char(30) NOT NULL DEFAULT '',
  `sectioninaccounts` int(11) NOT NULL DEFAULT '0',
  `pandl` tinyint(4) NOT NULL DEFAULT '1',
  `sequenceintb` smallint(6) NOT NULL DEFAULT '0',
  `parentgroupname` varchar(30) NOT NULL,
  PRIMARY KEY (`groupname`),
  KEY `SequenceInTB` (`sequenceintb`),
  KEY `sectioninaccounts` (`sectioninaccounts`),
  KEY `parentgroupname` (`parentgroupname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('产品定额成本差异', 2, 1, 532, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('以前年度损益调整', 5, 1, 820, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('其他业务收入', 1, 1, 541, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('其他它流动负债', 30, 0, 150, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('其他应付款', 30, 0, 145, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('其他应收款', 20, 0, 45, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('其他流动资产', 20, 0, 55, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('其他非流动负债', 30, 0, 165, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('其他非流动资产', 20, 0, 115, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('制造费用', 2, 1, 805, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('固定资产减值准备', 20, 0, 80, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('固定资产原价', 20, 0, 70, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('固定资产清理', 20, 0, 90, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('在建工程', 20, 0, 83, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('存货', 20, 0, 50, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('存货盘点损益', 2, 1, 536, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('实收资本（或股本）', 50, 0, 170, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('工程物资', 20, 0, 85, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('工程结算', 2, 1, 810, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('应交税费', 30, 0, 134, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('应付利息', 30, 0, 135, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('应付利润', 30, 0, 140, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('应付票据', 30, 0, 125, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('应付职工薪酬', 30, 0, 133, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('应付账款', 30, 0, 130, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('应收利息', 20, 0, 40, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('应收票据', 20, 0, 20, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('应收股利', 20, 0, 35, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('应收账款', 20, 0, 25, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('开发支出', 20, 0, 105, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('所得税费用', 2, 1, 550, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('投资收益', 2, 1, 531, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('无形资产', 20, 0, 100, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('A销售费用', 2, 1, 520, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('未分配利润', 50, 0, 185, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('本年利润', 50, 0, 184, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('生产性生物资产', 20, 0, 95, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('生产成本', 2, 1, 800, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('盈余公积', 50, 0, 180, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('短期借款', 30, 0, 120, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('短期投资', 20, 0, 15, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('管理费用', 2, 1, 525, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('累计折旧', 20, 0, 75, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('累计摊销', 20, 0, 101, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('营业外支出', 2, 1, 545, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('营业外收入', 1, 1, 540, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('营业成本', 2, 1, 505, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('营业收入', 1, 1, 500, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('营业税金及附加', 2, 1, 510, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('财务费用', 2, 1, 530, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('货币资金', 20, 0, 10, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('贸易费用', 2, 1, 527, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('资产减值损失', 2, 1, 537, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('资本公积', 50, 0, 175, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('长期侍摊费用', 20, 0, 110, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('长期借款', 30, 0, 155, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('长期债券投资', 20, 0, 60, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('长期应付款', 30, 0, 160, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('长期股权投资', 20, 0, 65, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('预付账款', 20, 0, 30, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('预收账款', 30, 0, 131, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('总部销售费用', 2, 1, 515, '');
INSERT INTO `accountgroups` (`groupname`, `sectioninaccounts`, `pandl`, `sequenceintb`, `parentgroupname`) VALUES('Sales', 1, 1, 10, '');

CREATE TABLE IF NOT EXISTS `accountsection` (
  `sectionid` int(11) NOT NULL DEFAULT '0',
  `sectionname` text NOT NULL,
  PRIMARY KEY (`sectionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `accountsection` (`sectionid`, `sectionname`) VALUES(1, '收入');
INSERT INTO `accountsection` (`sectionid`, `sectionname`) VALUES(2, '成本费用');
INSERT INTO `accountsection` (`sectionid`, `sectionname`) VALUES(5, '利润');
INSERT INTO `accountsection` (`sectionid`, `sectionname`) VALUES(20, '资产');
INSERT INTO `accountsection` (`sectionid`, `sectionname`) VALUES(30, '负债');
INSERT INTO `accountsection` (`sectionid`, `sectionname`) VALUES(50, '所有者权益');

CREATE TABLE IF NOT EXISTS `areas` (
  `areacode` char(3) NOT NULL,
  `areadescription` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`areacode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `areas` (`areacode`, `areadescription`) VALUES('870', 'A地');
INSERT INTO `areas` (`areacode`, `areadescription`) VALUES('871', 'B地');

CREATE TABLE IF NOT EXISTS `assetmanager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `serialno` varchar(30) NOT NULL DEFAULT '',
  `location` varchar(15) NOT NULL DEFAULT '',
  `cost` double NOT NULL DEFAULT '0',
  `depn` double NOT NULL DEFAULT '0',
  `datepurchased` date NOT NULL DEFAULT '0000-00-00',
  `disposalvalue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `audittrail` (
  `transactiondate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` varchar(20) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL,
  `querystring` text,
  KEY `UserID` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `bankaccounts` (
  `accountcode` varchar(20) NOT NULL DEFAULT '0',
  `currcode` char(3) NOT NULL,
  `invoice` smallint(2) NOT NULL DEFAULT '0',
  `bankaccountcode` varchar(50) NOT NULL DEFAULT '',
  `bankaccountname` char(50) NOT NULL DEFAULT '',
  `bankaccountnumber` char(50) NOT NULL DEFAULT '',
  `bankaddress` char(50) DEFAULT NULL,
  PRIMARY KEY (`accountcode`),
  KEY `currcode` (`currcode`),
  KEY `BankAccountName` (`bankaccountname`),
  KEY `BankAccountNumber` (`bankaccountnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `bankaccounts` (`accountcode`, `currcode`, `invoice`, `bankaccountcode`, `bankaccountname`, `bankaccountnumber`, `bankaddress`) VALUES('100108', 'CNY', 1, '100108', '总公司现金账户', '000000', '总部出纳室');
INSERT INTO `bankaccounts` (`accountcode`, `currcode`, `invoice`, `bankaccountcode`, `bankaccountname`, `bankaccountnumber`, `bankaddress`) VALUES('100109', 'CNY', 1, '100109', 'B地分公司现金账户', '00000', '分公司钱柜');
INSERT INTO `bankaccounts` (`accountcode`, `currcode`, `invoice`, `bankaccountcode`, `bankaccountname`, `bankaccountnumber`, `bankaddress`) VALUES('100201', 'CNY', 1, '100201', '中国农业银行XXXXXX支行基本户', '0001212121212121', '世纪大道');
INSERT INTO `bankaccounts` (`accountcode`, `currcode`, `invoice`, `bankaccountcode`, `bankaccountname`, `bankaccountnumber`, `bankaddress`) VALUES('100202', 'CNY', 1, '100202', '中国农业银行XXXXXX支行专户', '111010101101010', '世纪大道');

CREATE TABLE IF NOT EXISTS `bankaccountusers` (
  `accountcode` varchar(20) NOT NULL COMMENT 'Bank account code',
  `userid` varchar(20) NOT NULL COMMENT 'User code'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `bankaccountusers` (`accountcode`, `userid`) VALUES('100108', 'admin');
INSERT INTO `bankaccountusers` (`accountcode`, `userid`) VALUES('100108', 'cncerp');
INSERT INTO `bankaccountusers` (`accountcode`, `userid`) VALUES('100109', 'admin');
INSERT INTO `bankaccountusers` (`accountcode`, `userid`) VALUES('100109', 'cncerp');
INSERT INTO `bankaccountusers` (`accountcode`, `userid`) VALUES('100201', 'admin');
INSERT INTO `bankaccountusers` (`accountcode`, `userid`) VALUES('100201', 'cncerp');
INSERT INTO `bankaccountusers` (`accountcode`, `userid`) VALUES('100202', 'admin');
INSERT INTO `bankaccountusers` (`accountcode`, `userid`) VALUES('100202', 'cncerp');

CREATE TABLE IF NOT EXISTS `banktrans` (
  `banktransid` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `transno` bigint(20) NOT NULL DEFAULT '0',
  `bankact` varchar(20) NOT NULL DEFAULT '0',
  `ref` varchar(50) NOT NULL DEFAULT '',
  `amountcleared` double NOT NULL DEFAULT '0',
  `exrate` double NOT NULL DEFAULT '1' COMMENT 'From bank account currency to payment currency',
  `functionalexrate` double NOT NULL DEFAULT '1' COMMENT 'Account currency to functional currency',
  `transdate` date NOT NULL DEFAULT '0000-00-00',
  `banktranstype` varchar(30) NOT NULL DEFAULT '',
  `amount` double NOT NULL DEFAULT '0',
  `currcode` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`banktransid`),
  KEY `BankAct` (`bankact`,`ref`),
  KEY `TransDate` (`transdate`),
  KEY `TransType` (`banktranstype`),
  KEY `Type` (`type`,`transno`),
  KEY `CurrCode` (`currcode`),
  KEY `ref` (`ref`),
  KEY `ref_2` (`ref`),
  KEY `ref_3` (`ref`),
  KEY `ref_4` (`ref`),
  KEY `ref_5` (`ref`),
  KEY `ref_6` (`ref`),
  KEY `ref_7` (`ref`),
  KEY `ref_8` (`ref`),
  KEY `ref_9` (`ref`),
  KEY `ref_10` (`ref`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

INSERT INTO `banktrans` (`banktransid`, `type`, `transno`, `bankact`, `ref`, `amountcleared`, `exrate`, `functionalexrate`, `transdate`, `banktranstype`, `amount`, `currcode`) VALUES(5, 12, 2, '100201', '收销售款', 0, 1, 1, '2013-12-14', '现金交易', 986.45, 'CNY');
INSERT INTO `banktrans` (`banktransid`, `type`, `transno`, `bankact`, `ref`, `amountcleared`, `exrate`, `functionalexrate`, `transdate`, `banktranstype`, `amount`, `currcode`) VALUES(4, 12, 1, '100201', '苏试股东将来投资款', 0, 1, 1, '2013-12-14', '现金交易', 10000000, 'CNY');

CREATE TABLE IF NOT EXISTS `bom` (
  `parent` char(20) NOT NULL DEFAULT '',
  `component` char(20) NOT NULL DEFAULT '',
  `workcentreadded` char(5) NOT NULL DEFAULT '',
  `loccode` char(5) NOT NULL DEFAULT '',
  `effectiveafter` date NOT NULL DEFAULT '0000-00-00',
  `effectiveto` date NOT NULL DEFAULT '9999-12-31',
  `quantity` double NOT NULL DEFAULT '1',
  `autoissue` tinyint(4) NOT NULL DEFAULT '0',
  `isshow` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`parent`,`component`,`workcentreadded`,`loccode`),
  KEY `Component` (`component`),
  KEY `EffectiveAfter` (`effectiveafter`),
  KEY `EffectiveTo` (`effectiveto`),
  KEY `LocCode` (`loccode`),
  KEY `Parent` (`parent`,`effectiveafter`,`effectiveto`,`loccode`),
  KEY `Parent_2` (`parent`),
  KEY `WorkCentreAdded` (`workcentreadded`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `bom` (`parent`, `component`, `workcentreadded`, `loccode`, `effectiveafter`, `effectiveto`, `quantity`, `autoissue`, `isshow`) VALUES('3007', '3002', '0001', 'SC002', '2013-12-13', '2033-12-14', 1, 1, 1);
INSERT INTO `bom` (`parent`, `component`, `workcentreadded`, `loccode`, `effectiveafter`, `effectiveto`, `quantity`, `autoissue`, `isshow`) VALUES('3007', '3003', '0001', 'SC002', '2013-12-13', '2033-12-14', 1, 1, 1);
INSERT INTO `bom` (`parent`, `component`, `workcentreadded`, `loccode`, `effectiveafter`, `effectiveto`, `quantity`, `autoissue`, `isshow`) VALUES('3007', '3004', '0001', 'SC002', '2013-12-13', '2033-12-14', 1, 1, 1);
INSERT INTO `bom` (`parent`, `component`, `workcentreadded`, `loccode`, `effectiveafter`, `effectiveto`, `quantity`, `autoissue`, `isshow`) VALUES('3007', '3005', '0001', 'SC002', '2013-12-13', '2033-12-14', 1, 1, 1);
INSERT INTO `bom` (`parent`, `component`, `workcentreadded`, `loccode`, `effectiveafter`, `effectiveto`, `quantity`, `autoissue`, `isshow`) VALUES('3007', '6001', '0001', 'SC002', '2013-12-13', '2033-12-14', 0.5, 1, 1);
INSERT INTO `bom` (`parent`, `component`, `workcentreadded`, `loccode`, `effectiveafter`, `effectiveto`, `quantity`, `autoissue`, `isshow`) VALUES('3007', '6002', '0001', 'SC002', '2013-12-13', '2033-12-14', 0.5, 1, 1);
INSERT INTO `bom` (`parent`, `component`, `workcentreadded`, `loccode`, `effectiveafter`, `effectiveto`, `quantity`, `autoissue`, `isshow`) VALUES('3008', '3002', '0001', 'SC002', '2013-12-13', '2033-12-14', 4, 1, 1);
INSERT INTO `bom` (`parent`, `component`, `workcentreadded`, `loccode`, `effectiveafter`, `effectiveto`, `quantity`, `autoissue`, `isshow`) VALUES('3008', '3003', '0001', 'SC002', '2013-12-13', '2033-12-14', 1, 1, 1);
INSERT INTO `bom` (`parent`, `component`, `workcentreadded`, `loccode`, `effectiveafter`, `effectiveto`, `quantity`, `autoissue`, `isshow`) VALUES('3008', '3004', '0001', 'SC002', '2013-12-13', '2033-12-14', 1, 1, 1);
INSERT INTO `bom` (`parent`, `component`, `workcentreadded`, `loccode`, `effectiveafter`, `effectiveto`, `quantity`, `autoissue`, `isshow`) VALUES('3008', '3005', '0001', 'SC002', '2013-12-13', '2033-12-14', 1, 1, 1);
INSERT INTO `bom` (`parent`, `component`, `workcentreadded`, `loccode`, `effectiveafter`, `effectiveto`, `quantity`, `autoissue`, `isshow`) VALUES('3005', '3006', '0001', 'SC002', '2013-12-13', '2033-12-14', 0.3, 1, 1);
INSERT INTO `bom` (`parent`, `component`, `workcentreadded`, `loccode`, `effectiveafter`, `effectiveto`, `quantity`, `autoissue`, `isshow`) VALUES('3005', '6001', '0001', 'SC002', '2013-12-13', '2033-12-14', 0.3, 1, 1);
INSERT INTO `bom` (`parent`, `component`, `workcentreadded`, `loccode`, `effectiveafter`, `effectiveto`, `quantity`, `autoissue`, `isshow`) VALUES('3005', '6002', '0001', 'SC002', '2013-12-13', '2033-12-14', 0.2, 1, 1);

CREATE TABLE IF NOT EXISTS `chartdetails` (
  `accountcode` varchar(20) NOT NULL DEFAULT '0',
  `period` smallint(6) NOT NULL DEFAULT '0',
  `budget` double NOT NULL DEFAULT '0',
  `actual` double NOT NULL DEFAULT '0',
  `bfwd` double NOT NULL DEFAULT '0',
  `bfwdbudget` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountcode`,`period`),
  KEY `Period` (`period`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100108', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100108', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100108', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100108', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100108', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100108', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100108', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100108', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100108', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100108', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100108', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100108', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100108', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100108', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100109', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100109', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100109', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100109', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100109', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100109', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100109', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100109', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100109', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100109', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100109', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100109', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100109', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100109', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100201', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100201', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100201', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100201', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100201', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100201', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100201', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100201', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100201', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100201', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100201', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100201', 0, 0, 10000986.45, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100201', 1, 0, 0, 10000986.45, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100201', 2, 0, 0, 10000986.45, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100202', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100202', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100202', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100202', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100202', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100202', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100202', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100202', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100202', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100202', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100202', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100202', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100202', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100202', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100203', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100203', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100203', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100203', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100203', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100203', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100203', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100203', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100203', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100203', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100203', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100203', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100203', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100203', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100204', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100204', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100204', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100204', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100204', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100204', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100204', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100204', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100204', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100204', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100204', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100204', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100204', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100204', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100205', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100205', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100205', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100205', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100205', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100205', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100205', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100205', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100205', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100205', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100205', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100205', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100205', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('100205', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1101', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1101', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1101', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1101', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1101', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1101', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1101', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1101', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1101', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1101', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1101', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1101', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1101', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1101', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1121', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1121', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1121', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1121', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1121', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1121', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1121', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1121', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1121', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1121', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1121', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1121', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1121', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1121', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1122', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1122', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1122', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1122', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1122', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1122', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1122', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1122', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1122', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1122', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1122', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1122', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1122', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1122', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1123', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1123', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1123', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1123', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1123', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1123', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1123', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1123', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1123', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1123', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1123', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1123', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1123', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1123', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('112301', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('112301', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('112301', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('112301', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('112301', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('112301', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('112301', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('112301', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('112301', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('112301', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('112301', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('112301', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('112301', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('112301', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1131', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1131', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1131', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1131', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1131', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1131', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1131', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1131', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1131', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1131', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1131', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1131', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1131', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1131', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1132', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1132', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1132', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1132', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1132', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1132', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1132', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1132', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1132', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1132', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1132', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1132', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1132', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1132', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122104', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122104', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122104', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122104', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122104', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122104', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122104', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122104', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122104', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122104', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122104', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122104', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122104', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122104', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122111', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122111', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122111', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122111', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122111', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122111', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122111', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122111', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122111', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122111', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122111', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122111', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122111', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122111', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122135', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122135', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122135', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122135', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122135', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122135', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122135', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122135', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122135', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122135', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122135', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122135', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122135', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('122135', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1403', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1403', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1403', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1403', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1403', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1403', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1403', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1403', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1403', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1403', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1403', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1403', 0, 0, -1778.674, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1403', 1, 0, 0, -1778.674, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1403', 2, 0, 0, -1778.674, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1405', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1405', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1405', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1405', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1405', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1405', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1405', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1405', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1405', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1405', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1405', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1405', 0, 0, 2228.154, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1405', 1, 0, 0, 2228.154, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1405', 2, 0, 0, 2228.154, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1406', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1406', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1406', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1406', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1406', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1406', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1406', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1406', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1406', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1406', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1406', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1406', 0, 0, -0.000000000000092370555648813, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1406', 1, 0, 0, -0.000000000000092370555648813, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1406', 2, 0, 0, -0.000000000000092370555648813, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1407', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1407', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1407', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1407', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1407', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1407', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1407', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1407', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1407', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1407', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1407', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1407', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1407', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1407', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1408', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1408', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1408', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1408', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1408', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1408', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1408', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1408', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1408', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1408', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1408', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1408', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1408', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1408', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('141201', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('141201', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('141201', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('141201', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('141201', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('141201', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('141201', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('141201', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('141201', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('141201', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('141201', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('141201', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('141201', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('141201', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1501', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1501', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1501', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1501', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1501', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1501', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1501', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1501', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1501', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1501', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1501', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1501', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1501', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1501', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1511', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1511', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1511', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1511', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1511', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1511', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1511', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1511', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1511', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1511', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1511', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1511', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1511', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1511', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1601', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1601', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1601', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1601', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1601', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1601', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1601', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1601', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1601', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1601', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1601', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1601', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1601', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1601', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1602', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1602', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1602', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1602', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1602', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1602', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1602', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1602', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1602', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1602', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1602', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1602', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1602', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1602', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1603', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1603', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1603', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1603', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1603', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1603', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1603', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1603', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1603', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1603', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1603', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1603', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1603', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1603', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('160401', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('160401', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('160401', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('160401', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('160401', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('160401', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('160401', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('160401', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('160401', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('160401', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('160401', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('160401', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('160401', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('160401', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1605', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1605', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1605', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1605', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1605', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1605', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1605', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1605', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1605', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1605', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1605', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1605', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1605', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1605', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1606', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1606', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1606', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1606', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1606', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1606', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1606', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1606', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1606', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1606', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1606', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1606', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1606', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1606', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1701', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1701', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1701', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1701', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1701', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1701', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1701', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1701', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1701', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1701', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1701', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1701', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1701', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1701', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1702', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1702', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1702', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1702', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1702', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1702', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1702', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1702', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1702', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1702', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1702', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1702', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1702', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1702', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1801', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1801', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1801', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1801', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1801', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1801', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1801', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1801', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1801', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1801', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1801', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1801', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1801', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('1801', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200101', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200101', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200101', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200101', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200101', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200101', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200101', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200101', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200101', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200101', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200101', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200101', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200101', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200101', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200102', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200102', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200102', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200102', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200102', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200102', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200102', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200102', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200102', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200102', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200102', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200102', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200102', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('200102', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2201', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2201', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2201', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2201', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2201', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2201', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2201', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2201', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2201', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2201', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2201', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2201', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2201', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2201', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2202', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2202', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2202', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2202', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2202', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2202', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2202', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2202', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2202', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2202', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2202', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2202', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2202', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2202', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220201', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220201', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220201', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220201', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220201', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220201', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220201', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220201', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220201', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220201', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220201', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220201', 0, 0, -604, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220201', 1, 0, 0, -604, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220201', 2, 0, 0, -604, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220203', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220203', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220203', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220203', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220203', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220203', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220203', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220203', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220203', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220203', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220203', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220203', 0, 0, -10000000, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220203', 1, 0, 0, -10000000, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220203', 2, 0, 0, -10000000, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220301', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220301', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220301', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220301', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220301', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220301', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220301', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220301', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220301', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220301', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220301', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220301', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220301', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('220301', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2211', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2211', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2211', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2211', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2211', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2211', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2211', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2211', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2211', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2211', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2211', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2211', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2211', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2211', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2221', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2221', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2221', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2221', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2221', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2221', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2221', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2221', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2221', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2221', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2221', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2221', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2221', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2221', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2231', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2231', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2231', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2231', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2231', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2231', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2231', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2231', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2231', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2231', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2231', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2231', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2231', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2231', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2232', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2232', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2232', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2232', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2232', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2232', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2232', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2232', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2232', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2232', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2232', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2232', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2232', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2232', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224105', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224105', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224105', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224105', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224105', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224105', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224105', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224105', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224105', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224105', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224105', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224105', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224105', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224105', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224120', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224120', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224120', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224120', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224120', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224120', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224120', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224120', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224120', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224120', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224120', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224120', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224120', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('224120', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2501', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2501', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2501', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2501', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2501', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2501', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2501', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2501', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2501', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2501', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2501', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2501', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2501', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2501', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2701', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2701', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2701', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2701', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2701', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2701', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2701', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2701', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2701', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2701', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2701', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2701', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2701', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('2701', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4001', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4001', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4001', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4001', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4001', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4001', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4001', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4001', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4001', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4001', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4001', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4001', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4001', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4001', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4002', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4002', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4002', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4002', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4002', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4002', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4002', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4002', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4002', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4002', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4002', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4002', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4002', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4002', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4101', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4101', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4101', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4101', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4101', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4101', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4101', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4101', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4101', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4101', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4101', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4101', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4101', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4101', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4103', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4103', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4103', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4103', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4103', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4103', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4103', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4103', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4103', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4103', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4103', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4103', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4103', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4103', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4104', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4104', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4104', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4104', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4104', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4104', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4104', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4104', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4104', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4104', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4104', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4104', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4104', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('4104', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500102', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500102', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500102', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500102', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500102', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500102', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500102', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500102', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500102', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500102', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500102', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500102', 0, 0, -49.5, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500102', 1, 0, 0, -49.5, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500102', 2, 0, 0, -49.5, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500103', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500103', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500103', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500103', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500103', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500103', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500103', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500103', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500103', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500103', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500103', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500103', 0, 0, -32, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500103', 1, 0, 0, -32, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('500103', 2, 0, 0, -32, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510101', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510101', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510101', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510101', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510101', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510101', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510101', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510101', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510101', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510101', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510101', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510101', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510101', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510101', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510102', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510102', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510102', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510102', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510102', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510102', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510102', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510102', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510102', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510102', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510102', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510102', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510102', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510102', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510103', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510103', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510103', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510103', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510103', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510103', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510103', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510103', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510103', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510103', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510103', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510103', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510103', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510103', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510104', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510104', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510104', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510104', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510104', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510104', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510104', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510104', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510104', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510104', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510104', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510104', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510104', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510104', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510105', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510105', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510105', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510105', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510105', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510105', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510105', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510105', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510105', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510105', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510105', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510105', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510105', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510105', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510106', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510106', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510106', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510106', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510106', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510106', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510106', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510106', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510106', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510106', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510106', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510106', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510106', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510106', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510107', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510107', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510107', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510107', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510107', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510107', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510107', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510107', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510107', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510107', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510107', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510107', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510107', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('510107', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('5402', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('5402', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('5402', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('5402', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('5402', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('5402', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('5402', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('5402', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('5402', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('5402', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('5402', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('5402', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('5402', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('5402', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010101', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010101', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010101', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010101', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010101', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010101', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010101', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010101', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010101', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010101', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010101', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010101', 0, 0, -829, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010101', 1, 0, 0, -829, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010101', 2, 0, 0, -829, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010102', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010102', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010102', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010102', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010102', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010102', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010102', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010102', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010102', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010102', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010102', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010102', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010102', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010102', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010201', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010201', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010201', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010201', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010201', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010201', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010201', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010201', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010201', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010201', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010201', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010201', 0, 0, 222.02, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010201', 1, 0, 0, 222.02, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010201', 2, 0, 0, 222.02, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010202', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010202', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010202', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010202', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010202', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010202', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010202', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010202', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010202', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010202', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010202', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010202', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010202', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('60010202', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6111', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6111', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6111', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6111', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6111', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6111', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6111', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6111', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6111', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6111', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6111', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6111', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6111', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6111', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6301', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6301', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6301', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6301', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6301', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6301', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6301', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6301', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6301', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6301', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6301', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6301', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6301', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6301', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010101', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010101', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010101', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010101', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010101', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010101', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010101', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010101', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010101', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010101', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010101', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010101', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010101', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010101', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010102', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010102', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010102', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010102', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010102', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010102', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010102', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010102', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010102', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010102', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010102', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010102', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010102', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010102', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010201', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010201', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010201', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010201', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010201', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010201', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010201', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010201', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010201', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010201', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010201', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010201', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010201', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010201', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010202', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010202', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010202', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010202', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010202', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010202', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010202', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010202', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010202', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010202', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010202', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010202', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010202', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('64010202', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6402', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6402', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6402', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6402', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6402', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6402', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6402', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6402', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6402', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6402', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6402', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6402', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6402', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6402', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640301', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640301', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640301', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640301', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640301', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640301', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640301', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640301', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640301', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640301', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640301', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640301', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640301', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640301', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640302', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640302', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640302', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640302', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640302', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640302', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640302', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640302', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640302', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640302', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640302', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640302', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640302', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640302', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640303', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640303', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640303', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640303', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640303', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640303', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640303', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640303', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640303', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640303', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640303', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640303', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640303', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640303', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640304', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640304', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640304', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640304', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640304', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640304', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640304', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640304', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640304', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640304', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640304', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640304', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640304', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('640304', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('650101', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('650101', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('650101', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('650101', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('650101', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('650101', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('650101', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('650101', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('650101', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('650101', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('650101', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('650101', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('650101', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('650101', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660201', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660201', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660201', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660201', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660201', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660201', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660201', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660201', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660201', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660201', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660201', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660201', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660201', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660201', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660202', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660202', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660202', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660202', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660202', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660202', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660202', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660202', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660202', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660202', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660202', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660202', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660202', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660202', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660203', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660203', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660203', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660203', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660203', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660203', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660203', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660203', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660203', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660203', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660203', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660203', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660203', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660203', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660204', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660204', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660204', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660204', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660204', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660204', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660204', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660204', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660204', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660204', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660204', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660204', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660204', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660204', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660205', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660205', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660205', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660205', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660205', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660205', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660205', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660205', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660205', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660205', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660205', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660205', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660205', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660205', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660206', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660206', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660206', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660206', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660206', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660206', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660206', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660206', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660206', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660206', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660206', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660206', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660206', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660206', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660207', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660207', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660207', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660207', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660207', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660207', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660207', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660207', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660207', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660207', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660207', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660207', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660207', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660207', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660208', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660208', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660208', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660208', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660208', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660208', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660208', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660208', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660208', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660208', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660208', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660208', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660208', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660208', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660209', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660209', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660209', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660209', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660209', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660209', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660209', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660209', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660209', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660209', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660209', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660209', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660209', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660209', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660210', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660210', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660210', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660210', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660210', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660210', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660210', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660210', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660210', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660210', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660210', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660210', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660210', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660210', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660211', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660211', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660211', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660211', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660211', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660211', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660211', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660211', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660211', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660211', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660211', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660211', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660211', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660211', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660212', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660212', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660212', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660212', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660212', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660212', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660212', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660212', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660212', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660212', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660212', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660212', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660212', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660212', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660213', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660213', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660213', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660213', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660213', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660213', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660213', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660213', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660213', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660213', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660213', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660213', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660213', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660213', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660214', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660214', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660214', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660214', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660214', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660214', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660214', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660214', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660214', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660214', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660214', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660214', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660214', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660214', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660215', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660215', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660215', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660215', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660215', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660215', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660215', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660215', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660215', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660215', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660215', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660215', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660215', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660215', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660216', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660216', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660216', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660216', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660216', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660216', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660216', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660216', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660216', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660216', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660216', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660216', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660216', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660216', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660217', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660217', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660217', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660217', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660217', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660217', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660217', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660217', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660217', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660217', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660217', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660217', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660217', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660217', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660218', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660218', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660218', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660218', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660218', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660218', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660218', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660218', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660218', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660218', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660218', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660218', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660218', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660218', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660301', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660301', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660301', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660301', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660301', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660301', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660301', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660301', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660301', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660301', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660301', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660301', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660301', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660301', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660302', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660302', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660302', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660302', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660302', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660302', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660302', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660302', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660302', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660302', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660302', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660302', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660302', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660302', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660303', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660303', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660303', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660303', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660303', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660303', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660303', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660303', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660303', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660303', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660303', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660303', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660303', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660303', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660304', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660304', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660304', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660304', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660304', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660304', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660304', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660304', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660304', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660304', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660304', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660304', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660304', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660304', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660401', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660401', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660401', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660401', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660401', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660401', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660401', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660401', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660401', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660401', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660401', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660401', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660401', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660401', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660402', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660402', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660402', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660402', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660402', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660402', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660402', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660402', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660402', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660402', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660402', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660402', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660402', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660402', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660403', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660403', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660403', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660403', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660403', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660403', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660403', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660403', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660403', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660403', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660403', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660403', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660403', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660403', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660404', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660404', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660404', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660404', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660404', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660404', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660404', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660404', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660404', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660404', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660404', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660404', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660404', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660404', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660405', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660405', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660405', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660405', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660405', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660405', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660405', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660405', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660405', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660405', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660405', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660405', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660405', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660405', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660406', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660406', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660406', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660406', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660406', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660406', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660406', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660406', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660406', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660406', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660406', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660406', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660406', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660406', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660407', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660407', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660407', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660407', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660407', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660407', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660407', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660407', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660407', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660407', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660407', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660407', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660407', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660407', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660408', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660408', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660408', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660408', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660408', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660408', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660408', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660408', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660408', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660408', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660408', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660408', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660408', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660408', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660409', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660409', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660409', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660409', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660409', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660409', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660409', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660409', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660409', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660409', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660409', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660409', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660409', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660409', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660410', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660410', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660410', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660410', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660410', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660410', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660410', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660410', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660410', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660410', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660410', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660410', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660410', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660410', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660411', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660411', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660411', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660411', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660411', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660411', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660411', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660411', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660411', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660411', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660411', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660411', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660411', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660411', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660412', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660412', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660412', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660412', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660412', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660412', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660412', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660412', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660412', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660412', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660412', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660412', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660412', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660412', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660413', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660413', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660413', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660413', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660413', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660413', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660413', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660413', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660413', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660413', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660413', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660413', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660413', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660413', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660415', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660415', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660415', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660415', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660415', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660415', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660415', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660415', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660415', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660415', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660415', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660415', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660415', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660415', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660501', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660501', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660501', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660501', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660501', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660501', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660501', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660501', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660501', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660501', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660501', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660501', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660501', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660501', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660502', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660502', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660502', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660502', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660502', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660502', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660502', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660502', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660502', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660502', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660502', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660502', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660502', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660502', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660503', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660503', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660503', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660503', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660503', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660503', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660503', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660503', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660503', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660503', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660503', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660503', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660503', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660503', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660504', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660504', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660504', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660504', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660504', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660504', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660504', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660504', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660504', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660504', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660504', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660504', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660504', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660504', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660505', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660505', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660505', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660505', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660505', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660505', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660505', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660505', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660505', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660505', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660505', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660505', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660505', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660505', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660506', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660506', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660506', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660506', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660506', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660506', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660506', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660506', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660506', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660506', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660506', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660506', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660506', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660506', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660507', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660507', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660507', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660507', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660507', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660507', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660507', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660507', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660507', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660507', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660507', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660507', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660507', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660507', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660508', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660508', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660508', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660508', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660508', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660508', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660508', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660508', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660508', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660508', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660508', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660508', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660508', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660508', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660509', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660509', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660509', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660509', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660509', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660509', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660509', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660509', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660509', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660509', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660509', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660509', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660509', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660509', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660510', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660510', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660510', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660510', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660510', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660510', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660510', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660510', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660510', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660510', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660510', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660510', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660510', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660510', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660511', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660511', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660511', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660511', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660511', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660511', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660511', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660511', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660511', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660511', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660511', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660511', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660511', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660511', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660512', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660512', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660512', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660512', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660512', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660512', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660512', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660512', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660512', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660512', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660512', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660512', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660512', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660512', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660513', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660513', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660513', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660513', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660513', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660513', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660513', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660513', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660513', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660513', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660513', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660513', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660513', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660513', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660514', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660514', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660514', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660514', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660514', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660514', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660514', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660514', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660514', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660514', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660514', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660514', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660514', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660514', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660515', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660515', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660515', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660515', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660515', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660515', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660515', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660515', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660515', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660515', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660515', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660515', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660515', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660515', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660516', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660516', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660516', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660516', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660516', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660516', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660516', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660516', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660516', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660516', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660516', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660516', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660516', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660516', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660601', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660601', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660601', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660601', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660601', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660601', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660601', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660601', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660601', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660601', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660601', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660601', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660601', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660601', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660602', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660602', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660602', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660602', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660602', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660602', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660602', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660602', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660602', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660602', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660602', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660602', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660602', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660602', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660603', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660603', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660603', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660603', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660603', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660603', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660603', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660603', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660603', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660603', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660603', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660603', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660603', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660603', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660604', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660604', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660604', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660604', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660604', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660604', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660604', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660604', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660604', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660604', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660604', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660604', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660604', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660604', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660605', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660605', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660605', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660605', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660605', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660605', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660605', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660605', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660605', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660605', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660605', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660605', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660605', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660605', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660606', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660606', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660606', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660606', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660606', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660606', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660606', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660606', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660606', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660606', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660606', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660606', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660606', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660606', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660607', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660607', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660607', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660607', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660607', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660607', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660607', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660607', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660607', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660607', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660607', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660607', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660607', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('660607', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6701', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6701', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6701', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6701', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6701', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6701', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6701', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6701', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6701', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6701', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6701', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6701', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6701', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6701', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6702', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6702', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6702', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6702', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6702', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6702', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6702', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6702', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6702', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6702', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6702', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6702', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6702', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6702', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6703', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6703', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6703', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6703', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6703', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6703', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6703', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6703', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6703', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6703', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6703', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6703', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6703', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6703', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('671101', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('671101', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('671101', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('671101', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('671101', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('671101', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('671101', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('671101', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('671101', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('671101', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('671101', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('671101', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('671101', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('671101', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6801', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6801', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6801', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6801', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6801', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6801', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6801', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6801', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6801', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6801', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6801', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6801', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6801', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6801', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6901', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6901', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6901', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6901', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6901', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6901', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6901', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6901', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6901', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6901', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6901', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6901', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6901', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('6901', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22211', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22211', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22211', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22211', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22211', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22211', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22211', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22211', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22211', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22211', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22211', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22211', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22211', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22211', 2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22212', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22212', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22212', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22212', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22212', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22212', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22212', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22212', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22212', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22212', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22212', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22212', 0, 0, -143.45, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22212', 1, 0, 0, -143.45, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22212', 2, 0, 0, -143.45, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22213', -11, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22213', -10, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22213', -9, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22213', -8, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22213', -7, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22213', -6, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22213', -5, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22213', -4, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22213', -3, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22213', -2, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22213', -1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22213', 0, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22213', 1, 0, 0, 0, 0);
INSERT INTO `chartdetails` (`accountcode`, `period`, `budget`, `actual`, `bfwd`, `bfwdbudget`) VALUES('22213', 2, 0, 0, 0, 0);

CREATE TABLE IF NOT EXISTS `chartmaster` (
  `accountcode` varchar(20) NOT NULL DEFAULT '0',
  `accountname` char(50) NOT NULL DEFAULT '',
  `group_` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`accountcode`),
  KEY `AccountName` (`accountname`),
  KEY `Group_` (`group_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('100108', '现金—总部库存现金', '货币资金');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('100109', '现金—B地库存现金', '货币资金');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('100201', '银行存款—XXX农行基本户', '货币资金');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('100202', '银行存款—总部农行专户', '货币资金');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('100203', '银行存款—XXX农村信用社XX分社', '货币资金');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('100204', '银行存款—工商银行XXXX支行', '货币资金');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('100205', '银行存款—农行卡511009', '货币资金');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1101', '短期投资', '短期投资');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1121', '应收票据', '应收票据');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1122', '应收账款', '应收账款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1123', '预付账款', '预付账款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('112301', '预付账款—零散供应商', '预付账款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1131', '应收利润', '应收股利');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1132', '应收利息', '应收利息');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('122104', '其他应收款—香港明好', '其他应收款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('122111', '其他应收款—XXX办事处', '其他应收款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('122135', '其他应收款—押金', '其他应收款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1403', '原材料', '存货');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1405', '库存商品', '存货');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1406', '在产品', '存货');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1407', '虚拟物料', '存货');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1408', '低值易耗品', '存货');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('141201', '待摊费用—房屋租金', '其他流动资产');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1501', '长期债券投资', '长期债券投资');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1511', '长期股权投资', '长期股权投资');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1601', '固定资产', '固定资产原价');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1602', '累计折旧', '累计折旧');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1603', '固定资产减值准备', '固定资产减值准备');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('160401', '建筑工程', '在建工程');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1605', '工程物资', '工程物资');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1606', '固定资产清理', '固定资产清理');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1701', '无形资产', '无形资产');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1702', '累计摊销', '累计摊销');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('1801', '长期待摊费用', '长期侍摊费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('200101', '短期借款—工商银行', '短期借款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('200102', '短期借款－农行总部支行', '短期借款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('2201', '应付票据', '应付票据');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('2202', '应付账款', '应付账款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('220201', '应付账款—暂估', '应付账款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('220203', '应付账款X股东', '应付账款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('220301', '预收账款—马老板', '预收账款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('2211', '应付职工薪酬', '应付职工薪酬');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('2221', '应交税费', '应交税费');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('2231', '应付利息', '应付利息');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('2232', '应付利润', '应付利润');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('224105', '其他应付款—XXX', '其他应付款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('224120', '其他应付款—XX汽车精修厂', '其他应付款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('2501', '长期借款', '长期借款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('2701', '长期应付款', '长期应付款');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('4001', '实收资本', '实收资本（或股本）');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('4002', '资本公积', '资本公积');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('4101', '盈余公积', '盈余公积');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('4103', '本年利润', '本年利润');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('4104', '利润分配', '未分配利润');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('500102', '生产成本—人工费', '生产成本');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('500103', '生产成本—制造费用', '生产成本');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('510101', '制造费用—物料消耗', '制造费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('510102', '制造费用—修理费', '制造费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('510103', '制造费用—固定资产折旧费', '制造费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('510104', '制造费用—办公费', '制造费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('510105', '制造费用—水电费', '制造费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('510106', '制造费用—停工损失', '制造费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('510107', '制造费用—福利费', '制造费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('5402', '工程结算', '工程结算');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('60010101', '主营业务收入－总部－产成品', '营业收入');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('60010102', '主营业务收入－总部－贸易', '营业收入');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('60010201', '主营业务收入－B地－产成品', '营业收入');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('60010202', '主营业务收入－B地－贸易', '营业收入');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('6111', '投资收益', '投资收益');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('6301', '营业外收入', '营业外收入');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('64010101', '主营业务成本－总部－产成品', '营业成本');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('64010102', '主营业务成本－总部－贸易', '营业成本');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('64010201', '主营业务成本－B地－产成品', '营业成本');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('64010202', '主营业务成本－B地－贸易', '营业成本');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('6402', '其他业务成本', '营业成本');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('640301', '营业税金及附加—城建税', '营业税金及附加');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('640302', '营业税金及附加—教育费附加', '营业税金及附加');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('640303', '营业税金及附加—印花税', '营业税金及附加');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('640304', '营业税金及附加—地方教育费附加', '营业税金及附加');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('650101', '其他业务收入—贸易', '其他业务收入');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660201', '管理费用－工资', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660202', '管理费用－固定资产折旧费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660203', '管理费用－办公费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660204', '管理费用－水电费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660205', '管理费用－差旅费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660206', '管理费用－招待费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660207', '管理费用－福利费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660208', '管理费用－车辆使用费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660209', '管理费用－税费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660210', '管理费用－送礼', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660211', '管理费用—电话费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660212', '管理费用—会务费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660213', '管理费用－培训费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660214', '管理费用-维修费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660215', '管理费用-绿化费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660216', '管理费用－工作经费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660217', '管理费用－会费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660218', '管理费用－登记/年检费', '管理费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660301', '财务费用－利息支出', '财务费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660302', '财务费用－金融手续费', '财务费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660303', '财务费用－利息收入', '财务费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660304', '财务费用－汇兑损益', '财务费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660401', '总部销售费用－工资', '总部销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660402', '总部销售费用－固定资产折旧费', '总部销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660403', '总部销售费用－办公费', '总部销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660404', '总部销售费用－水电费', '总部销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660405', '总部销售费用－差旅费', '总部销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660406', '总部销售费用－招待费', '总部销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660407', '总部销售费用－广告宣传费', '总部销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660408', '总部销售费用－邮寄费', '总部销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660409', '总部销售费用－运费', '总部销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660410', '总部销售费用－车辆使用费', '总部销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660411', '总部销售费用－维修费', '总部销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660412', '总部销售费用－电话费', '总部销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660413', '总部销售费用－自然损耗', '总部销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660415', '总部销售费用—促销费', '总部销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660501', 'B地销售费用－工资', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660502', 'B地销售费用－邮寄费', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660503', 'B地销售费用－办公费', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660504', '总部销售费用－车辆使用费', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660505', 'B地销售费用－金融手续费', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660506', 'B地销售费用－福利费', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660507', 'B地销售费用－招待费', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660508', 'B地销售费用－固定资产折旧费', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660509', 'B地销售费用－水电费', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660510', 'B地销售费用－差旅费', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660511', 'B地销售费用－维修费', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660512', 'B地销售费用－电话费', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660513', 'B地销售费用－运费', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660514', 'B地销售费用－促销费', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660515', 'B地销售费用－广告宣传费', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660516', 'B地销售费用－自然损耗', 'B地销售费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660601', '贸易费用—差旅费', '贸易费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660602', '贸易费用—汽车费用', '贸易费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660603', '贸易费用—招待费', '贸易费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660604', '贸易费用—装卸运输费', '贸易费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660605', '贸易费用—物料消耗', '贸易费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660606', '贸易费用—临时工工资', '贸易费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('660607', '贸易费用—自然损耗', '贸易费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('6701', '存货盘点损益', '存货盘点损益');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('6702', '资产减值损失', '资产减值损失');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('6703', '产品定额成本差异', '产品定额成本差异');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('671101', '营业外支出－罚款', '营业外支出');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('6801', '所得税费用', '所得税费用');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('6901', '以前年度损益调整', '以前年度损益调整');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('22211', '增值税-进项税', '应交税费');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('22212', '增值税-销项税', '应交税费');
INSERT INTO `chartmaster` (`accountcode`, `accountname`, `group_`) VALUES('22213', '所得税', '货币资金');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

INSERT INTO `cogsglpostings` (`id`, `area`, `stkcat`, `glcode`, `salestype`) VALUES(14, '870', 'ANY', '64010101', 'AN');
INSERT INTO `cogsglpostings` (`id`, `area`, `stkcat`, `glcode`, `salestype`) VALUES(13, '871', 'ANY', '60010201', 'AN');

CREATE TABLE IF NOT EXISTS `companies` (
  `coycode` int(11) NOT NULL DEFAULT '1',
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
  `gllink_debtors` tinyint(1) DEFAULT '1',
  `gllink_creditors` tinyint(1) DEFAULT '1',
  `gllink_stock` tinyint(1) DEFAULT '1',
  `freightact` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`coycode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `companies` (`coycode`, `coyname`, `gstno`, `companynumber`, `regoffice1`, `regoffice2`, `regoffice3`, `regoffice4`, `regoffice5`, `regoffice6`, `telephone`, `fax`, `email`, `currencydefault`, `debtorsact`, `pytdiscountact`, `creditorsact`, `payrollact`, `grnact`, `exchangediffact`, `purchasesexchangediffact`, `retainedearnings`, `gllink_debtors`, `gllink_creditors`, `gllink_stock`, `freightact`) VALUES(1, 'cncerpdemo', '53060000000000-1', '53060000000000', '中国云南', 'CNCERP测试工作室', '－', '－', '－', '－', '+86 0870 0000000', '+86 0871 88888888', '1312@163.com', 'CNY', '1122', '500102', '2202', '2211', '220201', '660304', '660304', '4103', 1, 1, 1, '500102');

CREATE TABLE IF NOT EXISTS `config` (
  `confname` varchar(35) NOT NULL DEFAULT '',
  `confvalue` text NOT NULL,
  PRIMARY KEY (`confname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `config` (`confname`, `confvalue`) VALUES('AllowOrderLineItemNarrative', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('AllowSalesOfZeroCostItems', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('AutoAuthorisePO', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('AutoCreateWOs', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('AutoDebtorNo', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('AutoIssue', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('CheckCreditLimits', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('Check_Price_Charged_vs_Order_Price', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('Check_Qty_Charged_vs_Del_Qty', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('CountryOfOperation', 'CN');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('CreditingControlledItems_MustExist', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DB_Maintenance', '30');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DB_Maintenance_LastRun', '2013-12-13');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DefaultBlindPackNote', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DefaultCreditLimit', '1000');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DefaultCustomerType', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DefaultDateFormat', 'Y/m/d');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DefaultDisplayRecordsMax', '50');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DefaultFactoryLocation', 'CK001');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DefaultPriceList', '01');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DefaultSupplierType', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DefaultTaxCategory', '2');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DefaultTheme', 'CNCERPUI');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('Default_Shipper', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DefineControlledOnWOEntry', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DispatchCutOffTime', '23');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('DoFreightCalc', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('EDIHeaderMsgId', 'D:01B:UN:EAN010');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('EDIReference', 'CNCERP');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('EDI_Incoming_Orders', 'companies/cncerpdemo/EDI_Incoming_Orders');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('EDI_MsgPending', 'companies/cncerpdemo/EDI_MsgPending');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('EDI_MsgSent', 'companies/cncerpdemo/EDI_Sent');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ExchangeRateFeed', 'Google');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('Extended_CustomerInfo', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('Extended_SupplierInfo', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('FactoryManagerEmail', 'admin@qq.com');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('FreightChargeAppliesIfLessThan', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('FreightTaxCategory', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('FrequentlyOrderedItems', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('geocode_integration', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('HTTPS_Only', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('InventoryManagerEmail', '');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('InvoicePortraitFormat', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ItemDescriptionLanguages', 'de_DE.utf8,fr_FR.utf8,it_IT.utf8,');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('LogPath', '');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('LogSeverity', '4');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('MaxImageSize', '300');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('MonthsAuditTrail', '6');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('NoPriceNoSales', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('NumberOfMonthMustBeShown', '6');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('NumberOfPeriodsOfStockUsage', '12');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('OverChargeProportion', '100');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('OverReceiveProportion', '100');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('PackNoteFormat', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('PageLength', '48');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('part_pics_dir', 'companies/cncerpdemo/EDI_Incoming_Orders');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('PastDueDays1', '30');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('PastDueDays2', '60');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('PO_AllowSameItemMultipleTimes', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ProhibitJournalsToControlAccounts', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ProhibitNegativeStock', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ProhibitPostingsBefore', '1900-01-01');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('PurchasingManagerEmail', 'admin@qq.com');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('QuickEntries', '10');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('RadioBeaconFileCounter', '/home/RadioBeacon/FileCounter');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('RadioBeaconFTP_user_name', 'RadioBeacon ftp server user name');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('RadioBeaconHomeDir', '/home/RadioBeacon');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('RadioBeaconStockLocation', 'BL');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('RadioBraconFTP_server', '192.168.2.2');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('RadioBreaconFilePrefix', 'ORDXX');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('RadionBeaconFTP_user_pass', 'Radio Beacon remote ftp server password');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('reports_dir', 'companies/cncerpdemo/EDI_Incoming_Orders');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('RequirePickingNote', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('RomalpaClause', '申明：本公司在无法收取货款时保留取回货物的权利');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopAboutUs', 'This web-shop software has been developed by Logic Works Ltd for webERP. For support contact Phil Daintree by rn&lt;a href=&quot;mailto:support@logicworks.co.nz&quot;&gt;email&lt;/a&gt;rn');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopAllowBankTransfer', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopAllowCreditCards', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopAllowPayPal', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopAllowSurcharges', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopBankTransferSurcharge', '0.0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopBranchCode', 'ANGRY');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopContactUs', 'For support contact Logic Works Ltd by rn&lt;a href=&quot;mailto:support@logicworks.co.nz&quot;&gt;email&lt;/a&gt;');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopCreditCardBankAccount', '1030');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopCreditCardGateway', 'SwipeHQ');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopCreditCardSurcharge', '2.5');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopDebtorNo', 'ANGRY');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopFreightMethod', 'NoFreight');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopFreightPolicy', 'Shipping information');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopManagerEmail', 'shopmanager@yourdomain.com');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopMode', 'test');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopName', 'CNCERP Demo Store');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopPayFlowMerchant', '');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopPayFlowPassword', '');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopPayFlowUser', '');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopPayFlowVendor', '');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopPayPalBankAccount', '1040');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopPaypalCommissionAccount', '7220');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopPayPalPassword', '');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopPayPalProPassword', '');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopPayPalProSignature', '');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopPayPalProUser', '');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopPayPalSignature', '');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopPayPalSurcharge', '3.4');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopPayPalUser', '');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopPrivacyStatement', '&lt;h2&gt;We are committed to protecting your privacy.&lt;/h2&gt;&lt;p&gt;We recognise that your personal information is confidential and we understand that it is important for you to know how we treat your personal information. Please read on for more information about our Privacy Policy.&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;h2&gt;1. What information do we collect and how do we use it?&lt;/h2&gt;&lt;br /&gt;We use the information it collects from you for the following purposes:&lt;ul&gt;&lt;li&gt;To assist us in providing you with a quality service&lt;/li&gt;&lt;li&gt;To respond to, and process, your request&lt;/li&gt;&lt;li&gt;To notify competition winners or fulfil promotional obligations&lt;/li&gt;&lt;li&gt;To inform you of, and provide you with, new and existing products and services offered by us from time to time &lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Any information we collect will not be used in ways that you have not consented to.&lt;/p&gt;&lt;p&gt;If you send us an email, we will store your email address and the contents of the email. This information will only be used for the purpose for which you have provided it. Electronic mail submitted to us is handled and saved according to the provisions of the the relevant statues.&lt;/p&gt;&lt;p&gt;When we offer contests and promotions, customers who choose to enter are asked to provide personal information. This information may then be used by us to notify winners, or to fulfil promotional obligations.&lt;/p&gt;&lt;p&gt;We may use the information we collect to occasionally notify you about important functionality changes to our website, new and special offers we think you will find valuable. If at any stage you no longer wish to receive these notifications you may opt out by sending us an email.&lt;/p&gt;&lt;p&gt;We do monitor this website in order to identify user trends and to improve the site if necessary. Any of this information, such as the type of site browser your computer has, will be used only in aggregate form and your individual details will not be identified.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;2. How do we store and protect your personal information and who has access to that information?&lt;/h2&gt;&lt;p&gt;As required by statute, we follow strict procedures when storing and using the information you have provided.&lt;/p&gt;&lt;p&gt;We do not sell, trade or rent your personal information to others. We may provide aggregate statistics about our customers and website trends. However, these statistics will not have any personal information which would identify you.&lt;/p&gt;&lt;p&gt;Only specific employees within our company are able to access your personal data.&lt;/p&gt;&lt;p&gt;This policy means that we may require proof of identity before we disclose any information to you.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;3. What should I do if I want to change my details or if I donÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢t want to be contacted any more?&lt;/h2&gt;&lt;p&gt;At any stage you have the right to access and amend or update your personal details. If you do not want to receive any communications from us you may opt out by contacting us see &lt;a href=&quot;index.php?Page=ContactUs&quot;&gt;the Contact Us Page&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;4. What happens if we decide to change this Privacy Policy?&lt;/h2&gt;&lt;p&gt;If we change any aspect of our Privacy Policy we will post these changes on this page so that you are always aware of how we are treating your personal information.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;5. How can you contact us if you have any questions, comments or concerns about our Privacy Policy?&lt;/h2&gt;&lt;p&gt;We welcome any questions or comments you may have please email us via the contact details provided on our &lt;a href=&quot;index.php?Page=ContactUs&quot;&gt;Contact Us Page&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Please also refer to our &lt;a href=&quot;index.php?Page=TermsAndConditions&quot;&gt;Terms and Conditions&lt;/a&gt; for more information.&lt;/p&gt;');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopShowOnlyAvailableItems', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopShowQOHColumn', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopStockLocations', 'MEL,TOR');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopSurchargeStockID', 'PAYTSURCHARGE');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopSwipeHQAPIKey', '');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopSwipeHQMerchantID', '');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopTermsConditions', '&lt;p&gt;These terms cover the use of this website. Use includes visits to our sites, purchases on our sites, participation in our database and promotions. These terms of use apply to you when you use our websites. Please read these terms carefully - if you need to refer to them again they can be accessed from the link at the bottom of any page of our websites.&lt;/p&gt;&lt;br /&gt;&lt;ul&gt;&lt;li&gt;&lt;h2&gt;1. Content&lt;/h2&gt;&lt;p&gt;While we endeavour to supply accurate information on this site, errors and omissions may occur. We do not accept any liability, direct or indirect, for any loss or damage which may directly or indirectly result from any advice, opinion, information, representation or omission whether negligent or otherwise, contained on this site. You are solely responsible for the actions you take in reliance on the content on, or accessed, through this site.&lt;/p&gt;&lt;p&gt;We reserve the right to make changes to the content on this site at any time and without notice.&lt;/p&gt;&lt;p&gt;To the extent permitted by law, we make no warranties in relation to the merchantability, fitness for purpose, freedom from computer virus, accuracy or availability of this web site or any other web site.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;2. Making a contract with us&lt;/h2&gt;&lt;p&gt;When you place an order with us, you are making an offer to buy goods. We will send you an e-mail to confirm that we have received and accepted your order, which indicates that a contract has been made between us. We will take payment from you when we accept your order. In the unlikely event that the goods are no longer available, we will refund your payment to the account it originated from, and advise that the goods are no longer available.&lt;/p&gt;&lt;p&gt;An order is placed on our website via adding a product to the shopping cart and proceeding through our checkout process. The checkout process includes giving us delivery and any other relevant details for your order, entering payment information and submitting your order. The final step consists of a confirmation page with full details of your order, which you are able to print as a receipt of your order. We will also email you with confirmation of your order.&lt;/p&gt;&lt;p&gt;We reserve the right to refuse or cancel any orders that we believe, solely by our own judgement, to be placed for commercial purposes, e.g. any kind of reseller. We also reserve the right to refuse or cancel any orders that we believe, solely by our own judgement, to have been placed fraudulently.&lt;/p&gt;&lt;p&gt;We reserve the right to limit the number of an item customers can purchase in a single transaction.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;3. Payment options&lt;/h2&gt;&lt;p&gt;We currently accept the following credit cards:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Visa&lt;/li&gt;&lt;li&gt;MasterCard&lt;/li&gt;&lt;li&gt;American Express&lt;/li&gt;&lt;/ul&gt;You can also pay using PayPal and internet bank transfer. Surcharges may apply for payment by PayPal or credit cards.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;4. Pricing&lt;/h2&gt;&lt;p&gt;All prices listed are inclusive of relevant taxes.  All prices are correct when published. Please note that we reserve the right to alter prices at any time for any reason. If this should happen after you have ordered a product, we will contact you prior to processing your order. Online and in store pricing may differ.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;5. Website and Credit Card Security&lt;/h2&gt;&lt;p&gt;We want you to have a safe and secure shopping experience online. All payments via our sites are processed using SSL (Secure Socket Layer) protocol, whereby sensitive information is encrypted to protect your privacy.&lt;/p&gt;&lt;p&gt;You can help to protect your details from unauthorised access by logging out each time you finish using the site, particularly if you are doing so from a public or shared computer.&lt;/p&gt;&lt;p&gt;For security purposes certain transactions may require proof of identification.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;6. Delivery and Delivery Charges&lt;/h2&gt;&lt;p&gt;We do not deliver to Post Office boxes.&lt;/p&gt;&lt;p&gt;Please note that a signature is required for all deliveries. The goods become the recipientÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢s property and responsibility once they have been signed for at the time of delivery. If goods are lost or damaged in transit, please contact us within 7 business days &lt;a href=&quot;index.php?Page=ContactUs&quot;&gt;see Contact Us page for contact details&lt;/a&gt;. We will use this delivery information to make a claim against our courier company. We will offer you the choice of a replacement or a full refund, once we have received confirmation from our courier company that delivery was not successful.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;7. Restricted Products&lt;/h2&gt;&lt;p&gt;Some products on our site carry an age restriction, if a product you have selected is R16 or R18 a message will appear in the cart asking you to confirm you are an appropriate age to purchase the item(s).  Confirming this means that you are of an eligible age to purchase the selected product(s).  You are also agreeing that you are not purchasing the item on behalf of a person who is not the appropriate age.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;8. Delivery Period&lt;/h2&gt;&lt;p&gt;Delivery lead time for products may vary. Deliveries to rural addresses may take longer.  You will receive an email that confirms that your order has been dispatched.&lt;/p&gt;&lt;p&gt;To ensure successful delivery, please provide a delivery address where someone will be present during business hours to sign for the receipt of your package. You can track your order by entering the tracking number emailed to you in the dispatch email at the Courier\\''s web-site.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;9. Disclaimer&lt;/h2&gt;&lt;p&gt;Our websites are intended to provide information for people shopping our products and accessing our services, including making purchases via our website and registering on our database to receive e-mails from us.&lt;/p&gt;&lt;p&gt;While we endeavour to supply accurate information on this site, errors and omissions may occur. We do not accept any liability, direct or indirect, for any loss or damage which may directly or indirectly result from any advice, opinion, information, representation or omission whether negligent or otherwise, contained on this site. You are solely responsible for the actions you take in reliance on the content on, or accessed, through this site.&lt;/p&gt;&lt;p&gt;We reserve the right to make changes to the content on this site at any time and without notice.&lt;/p&gt;&lt;p&gt;To the extent permitted by law, we make no warranties in relation to the merchantability, fitness for purpose, freedom from computer virus, accuracy or availability of this web site or any other web site.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;10. Links&lt;/h2&gt;&lt;p&gt;Please note that although this site has some hyperlinks to other third party websites, these sites have not been prepared by us are not under our control. The links are only provided as a convenience, and do not imply that we endorse, check, or approve of the third party site. We are not responsible for the privacy principles or content of these third party sites. We are not responsible for the availability of any of these links.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;11. Jurisdiction&lt;/h2&gt;&lt;p&gt;This website is governed by, and is to be interpreted in accordance with, the laws of  ????.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;h2&gt;12. Changes to this Agreement&lt;/h2&gt;&lt;p&gt;We reserve the right to alter, modify or update these terms of use. These terms apply to your order. We may change our terms and conditions at any time, so please do not assume that the same terms will apply to future orders.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShopTitle', 'Shop Home');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShowStockidOnImages', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('ShowValueOnGRN', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('Show_Settled_LastMonth', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('SmtpSetting', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('SO_AllowSameItemMultipleTimes', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('StandardCostDecimalPlaces', '2');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('TaxAuthorityReferenceName', 'XXX国家税务局');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('UpdateCurrencyRatesDaily', '0');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('VersionNumber', '4.11.2');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('WeightedAverageCosting', '1');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('WikiApp', '不启用');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('WikiPath', 'wiki');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('WorkingDaysWeek', '7');
INSERT INTO `config` (`confname`, `confvalue`) VALUES('YearEnd', '12');

CREATE TABLE IF NOT EXISTS `contractbom` (
  `contractref` varchar(20) NOT NULL DEFAULT '0',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `workcentreadded` char(5) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT '1',
  PRIMARY KEY (`contractref`,`stockid`,`workcentreadded`),
  KEY `Stockid` (`stockid`),
  KEY `ContractRef` (`contractref`),
  KEY `WorkCentreAdded` (`workcentreadded`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `contractcharges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractref` varchar(20) NOT NULL,
  `transtype` smallint(6) NOT NULL DEFAULT '20',
  `transno` int(11) NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `narrative` text NOT NULL,
  `anticipated` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `contractref` (`contractref`,`transtype`,`transno`),
  KEY `contractcharges_ibfk_2` (`transtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `contractreqts` (
  `contractreqid` int(11) NOT NULL AUTO_INCREMENT,
  `contractref` varchar(20) NOT NULL DEFAULT '0',
  `requirement` varchar(40) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT '1',
  `costperunit` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`contractreqid`),
  KEY `ContractRef` (`contractref`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `contracts` (
  `contractref` varchar(20) NOT NULL DEFAULT '',
  `contractdescription` text NOT NULL,
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `categoryid` varchar(6) NOT NULL DEFAULT '',
  `orderno` int(11) NOT NULL DEFAULT '0',
  `customerref` varchar(20) NOT NULL DEFAULT '',
  `margin` double NOT NULL DEFAULT '1',
  `wo` int(11) NOT NULL DEFAULT '0',
  `requireddate` date NOT NULL DEFAULT '0000-00-00',
  `drawing` varchar(50) NOT NULL DEFAULT '',
  `exrate` double NOT NULL DEFAULT '1',
  PRIMARY KEY (`contractref`),
  KEY `OrderNo` (`orderno`),
  KEY `CategoryID` (`categoryid`),
  KEY `Status` (`status`),
  KEY `WO` (`wo`),
  KEY `loccode` (`loccode`),
  KEY `DebtorNo` (`debtorno`,`branchcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `currencies` (
  `currency` char(20) NOT NULL DEFAULT '',
  `currabrev` char(3) NOT NULL DEFAULT '',
  `country` char(50) NOT NULL DEFAULT '',
  `hundredsname` char(15) NOT NULL DEFAULT 'Cents',
  `decimalplaces` tinyint(3) NOT NULL DEFAULT '2',
  `rate` double NOT NULL DEFAULT '1',
  `webcart` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'If 1 shown in weberp cart. if 0 no show',
  PRIMARY KEY (`currabrev`),
  KEY `Country` (`country`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `currencies` (`currency`, `currabrev`, `country`, `hundredsname`, `decimalplaces`, `rate`, `webcart`) VALUES('Australian Dollars', 'AUD', 'Australia', 'cents', 2, 1, 1);
INSERT INTO `currencies` (`currency`, `currabrev`, `country`, `hundredsname`, `decimalplaces`, `rate`, `webcart`) VALUES('Swiss Francs', 'CHF', 'Swizerland', 'centimes', 2, 1, 1);
INSERT INTO `currencies` (`currency`, `currabrev`, `country`, `hundredsname`, `decimalplaces`, `rate`, `webcart`) VALUES('Chinese yuan', 'CNY', '中国', '分', 2, 1, 1);
INSERT INTO `currencies` (`currency`, `currabrev`, `country`, `hundredsname`, `decimalplaces`, `rate`, `webcart`) VALUES('Euro', 'EUR', 'Euroland', 'cents', 2, 0.44, 1);
INSERT INTO `currencies` (`currency`, `currabrev`, `country`, `hundredsname`, `decimalplaces`, `rate`, `webcart`) VALUES('Pounds', 'GBP', 'England', 'Pence', 2, 0.8, 1);
INSERT INTO `currencies` (`currency`, `currabrev`, `country`, `hundredsname`, `decimalplaces`, `rate`, `webcart`) VALUES('US Dollars', 'USD', 'United States', 'Cents', 2, 0.85, 1);

CREATE TABLE IF NOT EXISTS `custallocns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amt` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `datealloc` date NOT NULL DEFAULT '0000-00-00',
  `transid_allocfrom` int(11) NOT NULL DEFAULT '0',
  `transid_allocto` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `DateAlloc` (`datealloc`),
  KEY `TransID_AllocFrom` (`transid_allocfrom`),
  KEY `TransID_AllocTo` (`transid_allocto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

INSERT INTO `custallocns` (`id`, `amt`, `datealloc`, `transid_allocfrom`, `transid_allocto`) VALUES(2, '986.4500', '2013-12-14', 7, 6);

CREATE TABLE IF NOT EXISTS `custbranch` (
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `brname` varchar(40) NOT NULL DEFAULT '',
  `braddress1` varchar(40) NOT NULL DEFAULT '',
  `braddress2` varchar(40) NOT NULL DEFAULT '',
  `braddress3` varchar(40) NOT NULL DEFAULT '',
  `braddress4` varchar(50) NOT NULL DEFAULT '',
  `braddress5` varchar(20) NOT NULL DEFAULT '',
  `braddress6` varchar(40) NOT NULL DEFAULT '',
  `lat` float(10,6) NOT NULL DEFAULT '0.000000',
  `lng` float(10,6) NOT NULL DEFAULT '0.000000',
  `estdeliverydays` smallint(6) NOT NULL DEFAULT '1',
  `area` char(3) NOT NULL,
  `salesman` varchar(4) NOT NULL DEFAULT '',
  `fwddate` smallint(6) NOT NULL DEFAULT '0',
  `phoneno` varchar(20) NOT NULL DEFAULT '',
  `faxno` varchar(20) NOT NULL DEFAULT '',
  `contactname` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(55) NOT NULL DEFAULT '',
  `defaultlocation` varchar(5) NOT NULL DEFAULT '',
  `taxgroupid` tinyint(4) NOT NULL DEFAULT '1',
  `defaultshipvia` int(11) NOT NULL DEFAULT '1',
  `deliverblind` tinyint(1) DEFAULT '1',
  `disabletrans` tinyint(4) NOT NULL DEFAULT '0',
  `brpostaddr1` varchar(40) NOT NULL DEFAULT '',
  `brpostaddr2` varchar(40) NOT NULL DEFAULT '',
  `brpostaddr3` varchar(40) NOT NULL DEFAULT '',
  `brpostaddr4` varchar(50) NOT NULL DEFAULT '',
  `brpostaddr5` varchar(20) NOT NULL DEFAULT '',
  `brpostaddr6` varchar(40) NOT NULL DEFAULT '',
  `specialinstructions` text NOT NULL,
  `custbranchcode` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`branchcode`,`debtorno`),
  KEY `BrName` (`brname`),
  KEY `DebtorNo` (`debtorno`),
  KEY `Salesman` (`salesman`),
  KEY `Area` (`area`),
  KEY `DefaultLocation` (`defaultlocation`),
  KEY `DefaultShipVia` (`defaultshipvia`),
  KEY `taxgroupid` (`taxgroupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `custbranch` (`branchcode`, `debtorno`, `brname`, `braddress1`, `braddress2`, `braddress3`, `braddress4`, `braddress5`, `braddress6`, `lat`, `lng`, `estdeliverydays`, `area`, `salesman`, `fwddate`, `phoneno`, `faxno`, `contactname`, `email`, `defaultlocation`, `taxgroupid`, `defaultshipvia`, `deliverblind`, `disabletrans`, `brpostaddr1`, `brpostaddr2`, `brpostaddr3`, `brpostaddr4`, `brpostaddr5`, `brpostaddr6`, `specialinstructions`, `custbranchcode`) VALUES('1001', '1001', '统一零售顾客', '无需计较', '', '', '', '', '中国', 0.000000, 0.000000, 0, '871', '001', 0, '123456', '', '霖守芝', '', 'CK001', 2, 1, 1, 0, '', '', '', '', '', '', '', '');

CREATE TABLE IF NOT EXISTS `custcontacts` (
  `contid` int(11) NOT NULL AUTO_INCREMENT,
  `debtorno` varchar(10) NOT NULL,
  `contactname` varchar(40) NOT NULL,
  `role` varchar(40) NOT NULL,
  `phoneno` varchar(20) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  PRIMARY KEY (`contid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `custnotes` (
  `noteid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `debtorno` varchar(10) NOT NULL DEFAULT '0',
  `href` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `priority` varchar(20) NOT NULL,
  PRIMARY KEY (`noteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `clientsince` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `holdreason` smallint(6) NOT NULL DEFAULT '0',
  `paymentterms` char(2) NOT NULL DEFAULT 'f',
  `discount` double NOT NULL DEFAULT '0',
  `pymtdiscount` double NOT NULL DEFAULT '0',
  `lastpaid` double NOT NULL DEFAULT '0',
  `lastpaiddate` datetime DEFAULT NULL,
  `creditlimit` double NOT NULL DEFAULT '1000',
  `invaddrbranch` tinyint(4) NOT NULL DEFAULT '0',
  `discountcode` char(2) NOT NULL DEFAULT '',
  `ediinvoices` tinyint(4) NOT NULL DEFAULT '0',
  `ediorders` tinyint(4) NOT NULL DEFAULT '0',
  `edireference` varchar(20) NOT NULL DEFAULT '',
  `editransport` varchar(5) NOT NULL DEFAULT 'email',
  `ediaddress` varchar(50) NOT NULL DEFAULT '',
  `ediserveruser` varchar(20) NOT NULL DEFAULT '',
  `ediserverpwd` varchar(20) NOT NULL DEFAULT '',
  `taxref` varchar(20) NOT NULL DEFAULT '',
  `customerpoline` tinyint(1) NOT NULL DEFAULT '0',
  `typeid` tinyint(4) NOT NULL DEFAULT '1',
  `language_id` varchar(10) NOT NULL DEFAULT 'en_GB.utf8',
  PRIMARY KEY (`debtorno`),
  KEY `Currency` (`currcode`),
  KEY `HoldReason` (`holdreason`),
  KEY `Name` (`name`),
  KEY `PaymentTerms` (`paymentterms`),
  KEY `SalesType` (`salestype`),
  KEY `EDIInvoices` (`ediinvoices`),
  KEY `EDIOrders` (`ediorders`),
  KEY `debtorsmaster_ibfk_5` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `debtorsmaster` (`debtorno`, `name`, `address1`, `address2`, `address3`, `address4`, `address5`, `address6`, `currcode`, `salestype`, `clientsince`, `holdreason`, `paymentterms`, `discount`, `pymtdiscount`, `lastpaid`, `lastpaiddate`, `creditlimit`, `invaddrbranch`, `discountcode`, `ediinvoices`, `ediorders`, `edireference`, `editransport`, `ediaddress`, `ediserveruser`, `ediserverpwd`, `taxref`, `customerpoline`, `typeid`, `language_id`) VALUES('1001', '统一零售顾客', '无需计较', '', '', '', '', '中国', 'CNY', '01', '2013-12-13 00:00:00', 1, '20', 0, 0, 986.45, '2013-12-14 00:00:00', 1000, 0, '', 0, 0, '', 'email', '', '', '', '', 0, 1, 'zh_CN.utf8');

CREATE TABLE IF NOT EXISTS `debtortrans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transno` int(11) NOT NULL DEFAULT '0',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `trandate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `inputdate` datetime NOT NULL,
  `prd` smallint(6) NOT NULL DEFAULT '0',
  `settled` tinyint(4) NOT NULL DEFAULT '0',
  `reference` varchar(20) NOT NULL DEFAULT '',
  `tpe` char(2) NOT NULL DEFAULT '',
  `order_` int(11) NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '0',
  `ovamount` double NOT NULL DEFAULT '0',
  `ovgst` double NOT NULL DEFAULT '0',
  `ovfreight` double NOT NULL DEFAULT '0',
  `ovdiscount` double NOT NULL DEFAULT '0',
  `diffonexch` double NOT NULL DEFAULT '0',
  `alloc` double NOT NULL DEFAULT '0',
  `invtext` text,
  `shipvia` int(11) NOT NULL DEFAULT '0',
  `edisent` tinyint(4) NOT NULL DEFAULT '0',
  `consignment` varchar(15) NOT NULL DEFAULT '',
  `packages` int(11) NOT NULL DEFAULT '1' COMMENT 'number of cartons',
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
  KEY `salesperson` (`salesperson`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

INSERT INTO `debtortrans` (`id`, `transno`, `type`, `debtorno`, `branchcode`, `trandate`, `inputdate`, `prd`, `settled`, `reference`, `tpe`, `order_`, `rate`, `ovamount`, `ovgst`, `ovfreight`, `ovdiscount`, `diffonexch`, `alloc`, `invtext`, `shipvia`, `edisent`, `consignment`, `packages`, `salesperson`) VALUES(7, 2, 12, '1001', '', '2013-12-14 00:00:00', '2013-12-14 01:08:28', 0, 1, '现金交易 现金收款', '', 0, 1, -986.45, 0, 0, 0, 0, -986.45, '收销售款', 0, 0, '', 1, '');
INSERT INTO `debtortrans` (`id`, `transno`, `type`, `debtorno`, `branchcode`, `trandate`, `inputdate`, `prd`, `settled`, `reference`, `tpe`, `order_`, `rate`, `ovamount`, `ovgst`, `ovfreight`, `ovdiscount`, `diffonexch`, `alloc`, `invtext`, `shipvia`, `edisent`, `consignment`, `packages`, `salesperson`) VALUES(6, 1, 10, '1001', '1001', '2013-12-14 00:00:00', '2013-12-14 01:02:21', 0, 1, '', '01', 1, 1, 829, 143.45, 14, 0, 0, 986.45, '', 1, 0, '', 1, '001');

CREATE TABLE IF NOT EXISTS `debtortranstaxes` (
  `debtortransid` int(11) NOT NULL DEFAULT '0',
  `taxauthid` tinyint(4) NOT NULL DEFAULT '0',
  `taxamount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`debtortransid`,`taxauthid`),
  KEY `taxauthid` (`taxauthid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `debtortranstaxes` (`debtortransid`, `taxauthid`, `taxamount`) VALUES(6, 14, 143.45);

CREATE TABLE IF NOT EXISTS `debtortype` (
  `typeid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `typename` varchar(100) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

INSERT INTO `debtortype` (`typeid`, `typename`) VALUES(1, '零售');
INSERT INTO `debtortype` (`typeid`, `typename`) VALUES(2, '批发');
INSERT INTO `debtortype` (`typeid`, `typename`) VALUES(3, '联营');
INSERT INTO `debtortype` (`typeid`, `typename`) VALUES(4, '内销');
INSERT INTO `debtortype` (`typeid`, `typename`) VALUES(5, '香港批发');
INSERT INTO `debtortype` (`typeid`, `typename`) VALUES(6, '商超返点客户');

CREATE TABLE IF NOT EXISTS `debtortypenotes` (
  `noteid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `typeid` tinyint(4) NOT NULL DEFAULT '0',
  `href` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `priority` varchar(20) NOT NULL,
  PRIMARY KEY (`noteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `deliverynotes` (
  `deliverynotenumber` int(11) NOT NULL,
  `deliverynotelineno` tinyint(4) NOT NULL,
  `salesorderno` int(11) NOT NULL,
  `salesorderlineno` int(11) NOT NULL,
  `qtydelivered` double NOT NULL DEFAULT '0',
  `printed` tinyint(4) NOT NULL DEFAULT '0',
  `invoiced` tinyint(4) NOT NULL DEFAULT '0',
  `deliverydate` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`deliverynotenumber`,`deliverynotelineno`),
  KEY `deliverynotes_ibfk_2` (`salesorderno`,`salesorderlineno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `departments` (
  `departmentid` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL DEFAULT '',
  `authoriser` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`departmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `discountmatrix` (
  `salestype` char(2) NOT NULL DEFAULT '',
  `discountcategory` char(2) NOT NULL DEFAULT '',
  `quantitybreak` int(11) NOT NULL DEFAULT '1',
  `discountrate` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`salestype`,`discountcategory`,`quantitybreak`),
  KEY `QuantityBreak` (`quantitybreak`),
  KEY `DiscountCategory` (`discountcategory`),
  KEY `SalesType` (`salestype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `edimessageformat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partnercode` varchar(10) NOT NULL DEFAULT '',
  `messagetype` varchar(6) NOT NULL DEFAULT '',
  `section` varchar(7) NOT NULL DEFAULT '',
  `sequenceno` int(11) NOT NULL DEFAULT '0',
  `linetext` varchar(70) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PartnerCode` (`partnercode`,`messagetype`,`sequenceno`),
  KEY `Section` (`section`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `edi_orders_segs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `segtag` char(3) NOT NULL DEFAULT '',
  `seggroup` tinyint(4) NOT NULL DEFAULT '0',
  `maxoccur` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `SegTag` (`segtag`),
  KEY `SegNo` (`seggroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `edi_orders_seg_groups` (
  `seggroupno` tinyint(4) NOT NULL DEFAULT '0',
  `maxoccur` int(4) NOT NULL DEFAULT '0',
  `parentseggroup` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`seggroupno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `emailsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(30) NOT NULL,
  `port` char(5) NOT NULL,
  `heloaddress` varchar(20) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `timeout` int(11) DEFAULT '5',
  `companyname` varchar(50) DEFAULT NULL,
  `auth` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `fixedassetcategories` (
  `categoryid` char(6) NOT NULL DEFAULT '',
  `categorydescription` char(20) NOT NULL DEFAULT '',
  `costact` varchar(20) NOT NULL DEFAULT '0',
  `depnact` varchar(20) NOT NULL DEFAULT '0',
  `disposalact` varchar(20) NOT NULL DEFAULT '80000',
  `accumdepnact` varchar(20) NOT NULL DEFAULT '0',
  `defaultdepnrate` double NOT NULL DEFAULT '0.2',
  `defaultdepntype` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `fixedassetlocations` (
  `locationid` char(6) NOT NULL DEFAULT '',
  `locationdescription` char(20) NOT NULL DEFAULT '',
  `parentlocationid` char(6) DEFAULT '',
  PRIMARY KEY (`locationid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `fixedassetmoves` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fixedassetid` int(11) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `createdday` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` varchar(20) DEFAULT NULL,
  `fromloc` char(6) DEFAULT NULL,
  `toloc` char(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `fixedassets` (
  `assetid` int(11) NOT NULL AUTO_INCREMENT,
  `serialno` varchar(30) NOT NULL DEFAULT '',
  `barcode` varchar(20) NOT NULL,
  `assetlocation` varchar(6) NOT NULL DEFAULT '',
  `cost` double NOT NULL DEFAULT '0',
  `accumdepn` double NOT NULL DEFAULT '0',
  `datepurchased` date NOT NULL DEFAULT '0000-00-00',
  `disposalproceeds` double NOT NULL DEFAULT '0',
  `assetcategoryid` varchar(6) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL DEFAULT '',
  `longdescription` text NOT NULL,
  `depntype` int(11) NOT NULL DEFAULT '1',
  `depnrate` double NOT NULL,
  `disposaldate` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`assetid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `fixedassettasks` (
  `taskid` int(11) NOT NULL AUTO_INCREMENT,
  `assetid` int(11) NOT NULL,
  `taskdescription` text NOT NULL,
  `frequencydays` int(11) NOT NULL DEFAULT '365',
  `lastcompleted` date NOT NULL,
  `userresponsible` varchar(20) NOT NULL,
  `manager` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`taskid`),
  KEY `assetid` (`assetid`),
  KEY `userresponsible` (`userresponsible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `freightcosts` (
  `shipcostfromid` int(11) NOT NULL AUTO_INCREMENT,
  `locationfrom` varchar(5) NOT NULL DEFAULT '',
  `destinationcountry` varchar(40) NOT NULL,
  `destination` varchar(40) NOT NULL DEFAULT '',
  `shipperid` int(11) NOT NULL DEFAULT '0',
  `cubrate` double NOT NULL DEFAULT '0',
  `kgrate` double NOT NULL DEFAULT '0',
  `maxkgs` double NOT NULL DEFAULT '999999',
  `maxcub` double NOT NULL DEFAULT '999999',
  `fixedprice` double NOT NULL DEFAULT '0',
  `minimumchg` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipcostfromid`),
  KEY `Destination` (`destination`),
  KEY `LocationFrom` (`locationfrom`),
  KEY `ShipperID` (`shipperid`),
  KEY `Destination_2` (`destination`,`locationfrom`,`shipperid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

INSERT INTO `freightcosts` (`shipcostfromid`, `locationfrom`, `destinationcountry`, `destination`, `shipperid`, `cubrate`, `kgrate`, `maxkgs`, `maxcub`, `fixedprice`, `minimumchg`) VALUES(1, 'CK001', '中国', '大陆', 1, 50, 10, 100, 5, 2, 10);

CREATE TABLE IF NOT EXISTS `geocode_param` (
  `geocodeid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `geocode_key` varchar(200) NOT NULL DEFAULT '',
  `center_long` varchar(20) NOT NULL DEFAULT '',
  `center_lat` varchar(20) NOT NULL DEFAULT '',
  `map_height` varchar(10) NOT NULL DEFAULT '',
  `map_width` varchar(10) NOT NULL DEFAULT '',
  `map_host` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`geocodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `gltrans` (
  `counterindex` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `typeno` bigint(16) NOT NULL DEFAULT '1',
  `chequeno` int(11) NOT NULL DEFAULT '0',
  `trandate` date NOT NULL DEFAULT '0000-00-00',
  `periodno` smallint(6) NOT NULL DEFAULT '0',
  `account` varchar(20) NOT NULL DEFAULT '0',
  `narrative` varchar(200) NOT NULL DEFAULT '',
  `amount` double NOT NULL DEFAULT '0',
  `posted` tinyint(4) NOT NULL DEFAULT '0',
  `jobref` varchar(20) NOT NULL DEFAULT '',
  `tag` tinyint(4) NOT NULL DEFAULT '0',
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
  KEY `tag_2` (`tag`),
  KEY `tag_3` (`tag`),
  KEY `tag_4` (`tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(1, 12, 1, 0, '2013-12-14', 0, '220203', '苏试股东将来投资款', -10000000, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(2, 12, 1, 0, '2013-12-14', 0, '100201', '苏试股东将来投资款', 10000000, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(3, 25, 1, 0, '2013-12-14', 0, '1405', '采购订单 1: 长城公司 - 3001 - 贩卖-摄像头 x 100 @ 5.00', 500, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(4, 25, 1, 0, '2013-12-14', 0, '220201', '采购订单 1: 长城公司 - 3001 - 贩卖-摄像头 x 100 @ 5.00', -500, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(5, 25, 1, 0, '2013-12-14', 0, '1403', '采购订单 1: 长城公司 - 3002 - 闪存颗粒1G x 5 @ 20.20', 101, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(6, 25, 1, 0, '2013-12-14', 0, '220201', '采购订单 1: 长城公司 - 3002 - 闪存颗粒1G x 5 @ 20.20', -101, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(7, 25, 1, 0, '2013-12-14', 0, '1403', '采购订单 1: 长城公司 - 3006 - 树脂颗粒 x 300 @ 0.01', 3, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(8, 25, 1, 0, '2013-12-14', 0, '220201', '采购订单 1: 长城公司 - 3006 - 树脂颗粒 x 300 @ 0.01', -3, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(9, 28, 1, 0, '2013-12-14', 0, '1406', '1 - 370U盘壳子[3005] 组件: 树脂颗粒[3006] - 35 x 0.3 @ 0.01', 0.105, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(10, 28, 1, 0, '2013-12-14', 0, '1403', '1 - 370U盘壳子[3005] -&gt; 树脂颗粒[3006] - 35 x 0.3 @ 0.01', -0.105, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(11, 28, 1, 0, '2013-12-14', 0, '1406', '1 - 370U盘壳子[3005] 组件: 生产人工费[6001] - 35 x 0.3 @ 1.00', 10.5, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(12, 28, 1, 0, '2013-12-14', 0, '500102', '1 - 370U盘壳子[3005] -&gt; 生产人工费[6001] - 35 x 0.3 @ 1.00', -10.5, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(13, 28, 1, 0, '2013-12-14', 0, '1406', '1 - 370U盘壳子[3005] 组件: 制造费用[6002] - 35 x 0.2 @ 1.00', 7, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(14, 28, 1, 0, '2013-12-14', 0, '500103', '1 - 370U盘壳子[3005] -&gt; 制造费用[6002] - 35 x 0.2 @ 1.00', -7, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(15, 26, 1, 0, '2013-12-14', 0, '1403', '1 - 370U盘壳子[3005] x 35 @ 0.50', 17.605, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(16, 26, 1, 0, '2013-12-14', 0, '1406', '1 - 370U盘壳子[3005] x 35 @ 0.50', -17.605, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(17, 28, 2, 0, '2013-12-14', 0, '1406', '2 - 370 U盘 1G[3007] 组件: 闪存颗粒1G[3002] - 50 x 1 @ 20.20', 1010, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(18, 28, 2, 0, '2013-12-14', 0, '1403', '2 - 370 U盘 1G[3007] -&gt; 闪存颗粒1G[3002] - 50 x 1 @ 20.20', -1010, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(19, 28, 2, 0, '2013-12-14', 0, '1406', '2 - 370 U盘 1G[3007] 组件: U盘主控板[3003] - 50 x 1 @ 3.00', 150, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(20, 28, 2, 0, '2013-12-14', 0, '1403', '2 - 370 U盘 1G[3007] -&gt; U盘主控板[3003] - 50 x 1 @ 3.00', -150, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(21, 28, 2, 0, '2013-12-14', 0, '1406', '2 - 370 U盘 1G[3007] 组件: USB接头[3004] - 50 x 1 @ 0.50', 25, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(22, 28, 2, 0, '2013-12-14', 0, '1403', '2 - 370 U盘 1G[3007] -&gt; USB接头[3004] - 50 x 1 @ 0.50', -25, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(23, 28, 2, 0, '2013-12-14', 0, '1406', '2 - 370 U盘 1G[3007] 组件: 370U盘壳子[3005] - 50 x 1 @ 0.70', 35.15, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(24, 28, 2, 0, '2013-12-14', 0, '1403', '2 - 370 U盘 1G[3007] -&gt; 370U盘壳子[3005] - 50 x 1 @ 0.70', -35.15, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(25, 28, 2, 0, '2013-12-14', 0, '1406', '2 - 370 U盘 1G[3007] 组件: 生产人工费[6001] - 50 x 0.5 @ 1.00', 25, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(26, 28, 2, 0, '2013-12-14', 0, '500102', '2 - 370 U盘 1G[3007] -&gt; 生产人工费[6001] - 50 x 0.5 @ 1.00', -25, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(27, 28, 2, 0, '2013-12-14', 0, '1406', '2 - 370 U盘 1G[3007] 组件: 制造费用[6002] - 50 x 0.5 @ 1.00', 25, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(28, 28, 2, 0, '2013-12-14', 0, '500103', '2 - 370 U盘 1G[3007] -&gt; 制造费用[6002] - 50 x 0.5 @ 1.00', -25, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(29, 26, 2, 0, '2013-12-14', 0, '1405', '2 - 370 U盘 1G[3007] x 50 @ 25.40', 1270.15, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(30, 26, 2, 0, '2013-12-14', 0, '1406', '2 - 370 U盘 1G[3007] x 50 @ 25.40', -1270.15, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(31, 28, 3, 0, '2013-12-14', 0, '1406', '2 - 370 U盘 4G[3008] 组件: 闪存颗粒1G[3002] - 8 x 4 @ 20.20', 646.4, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(32, 28, 3, 0, '2013-12-14', 0, '1403', '2 - 370 U盘 4G[3008] -&gt; 闪存颗粒1G[3002] - 8 x 4 @ 20.20', -646.4, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(33, 28, 3, 0, '2013-12-14', 0, '1406', '2 - 370 U盘 4G[3008] 组件: U盘主控板[3003] - 8 x 1 @ 3.00', 24, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(34, 28, 3, 0, '2013-12-14', 0, '1403', '2 - 370 U盘 4G[3008] -&gt; U盘主控板[3003] - 8 x 1 @ 3.00', -24, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(35, 28, 3, 0, '2013-12-14', 0, '1406', '2 - 370 U盘 4G[3008] 组件: USB接头[3004] - 8 x 1 @ 0.50', 4, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(36, 28, 3, 0, '2013-12-14', 0, '1403', '2 - 370 U盘 4G[3008] -&gt; USB接头[3004] - 8 x 1 @ 0.50', -4, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(37, 28, 3, 0, '2013-12-14', 0, '1406', '2 - 370 U盘 4G[3008] 组件: 370U盘壳子[3005] - 8 x 1 @ 0.70', 5.624, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(38, 28, 3, 0, '2013-12-14', 0, '1403', '2 - 370 U盘 4G[3008] -&gt; 370U盘壳子[3005] - 8 x 1 @ 0.70', -5.624, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(39, 26, 3, 0, '2013-12-14', 0, '1405', '2 - 370 U盘 4G[3008] x 8 @ 85.00', 680.024, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(40, 26, 3, 0, '2013-12-14', 0, '1406', '2 - 370 U盘 4G[3008] x 8 @ 85.00', -680.024, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(41, 29, 1, 0, '2013-12-14', 0, '1405', '2 - 370 U盘 1G[3007] 分摊差异', 0, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(42, 29, 1, 0, '2013-12-14', 0, '1406', '2 - 370 U盘 1G[3007] 分摊差异', 0, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(43, 29, 1, 0, '2013-12-14', 0, '1405', '2 - 370 U盘 4G[3008] 分摊差异', 0, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(44, 29, 1, 0, '2013-12-14', 0, '1406', '2 - 370 U盘 4G[3008] 分摊差异', 0, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(45, 10, 1, 0, '2013-12-14', 0, '60010201', '统一零售顾客 - 贩卖-摄像头 x 2 @ 5.0000', 9.99999999999994, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(46, 10, 1, 0, '2013-12-14', 0, '1405', '统一零售顾客 - 贩卖-摄像头 x 2 @ 5.0000', -10, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(47, 10, 1, 0, '2013-12-14', 0, '60010101', '统一零售顾客 - 贩卖-摄像头 x 2 @ 68', -136, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(48, 10, 1, 0, '2013-12-14', 0, '60010201', '统一零售顾客 - 370 U盘 1G x 5 @ 25.4030', 127.02, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(49, 10, 1, 0, '2013-12-14', 0, '1405', '统一零售顾客 - 370 U盘 1G x 5 @ 25.4030', -127.02, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(50, 10, 1, 0, '2013-12-14', 0, '60010101', '统一零售顾客 - 370 U盘 1G x 5 @ 99', -495, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(51, 10, 1, 0, '2013-12-14', 0, '60010201', '统一零售顾客 - 370 U盘 4G x 1 @ 85.0030', 85, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(52, 10, 1, 0, '2013-12-14', 0, '1405', '统一零售顾客 - 370 U盘 4G x 1 @ 85.0030', -85, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(53, 10, 1, 0, '2013-12-14', 0, '60010101', '统一零售顾客 - 370 U盘 4G x 1 @ 198', -198, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(54, 10, 1, 0, '2013-12-14', 0, '1122', '统一零售顾客', 986.45, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(55, 10, 1, 0, '2013-12-14', 0, '500102', '统一零售顾客', -14, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(56, 10, 1, 0, '2013-12-14', 0, '22212', '统一零售顾客', -143.45, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(57, 12, 2, 0, '2013-12-14', 0, '100201', '收销售款', 986.45, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(58, 12, 2, 0, '2013-12-14', 0, '1122', '收销售款', -986.45, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(59, 0, 1, 0, '2013-11-30', -1, '112301', '打款订包装', 451, 1, '', 0);
INSERT INTO `gltrans` (`counterindex`, `type`, `typeno`, `chequeno`, `trandate`, `periodno`, `account`, `narrative`, `amount`, `posted`, `jobref`, `tag`) VALUES(60, 0, 1, 0, '2013-11-30', -1, '220301', '代付包装订金', -451, 1, '', 0);

CREATE TABLE IF NOT EXISTS `grns` (
  `grnbatch` smallint(6) NOT NULL DEFAULT '0',
  `grnno` int(11) NOT NULL AUTO_INCREMENT,
  `podetailitem` int(11) NOT NULL DEFAULT '0',
  `itemcode` varchar(20) NOT NULL DEFAULT '',
  `deliverydate` date NOT NULL DEFAULT '0000-00-00',
  `itemdescription` varchar(100) NOT NULL DEFAULT '',
  `qtyrecd` double NOT NULL DEFAULT '0',
  `quantityinv` double NOT NULL DEFAULT '0',
  `supplierid` varchar(10) NOT NULL DEFAULT '',
  `stdcostunit` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`grnno`),
  KEY `DeliveryDate` (`deliverydate`),
  KEY `ItemCode` (`itemcode`),
  KEY `PODetailItem` (`podetailitem`),
  KEY `SupplierID` (`supplierid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

INSERT INTO `grns` (`grnbatch`, `grnno`, `podetailitem`, `itemcode`, `deliverydate`, `itemdescription`, `qtyrecd`, `quantityinv`, `supplierid`, `stdcostunit`) VALUES(1, 8, 8, '3006', '2013-12-14', '树脂颗粒', 300, 0, '3001', 0.01);
INSERT INTO `grns` (`grnbatch`, `grnno`, `podetailitem`, `itemcode`, `deliverydate`, `itemdescription`, `qtyrecd`, `quantityinv`, `supplierid`, `stdcostunit`) VALUES(1, 7, 7, '3002', '2013-12-14', '闪存颗粒1G', 5, 0, '3001', 20.2);
INSERT INTO `grns` (`grnbatch`, `grnno`, `podetailitem`, `itemcode`, `deliverydate`, `itemdescription`, `qtyrecd`, `quantityinv`, `supplierid`, `stdcostunit`) VALUES(1, 6, 6, '3001', '2013-12-14', '贩卖-摄像头', 100, 0, '3001', 5);

CREATE TABLE IF NOT EXISTS `holdreasons` (
  `reasoncode` smallint(6) NOT NULL DEFAULT '1',
  `reasondescription` char(30) NOT NULL DEFAULT '',
  `dissallowinvoices` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`reasoncode`),
  KEY `ReasonDescription` (`reasondescription`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `holdreasons` (`reasoncode`, `reasondescription`, `dissallowinvoices`) VALUES(1, '守信', 0);
INSERT INTO `holdreasons` (`reasoncode`, `reasondescription`, `dissallowinvoices`) VALUES(20, '一般', 0);
INSERT INTO `holdreasons` (`reasoncode`, `reasondescription`, `dissallowinvoices`) VALUES(51, '不守信', 1);

CREATE TABLE IF NOT EXISTS `internalstockcatrole` (
  `categoryid` varchar(6) NOT NULL,
  `secroleid` int(11) NOT NULL,
  PRIMARY KEY (`categoryid`,`secroleid`),
  KEY `internalstockcatrole_ibfk_1` (`categoryid`),
  KEY `internalstockcatrole_ibfk_2` (`secroleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `labelfields` (
  `labelfieldid` int(11) NOT NULL AUTO_INCREMENT,
  `labelid` tinyint(4) NOT NULL,
  `fieldvalue` varchar(20) NOT NULL,
  `vpos` double NOT NULL DEFAULT '0',
  `hpos` double NOT NULL DEFAULT '0',
  `fontsize` tinyint(4) NOT NULL,
  `barcode` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`labelfieldid`),
  KEY `labelid` (`labelid`),
  KEY `vpos` (`vpos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `labels` (
  `labelid` tinyint(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `pagewidth` double NOT NULL DEFAULT '0',
  `pageheight` double NOT NULL DEFAULT '0',
  `height` double NOT NULL DEFAULT '0',
  `width` double NOT NULL DEFAULT '0',
  `topmargin` double NOT NULL DEFAULT '0',
  `leftmargin` double NOT NULL DEFAULT '0',
  `rowheight` double NOT NULL DEFAULT '0',
  `columnwidth` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`labelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `lastcostrollup` (
  `stockid` char(20) NOT NULL DEFAULT '',
  `totalonhand` double NOT NULL DEFAULT '0',
  `matcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `labcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `oheadcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `categoryid` char(6) NOT NULL DEFAULT '',
  `stockact` varchar(20) NOT NULL DEFAULT '0',
  `adjglact` varchar(20) NOT NULL DEFAULT '0',
  `newmatcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `newlabcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `newoheadcost` decimal(20,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `levels` (
  `part` char(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `leadtime` smallint(6) NOT NULL DEFAULT '0',
  `pansize` double NOT NULL DEFAULT '0',
  `shrinkfactor` double NOT NULL DEFAULT '0',
  `eoq` double NOT NULL DEFAULT '0',
  KEY `part` (`part`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `taxprovinceid` tinyint(4) NOT NULL DEFAULT '1',
  `cashsalecustomer` varchar(10) DEFAULT '',
  `managed` int(11) DEFAULT '0',
  `cashsalebranch` varchar(10) DEFAULT '',
  `internalrequest` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'Allow (1) or not (0) internal request from this location',
  PRIMARY KEY (`loccode`),
  UNIQUE KEY `locationname` (`locationname`),
  KEY `taxprovinceid` (`taxprovinceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `locations` (`loccode`, `locationname`, `deladd1`, `deladd2`, `deladd3`, `deladd4`, `deladd5`, `deladd6`, `tel`, `fax`, `email`, `contact`, `taxprovinceid`, `cashsalecustomer`, `managed`, `cashsalebranch`, `internalrequest`) VALUES('FX003', '分公司仓库', ' 分地址一', '', '', '', '', '中国', '', '', '', '管芬', 1, '', 0, '', 0);
INSERT INTO `locations` (`loccode`, `locationname`, `deladd1`, `deladd2`, `deladd3`, `deladd4`, `deladd5`, `deladd6`, `tel`, `fax`, `email`, `contact`, `taxprovinceid`, `cashsalecustomer`, `managed`, `cashsalebranch`, `internalrequest`) VALUES('SC002', '车间仓库', ' 车间', '', '', '', '', '', '', '', '', '赵五件', 1, '', 0, '', 0);
INSERT INTO `locations` (`loccode`, `locationname`, `deladd1`, `deladd2`, `deladd3`, `deladd4`, `deladd5`, `deladd6`, `tel`, `fax`, `email`, `contact`, `taxprovinceid`, `cashsalecustomer`, `managed`, `cashsalebranch`, `internalrequest`) VALUES('CK001', '总部商品仓库', ' 总部仓库地址', '', '', '', '', '中国', '0871-888888', '', '', '尚总仓', 1, '1001', 0, '1001', 1);

CREATE TABLE IF NOT EXISTS `locstock` (
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT '0',
  `reorderlevel` bigint(20) NOT NULL DEFAULT '0',
  `bin` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`loccode`,`stockid`),
  KEY `StockID` (`stockid`),
  KEY `bin` (`bin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('FX003', 'JY6120-7', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('FX003', 'CH0001', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('FX003', '6002', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('FX003', '6001', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('FX003', '41899-001', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('FX003', '3008', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('FX003', '3007', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('FX003', '3006', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('FX003', '3005', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('FX003', '3004', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('FX003', '3003', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('FX003', '3002', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('FX003', '3001', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('SC002', 'JY6120-7', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('SC002', 'CH0001', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('SC002', '6002', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('SC002', '6001', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('SC002', '41899-001', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('SC002', '3008', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('SC002', '3007', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('SC002', '3006', -10.5, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('SC002', '3005', -58, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('SC002', '3004', -58, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('SC002', '3003', -58, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('SC002', '3002', -82, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('SC002', '3001', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('CK001', 'JY6120-7', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('CK001', 'CH0001', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('CK001', '6002', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('CK001', '6001', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('CK001', '41899-001', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('CK001', '3008', 7, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('CK001', '3007', 45, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('CK001', '3006', 300, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('CK001', '3005', 35, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('CK001', '3004', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('CK001', '3003', 0, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('CK001', '3002', 5, 0, '');
INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `bin`) VALUES('CK001', '3001', 98, 0, '正中区');

CREATE TABLE IF NOT EXISTS `loctransfers` (
  `reference` int(11) NOT NULL DEFAULT '0',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `shipqty` double NOT NULL DEFAULT '0',
  `recqty` double NOT NULL DEFAULT '0',
  `shipdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shiploc` varchar(7) NOT NULL DEFAULT '',
  `recloc` varchar(7) NOT NULL DEFAULT '',
  KEY `Reference` (`reference`,`stockid`),
  KEY `ShipLoc` (`shiploc`),
  KEY `RecLoc` (`recloc`),
  KEY `StockID` (`stockid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores Shipments To And From Locations';

INSERT INTO `loctransfers` (`reference`, `stockid`, `shipqty`, `recqty`, `shipdate`, `recdate`, `shiploc`, `recloc`) VALUES(2, '3007', 50, 50, '2013-12-14 00:56:59', '2013-12-14 00:57:44', 'SC002', 'CK001');
INSERT INTO `loctransfers` (`reference`, `stockid`, `shipqty`, `recqty`, `shipdate`, `recdate`, `shiploc`, `recloc`) VALUES(2, '3008', 8, 8, '2013-12-14 00:56:59', '2013-12-14 00:57:44', 'SC002', 'CK001');

CREATE TABLE IF NOT EXISTS `mailgroupdetails` (
  `groupname` varchar(100) NOT NULL,
  `userid` varchar(20) NOT NULL,
  KEY `userid` (`userid`),
  KEY `groupname` (`groupname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `mailgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groupname` (`groupname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturers_name` varchar(32) NOT NULL,
  `manufacturers_url` varchar(50) NOT NULL DEFAULT '',
  `manufacturers_image` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`),
  KEY `manufacturers_name` (`manufacturers_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `mrpcalendar` (
  `calendardate` date NOT NULL,
  `daynumber` int(6) NOT NULL,
  `manufacturingflag` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`calendardate`),
  KEY `daynumber` (`daynumber`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `mrpdemands` (
  `demandid` int(11) NOT NULL AUTO_INCREMENT,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `mrpdemandtype` varchar(6) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT '0',
  `duedate` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`demandid`),
  KEY `StockID` (`stockid`),
  KEY `mrpdemands_ibfk_1` (`mrpdemandtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `mrpdemandtypes` (
  `mrpdemandtype` varchar(6) NOT NULL DEFAULT '',
  `description` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`mrpdemandtype`),
  KEY `mrpdemandtype` (`mrpdemandtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `mrpparameters` (
  `runtime` datetime DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `pansizeflag` varchar(5) DEFAULT NULL,
  `shrinkageflag` varchar(5) DEFAULT NULL,
  `eoqflag` varchar(5) DEFAULT NULL,
  `usemrpdemands` varchar(5) DEFAULT NULL,
  `leeway` smallint(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `mrprequirements` (
  `part` char(20) DEFAULT NULL,
  `daterequired` date DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `mrpdemandtype` varchar(6) DEFAULT NULL,
  `orderno` int(11) DEFAULT NULL,
  `directdemand` smallint(6) DEFAULT NULL,
  `whererequired` char(20) DEFAULT NULL,
  KEY `part` (`part`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `offers` (
  `offerid` int(11) NOT NULL AUTO_INCREMENT,
  `tenderid` int(11) NOT NULL DEFAULT '0',
  `supplierid` varchar(10) NOT NULL DEFAULT '',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT '0',
  `uom` varchar(15) NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  `expirydate` date NOT NULL DEFAULT '0000-00-00',
  `currcode` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`offerid`),
  KEY `offers_ibfk_1` (`supplierid`),
  KEY `offers_ibfk_2` (`stockid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `orderdeliverydifferenceslog` (
  `orderno` int(11) NOT NULL DEFAULT '0',
  `invoiceno` int(11) NOT NULL DEFAULT '0',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `quantitydiff` double NOT NULL DEFAULT '0',
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `branch` varchar(10) NOT NULL DEFAULT '',
  `can_or_bo` char(3) NOT NULL DEFAULT 'CAN',
  KEY `StockID` (`stockid`),
  KEY `DebtorNo` (`debtorno`,`branch`),
  KEY `Can_or_BO` (`can_or_bo`),
  KEY `OrderNo` (`orderno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `paymentmethods` (
  `paymentid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `paymentname` varchar(15) NOT NULL DEFAULT '',
  `paymenttype` int(11) NOT NULL DEFAULT '1',
  `receipttype` int(11) NOT NULL DEFAULT '1',
  `usepreprintedstationery` tinyint(4) NOT NULL DEFAULT '0',
  `opencashdrawer` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paymentid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

INSERT INTO `paymentmethods` (`paymentid`, `paymentname`, `paymenttype`, `receipttype`, `usepreprintedstationery`, `opencashdrawer`) VALUES(1, '现金交易', 1, 1, 1, 0);
INSERT INTO `paymentmethods` (`paymentid`, `paymentname`, `paymenttype`, `receipttype`, `usepreprintedstationery`, `opencashdrawer`) VALUES(2, '现金发票（含税）', 1, 1, 0, 0);
INSERT INTO `paymentmethods` (`paymentid`, `paymentname`, `paymenttype`, `receipttype`, `usepreprintedstationery`, `opencashdrawer`) VALUES(4, '现金支票', 1, 1, 1, 0);
INSERT INTO `paymentmethods` (`paymentid`, `paymentname`, `paymenttype`, `receipttype`, `usepreprintedstationery`, `opencashdrawer`) VALUES(5, '银行转账', 1, 1, 0, 0);
INSERT INTO `paymentmethods` (`paymentid`, `paymentname`, `paymenttype`, `receipttype`, `usepreprintedstationery`, `opencashdrawer`) VALUES(6, '转账支票', 1, 1, 0, 0);

CREATE TABLE IF NOT EXISTS `paymentterms` (
  `termsindicator` char(2) NOT NULL DEFAULT '',
  `terms` char(40) NOT NULL DEFAULT '',
  `daysbeforedue` smallint(6) NOT NULL DEFAULT '0',
  `dayinfollowingmonth` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`termsindicator`),
  KEY `DaysBeforeDue` (`daysbeforedue`),
  KEY `DayInFollowingMonth` (`dayinfollowingmonth`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `paymentterms` (`termsindicator`, `terms`, `daysbeforedue`, `dayinfollowingmonth`) VALUES('20', '次月22日结账', 0, 22);
INSERT INTO `paymentterms` (`termsindicator`, `terms`, `daysbeforedue`, `dayinfollowingmonth`) VALUES('30', '按月结账', 0, 30);
INSERT INTO `paymentterms` (`termsindicator`, `terms`, `daysbeforedue`, `dayinfollowingmonth`) VALUES('7', '7天内付款', 7, 0);
INSERT INTO `paymentterms` (`termsindicator`, `terms`, `daysbeforedue`, `dayinfollowingmonth`) VALUES('CA', '两天内付款', 2, 0);

CREATE TABLE IF NOT EXISTS `pcashdetails` (
  `counterindex` int(20) NOT NULL AUTO_INCREMENT,
  `tabcode` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `codeexpense` varchar(20) NOT NULL,
  `amount` double NOT NULL,
  `authorized` date NOT NULL COMMENT 'date cash assigment was revised and authorized by authorizer from tabs table',
  `posted` tinyint(4) NOT NULL COMMENT 'has (or has not) been posted into gltrans',
  `notes` text NOT NULL,
  `receipt` text COMMENT 'filename or path to scanned receipt or code of receipt to find physical receipt if tax guys or auditors show up',
  PRIMARY KEY (`counterindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `pcexpenses` (
  `codeexpense` varchar(20) NOT NULL COMMENT 'code for the group',
  `description` varchar(50) NOT NULL COMMENT 'text description, e.g. meals, train tickets, fuel, etc',
  `glaccount` varchar(20) NOT NULL DEFAULT '0',
  `tag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`codeexpense`),
  KEY `glaccount` (`glaccount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `pctabexpenses` (
  `typetabcode` varchar(20) NOT NULL,
  `codeexpense` varchar(20) NOT NULL,
  KEY `typetabcode` (`typetabcode`),
  KEY `codeexpense` (`codeexpense`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `pctabs` (
  `tabcode` varchar(20) NOT NULL,
  `usercode` varchar(20) NOT NULL COMMENT 'code of user employee from www_users',
  `typetabcode` varchar(20) NOT NULL,
  `currency` char(3) NOT NULL,
  `tablimit` double NOT NULL,
  `assigner` varchar(20) NOT NULL COMMENT 'Cash assigner for the tab',
  `authorizer` varchar(20) NOT NULL COMMENT 'code of user from www_users',
  `glaccountassignment` varchar(20) NOT NULL DEFAULT '0',
  `glaccountpcash` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tabcode`),
  KEY `usercode` (`usercode`),
  KEY `typetabcode` (`typetabcode`),
  KEY `currency` (`currency`),
  KEY `authorizer` (`authorizer`),
  KEY `glaccountassignment` (`glaccountassignment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `pctypetabs` (
  `typetabcode` varchar(20) NOT NULL COMMENT 'code for the type of petty cash tab',
  `typetabdescription` varchar(50) NOT NULL COMMENT 'text description, e.g. tab for CEO',
  PRIMARY KEY (`typetabcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `periods` (
  `periodno` smallint(6) NOT NULL DEFAULT '0',
  `lastdate_in_period` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`periodno`),
  KEY `LastDate_in_Period` (`lastdate_in_period`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES(-11, '2013-01-31');
INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES(-10, '2013-02-28');
INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES(-9, '2013-03-31');
INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES(-8, '2013-04-30');
INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES(-7, '2013-05-31');
INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES(-6, '2013-06-30');
INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES(-5, '2013-07-31');
INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES(-4, '2013-08-31');
INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES(-3, '2013-09-30');
INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES(-2, '2013-10-31');
INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES(-1, '2013-11-30');
INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES(1, '2014-01-31');
INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES(0, '2013-12-31');
INSERT INTO `periods` (`periodno`, `lastdate_in_period`) VALUES(2, '2014-02-28');

CREATE TABLE IF NOT EXISTS `pickinglistdetails` (
  `pickinglistno` int(11) NOT NULL DEFAULT '0',
  `pickinglistlineno` int(11) NOT NULL DEFAULT '0',
  `orderlineno` int(11) NOT NULL DEFAULT '0',
  `qtyexpected` double NOT NULL DEFAULT '0',
  `qtypicked` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`pickinglistno`,`pickinglistlineno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `pickinglists` (
  `pickinglistno` int(11) NOT NULL DEFAULT '0',
  `orderno` int(11) NOT NULL DEFAULT '0',
  `pickinglistdate` date NOT NULL DEFAULT '0000-00-00',
  `dateprinted` date NOT NULL DEFAULT '0000-00-00',
  `deliverynotedate` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`pickinglistno`),
  KEY `pickinglists_ibfk_1` (`orderno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `prices` (
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `typeabbrev` char(2) NOT NULL DEFAULT '',
  `currabrev` char(3) NOT NULL DEFAULT '',
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `price` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `startdate` date NOT NULL DEFAULT '0000-00-00',
  `enddate` date NOT NULL DEFAULT '9999-12-31',
  PRIMARY KEY (`stockid`,`typeabbrev`,`currabrev`,`debtorno`,`branchcode`,`startdate`,`enddate`),
  KEY `CurrAbrev` (`currabrev`),
  KEY `DebtorNo` (`debtorno`),
  KEY `StockID` (`stockid`),
  KEY `TypeAbbrev` (`typeabbrev`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `prices` (`stockid`, `typeabbrev`, `currabrev`, `debtorno`, `price`, `branchcode`, `startdate`, `enddate`) VALUES('3008', '01', 'CNY', '', '198.0000', '', '2013-12-14', '2019-12-31');
INSERT INTO `prices` (`stockid`, `typeabbrev`, `currabrev`, `debtorno`, `price`, `branchcode`, `startdate`, `enddate`) VALUES('3007', '01', 'CNY', '', '99.0000', '', '2013-12-14', '2019-12-31');
INSERT INTO `prices` (`stockid`, `typeabbrev`, `currabrev`, `debtorno`, `price`, `branchcode`, `startdate`, `enddate`) VALUES('3001', '01', 'CNY', '', '68.0000', '', '2013-12-14', '2019-12-31');

CREATE TABLE IF NOT EXISTS `purchdata` (
  `supplierno` char(10) NOT NULL DEFAULT '',
  `stockid` char(20) NOT NULL DEFAULT '',
  `price` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `suppliersuom` char(50) NOT NULL DEFAULT '',
  `conversionfactor` double NOT NULL DEFAULT '1',
  `supplierdescription` char(50) NOT NULL DEFAULT '',
  `leadtime` smallint(6) NOT NULL DEFAULT '1',
  `preferred` tinyint(4) NOT NULL DEFAULT '0',
  `effectivefrom` date NOT NULL,
  `suppliers_partno` varchar(50) NOT NULL DEFAULT '',
  `minorderqty` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`supplierno`,`stockid`,`effectivefrom`),
  KEY `StockID` (`stockid`),
  KEY `SupplierNo` (`supplierno`),
  KEY `Preferred` (`preferred`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `purchorderauth` (
  `userid` varchar(20) NOT NULL DEFAULT '',
  `currabrev` char(3) NOT NULL DEFAULT '',
  `cancreate` smallint(2) NOT NULL DEFAULT '0',
  `authlevel` double NOT NULL DEFAULT '0',
  `offhold` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`currabrev`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `purchorderauth` (`userid`, `currabrev`, `cancreate`, `authlevel`, `offhold`) VALUES('admin', 'CNY', 0, 10000, 0);
INSERT INTO `purchorderauth` (`userid`, `currabrev`, `cancreate`, `authlevel`, `offhold`) VALUES('cncerp', 'CNY', 0, 100000, 0);

CREATE TABLE IF NOT EXISTS `purchorderdetails` (
  `podetailitem` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` int(11) NOT NULL DEFAULT '0',
  `itemcode` varchar(20) NOT NULL DEFAULT '',
  `deliverydate` date NOT NULL DEFAULT '0000-00-00',
  `itemdescription` varchar(100) NOT NULL,
  `glcode` varchar(20) NOT NULL DEFAULT '0',
  `qtyinvoiced` double NOT NULL DEFAULT '0',
  `unitprice` double NOT NULL DEFAULT '0',
  `actprice` double NOT NULL DEFAULT '0',
  `stdcostunit` double NOT NULL DEFAULT '0',
  `quantityord` double NOT NULL DEFAULT '0',
  `quantityrecd` double NOT NULL DEFAULT '0',
  `shiptref` int(11) NOT NULL DEFAULT '0',
  `jobref` varchar(20) NOT NULL DEFAULT '',
  `completed` tinyint(4) NOT NULL DEFAULT '0',
  `suppliersunit` varchar(50) DEFAULT NULL,
  `suppliers_partno` varchar(50) NOT NULL DEFAULT '',
  `assetid` int(11) NOT NULL DEFAULT '0',
  `conversionfactor` double NOT NULL DEFAULT '1',
  PRIMARY KEY (`podetailitem`),
  KEY `DeliveryDate` (`deliverydate`),
  KEY `GLCode` (`glcode`),
  KEY `ItemCode` (`itemcode`),
  KEY `JobRef` (`jobref`),
  KEY `OrderNo` (`orderno`),
  KEY `ShiptRef` (`shiptref`),
  KEY `Completed` (`completed`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

INSERT INTO `purchorderdetails` (`podetailitem`, `orderno`, `itemcode`, `deliverydate`, `itemdescription`, `glcode`, `qtyinvoiced`, `unitprice`, `actprice`, `stdcostunit`, `quantityord`, `quantityrecd`, `shiptref`, `jobref`, `completed`, `suppliersunit`, `suppliers_partno`, `assetid`, `conversionfactor`) VALUES(8, 1, '3006', '2013-12-14', '树脂颗粒', '1403', 0, 8, 0, 0.01, 300, 300, 0, '0', 1, '克', '', 0, 1);
INSERT INTO `purchorderdetails` (`podetailitem`, `orderno`, `itemcode`, `deliverydate`, `itemdescription`, `glcode`, `qtyinvoiced`, `unitprice`, `actprice`, `stdcostunit`, `quantityord`, `quantityrecd`, `shiptref`, `jobref`, `completed`, `suppliersunit`, `suppliers_partno`, `assetid`, `conversionfactor`) VALUES(7, 1, '3002', '2013-12-14', '闪存颗粒1G', '1403', 0, 14, 0, 20.2, 5, 5, 0, '0', 1, '个', '', 0, 1);
INSERT INTO `purchorderdetails` (`podetailitem`, `orderno`, `itemcode`, `deliverydate`, `itemdescription`, `glcode`, `qtyinvoiced`, `unitprice`, `actprice`, `stdcostunit`, `quantityord`, `quantityrecd`, `shiptref`, `jobref`, `completed`, `suppliersunit`, `suppliers_partno`, `assetid`, `conversionfactor`) VALUES(6, 1, '3001', '2013-12-14', '贩卖-摄像头', '1405', 0, 25, 0, 5, 100, 100, 0, '0', 1, '袋', '', 0, 1);

CREATE TABLE IF NOT EXISTS `purchorders` (
  `orderno` int(11) NOT NULL AUTO_INCREMENT,
  `supplierno` varchar(10) NOT NULL DEFAULT '',
  `comments` longblob,
  `orddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rate` double NOT NULL DEFAULT '1',
  `dateprinted` datetime DEFAULT NULL,
  `allowprint` tinyint(4) NOT NULL DEFAULT '1',
  `initiator` varchar(20) DEFAULT NULL,
  `requisitionno` varchar(15) DEFAULT NULL,
  `intostocklocation` varchar(5) NOT NULL DEFAULT '',
  `deladd1` varchar(40) NOT NULL DEFAULT '',
  `deladd2` varchar(40) NOT NULL DEFAULT '',
  `deladd3` varchar(40) NOT NULL DEFAULT '',
  `deladd4` varchar(40) NOT NULL DEFAULT '',
  `deladd5` varchar(20) NOT NULL DEFAULT '',
  `deladd6` varchar(15) NOT NULL DEFAULT '',
  `tel` varchar(15) NOT NULL DEFAULT '',
  `suppdeladdress1` varchar(40) NOT NULL DEFAULT '',
  `suppdeladdress2` varchar(40) NOT NULL DEFAULT '',
  `suppdeladdress3` varchar(40) NOT NULL DEFAULT '',
  `suppdeladdress4` varchar(40) NOT NULL DEFAULT '',
  `suppdeladdress5` varchar(20) NOT NULL DEFAULT '',
  `suppdeladdress6` varchar(15) NOT NULL DEFAULT '',
  `suppliercontact` varchar(30) NOT NULL DEFAULT '',
  `supptel` varchar(30) NOT NULL DEFAULT '',
  `contact` varchar(30) NOT NULL DEFAULT '',
  `version` decimal(3,2) NOT NULL DEFAULT '1.00',
  `revised` date NOT NULL DEFAULT '0000-00-00',
  `realorderno` varchar(16) NOT NULL DEFAULT '',
  `deliveryby` varchar(100) NOT NULL DEFAULT '',
  `deliverydate` date NOT NULL DEFAULT '0000-00-00',
  `status` varchar(12) NOT NULL DEFAULT '',
  `stat_comment` text NOT NULL,
  `paymentterms` char(2) NOT NULL DEFAULT '',
  `port` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`orderno`),
  KEY `OrdDate` (`orddate`),
  KEY `SupplierNo` (`supplierno`),
  KEY `IntoStockLocation` (`intostocklocation`),
  KEY `AllowPrintPO` (`allowprint`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

INSERT INTO `purchorders` (`orderno`, `supplierno`, `comments`, `orddate`, `rate`, `dateprinted`, `allowprint`, `initiator`, `requisitionno`, `intostocklocation`, `deladd1`, `deladd2`, `deladd3`, `deladd4`, `deladd5`, `deladd6`, `tel`, `suppdeladdress1`, `suppdeladdress2`, `suppdeladdress3`, `suppdeladdress4`, `suppdeladdress5`, `suppdeladdress6`, `suppliercontact`, `supptel`, `contact`, `version`, `revised`, `realorderno`, `deliveryby`, `deliverydate`, `status`, `stat_comment`, `paymentterms`, `port`) VALUES(1, '3001', '', '2013-12-14 00:00:00', 1, '2013-12-14 00:00:00', 0, 'admin', '', 'CK001', ' 总部仓库地址', '', '', '', '', '中国', '0871-888888', '八达岭', '2号', '', '', '中国', '中国', '', '', '尚总仓', '1.00', '2013-12-14', '', '1', '2013-12-14', 'Completed', '2013/12/14 - 输入GRN时订单完成<br />2013/12/14 - 打印日期  <a href="mailto:admin@qq.com">王忠官</a><br />2013/12/14 - 订单创建及授权人 <a href="mailto:admin@qq.com">王忠官</a><br /><br />', '20', '');

CREATE TABLE IF NOT EXISTS `recurringsalesorders` (
  `recurrorderno` int(11) NOT NULL AUTO_INCREMENT,
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `customerref` varchar(50) NOT NULL DEFAULT '',
  `buyername` varchar(50) DEFAULT NULL,
  `comments` longblob,
  `orddate` date NOT NULL DEFAULT '0000-00-00',
  `ordertype` char(2) NOT NULL DEFAULT '',
  `shipvia` int(11) NOT NULL DEFAULT '0',
  `deladd1` varchar(40) NOT NULL DEFAULT '',
  `deladd2` varchar(40) NOT NULL DEFAULT '',
  `deladd3` varchar(40) NOT NULL DEFAULT '',
  `deladd4` varchar(40) DEFAULT NULL,
  `deladd5` varchar(20) NOT NULL DEFAULT '',
  `deladd6` varchar(15) NOT NULL DEFAULT '',
  `contactphone` varchar(25) DEFAULT NULL,
  `contactemail` varchar(25) DEFAULT NULL,
  `deliverto` varchar(40) NOT NULL DEFAULT '',
  `freightcost` double NOT NULL DEFAULT '0',
  `fromstkloc` varchar(5) NOT NULL DEFAULT '',
  `lastrecurrence` date NOT NULL DEFAULT '0000-00-00',
  `stopdate` date NOT NULL DEFAULT '0000-00-00',
  `frequency` tinyint(4) NOT NULL DEFAULT '1',
  `autoinvoice` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`recurrorderno`),
  KEY `debtorno` (`debtorno`),
  KEY `orddate` (`orddate`),
  KEY `ordertype` (`ordertype`),
  KEY `locationindex` (`fromstkloc`),
  KEY `branchcode` (`branchcode`,`debtorno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `recurrsalesorderdetails` (
  `recurrorderno` int(11) NOT NULL DEFAULT '0',
  `stkcode` varchar(20) NOT NULL DEFAULT '',
  `unitprice` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `discountpercent` double NOT NULL DEFAULT '0',
  `narrative` text NOT NULL,
  KEY `orderno` (`recurrorderno`),
  KEY `stkcode` (`stkcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `reportcolumns` (
  `reportid` smallint(6) NOT NULL DEFAULT '0',
  `colno` smallint(6) NOT NULL DEFAULT '0',
  `heading1` varchar(15) NOT NULL DEFAULT '',
  `heading2` varchar(15) DEFAULT NULL,
  `calculation` tinyint(1) NOT NULL DEFAULT '0',
  `periodfrom` smallint(6) DEFAULT NULL,
  `periodto` smallint(6) DEFAULT NULL,
  `datatype` varchar(15) DEFAULT NULL,
  `colnumerator` tinyint(4) DEFAULT NULL,
  `coldenominator` tinyint(4) DEFAULT NULL,
  `calcoperator` char(1) DEFAULT NULL,
  `budgetoractual` tinyint(1) NOT NULL DEFAULT '0',
  `valformat` char(1) NOT NULL DEFAULT 'N',
  `constant` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`reportid`,`colno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `reportfields` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `reportid` int(5) NOT NULL DEFAULT '0',
  `entrytype` varchar(15) NOT NULL DEFAULT '',
  `seqnum` int(3) NOT NULL DEFAULT '0',
  `fieldname` varchar(80) NOT NULL DEFAULT '',
  `displaydesc` varchar(25) NOT NULL DEFAULT '',
  `visible` enum('1','0') NOT NULL DEFAULT '1',
  `columnbreak` enum('1','0') NOT NULL DEFAULT '1',
  `params` text,
  PRIMARY KEY (`id`),
  KEY `reportid` (`reportid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1828 ;

INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1808, 137, 'fieldlist', 1, 'debtortrans.order_', '订单号', '1', '0', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1807, 137, 'dateselect', 0, '', 'a', '1', '1', 'a');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1809, 137, 'fieldlist', 2, 'debtortrans.transno', '交易号', '1', '0', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1810, 137, 'fieldlist', 3, 'systypes.typename', '交易类型', '1', '0', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1811, 137, 'fieldlist', 4, 'debtorsmaster.name', '客户名称', '1', '0', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1812, 137, 'fieldlist', 5, 'debtortrans.trandate', '交易日期', '1', '0', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1813, 137, 'fieldlist', 6, 'stockmaster.description', '商品名称', '1', '0', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1814, 137, 'fieldlist', 7, 'stockmoves.price', '单价', '1', '0', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1815, 137, 'fieldlist', 8, 'stockmoves.qty', '商品数量', '1', '0', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1816, 137, 'fieldlist', 9, 'debtortrans.ovamount', '商品金额', '1', '0', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1817, 137, 'trunclong', 0, '', '', '1', '1', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1820, 139, 'critlist', 1, 'prices.currabrev', 'Currency', '0', '0', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1821, 139, 'dateselect', 0, '', '', '1', '1', 'a');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1822, 139, 'fieldlist', 1, 'stockmaster.stockid', 'Item', '1', '1', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1823, 139, 'fieldlist', 2, 'prices.price', 'Price', '1', '1', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1824, 139, 'fieldlist', 3, 'prices.typeabbrev', 'Price List', '1', '1', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1825, 139, 'fieldlist', 4, 'prices.currabrev', 'Currency', '1', '1', '0');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1826, 139, 'sortlist', 1, 'stockmaster.stockid', 'Item', '0', '0', '1');
INSERT INTO `reportfields` (`id`, `reportid`, `entrytype`, `seqnum`, `fieldname`, `displaydesc`, `visible`, `columnbreak`, `params`) VALUES(1827, 139, 'trunclong', 0, '', '', '1', '1', '0');

CREATE TABLE IF NOT EXISTS `reportheaders` (
  `reportid` smallint(6) NOT NULL AUTO_INCREMENT,
  `reportheading` varchar(80) NOT NULL DEFAULT '',
  `groupbydata1` varchar(15) NOT NULL DEFAULT '',
  `newpageafter1` tinyint(1) NOT NULL DEFAULT '0',
  `lower1` varchar(10) NOT NULL DEFAULT '',
  `upper1` varchar(10) NOT NULL DEFAULT '',
  `groupbydata2` varchar(15) DEFAULT NULL,
  `newpageafter2` tinyint(1) NOT NULL DEFAULT '0',
  `lower2` varchar(10) DEFAULT NULL,
  `upper2` varchar(10) DEFAULT NULL,
  `groupbydata3` varchar(15) DEFAULT NULL,
  `newpageafter3` tinyint(1) NOT NULL DEFAULT '0',
  `lower3` varchar(10) DEFAULT NULL,
  `upper3` varchar(10) DEFAULT NULL,
  `groupbydata4` varchar(15) NOT NULL DEFAULT '',
  `newpageafter4` tinyint(1) NOT NULL DEFAULT '0',
  `upper4` varchar(10) NOT NULL DEFAULT '',
  `lower4` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`reportid`),
  KEY `ReportHeading` (`reportheading`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

INSERT INTO `reportheaders` (`reportid`, `reportheading`, `groupbydata1`, `newpageafter1`, `lower1`, `upper1`, `groupbydata2`, `newpageafter2`, `lower2`, `upper2`, `groupbydata3`, `newpageafter3`, `lower3`, `upper3`, `groupbydata4`, `newpageafter4`, `upper4`, `lower4`) VALUES(1, '01', 'Sales Area', 1, '0870', '0870', 'Customer Code', 1, '40102010', '?40402000', 'Product Code', 0, '10101010', '90100000', 'Sales Type', 0, '07', '01');

CREATE TABLE IF NOT EXISTS `reportlinks` (
  `table1` varchar(25) NOT NULL DEFAULT '',
  `table2` varchar(25) NOT NULL DEFAULT '',
  `equation` varchar(75) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `reportname` varchar(30) NOT NULL DEFAULT '',
  `reporttype` char(3) NOT NULL DEFAULT 'rpt',
  `groupname` varchar(9) NOT NULL DEFAULT 'misc',
  `defaultreport` enum('1','0') NOT NULL DEFAULT '0',
  `papersize` varchar(15) NOT NULL DEFAULT 'A4,210,297',
  `paperorientation` enum('P','L') NOT NULL DEFAULT 'P',
  `margintop` int(3) NOT NULL DEFAULT '10',
  `marginbottom` int(3) NOT NULL DEFAULT '10',
  `marginleft` int(3) NOT NULL DEFAULT '10',
  `marginright` int(3) NOT NULL DEFAULT '10',
  `coynamefont` varchar(20) NOT NULL DEFAULT 'Helvetica',
  `coynamefontsize` int(3) NOT NULL DEFAULT '12',
  `coynamefontcolor` varchar(11) NOT NULL DEFAULT '0,0,0',
  `coynamealign` enum('L','C','R') NOT NULL DEFAULT 'C',
  `coynameshow` enum('1','0') NOT NULL DEFAULT '1',
  `title1desc` varchar(50) NOT NULL DEFAULT '%reportname%',
  `title1font` varchar(20) NOT NULL DEFAULT 'Helvetica',
  `title1fontsize` int(3) NOT NULL DEFAULT '10',
  `title1fontcolor` varchar(11) NOT NULL DEFAULT '0,0,0',
  `title1fontalign` enum('L','C','R') NOT NULL DEFAULT 'C',
  `title1show` enum('1','0') NOT NULL DEFAULT '1',
  `title2desc` varchar(50) NOT NULL DEFAULT 'Report Generated %date%',
  `title2font` varchar(20) NOT NULL DEFAULT 'Helvetica',
  `title2fontsize` int(3) NOT NULL DEFAULT '10',
  `title2fontcolor` varchar(11) NOT NULL DEFAULT '0,0,0',
  `title2fontalign` enum('L','C','R') NOT NULL DEFAULT 'C',
  `title2show` enum('1','0') NOT NULL DEFAULT '1',
  `filterfont` varchar(10) NOT NULL DEFAULT 'Helvetica',
  `filterfontsize` int(3) NOT NULL DEFAULT '8',
  `filterfontcolor` varchar(11) NOT NULL DEFAULT '0,0,0',
  `filterfontalign` enum('L','C','R') NOT NULL DEFAULT 'L',
  `datafont` varchar(10) NOT NULL DEFAULT 'Helvetica',
  `datafontsize` int(3) NOT NULL DEFAULT '10',
  `datafontcolor` varchar(10) NOT NULL DEFAULT 'black',
  `datafontalign` enum('L','C','R') NOT NULL DEFAULT 'L',
  `totalsfont` varchar(10) NOT NULL DEFAULT 'Helvetica',
  `totalsfontsize` int(3) NOT NULL DEFAULT '10',
  `totalsfontcolor` varchar(11) NOT NULL DEFAULT '0,0,0',
  `totalsfontalign` enum('L','C','R') NOT NULL DEFAULT 'L',
  `col1width` int(3) NOT NULL DEFAULT '25',
  `col2width` int(3) NOT NULL DEFAULT '25',
  `col3width` int(3) NOT NULL DEFAULT '25',
  `col4width` int(3) NOT NULL DEFAULT '25',
  `col5width` int(3) NOT NULL DEFAULT '25',
  `col6width` int(3) NOT NULL DEFAULT '25',
  `col7width` int(3) NOT NULL DEFAULT '25',
  `col8width` int(3) NOT NULL DEFAULT '25',
  `col9width` int(3) NOT NULL DEFAULT '25',
  `col10width` int(3) NOT NULL DEFAULT '25',
  `col11width` int(3) NOT NULL DEFAULT '25',
  `col12width` int(3) NOT NULL DEFAULT '25',
  `col13width` int(3) NOT NULL DEFAULT '25',
  `col14width` int(3) NOT NULL DEFAULT '25',
  `col15width` int(3) NOT NULL DEFAULT '25',
  `col16width` int(3) NOT NULL DEFAULT '25',
  `col17width` int(3) NOT NULL DEFAULT '25',
  `col18width` int(3) NOT NULL DEFAULT '25',
  `col19width` int(3) NOT NULL DEFAULT '25',
  `col20width` int(3) NOT NULL DEFAULT '25',
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=138 ;

INSERT INTO `reports` (`id`, `reportname`, `reporttype`, `groupname`, `defaultreport`, `papersize`, `paperorientation`, `margintop`, `marginbottom`, `marginleft`, `marginright`, `coynamefont`, `coynamefontsize`, `coynamefontcolor`, `coynamealign`, `coynameshow`, `title1desc`, `title1font`, `title1fontsize`, `title1fontcolor`, `title1fontalign`, `title1show`, `title2desc`, `title2font`, `title2fontsize`, `title2fontcolor`, `title2fontalign`, `title2show`, `filterfont`, `filterfontsize`, `filterfontcolor`, `filterfontalign`, `datafont`, `datafontsize`, `datafontcolor`, `datafontalign`, `totalsfont`, `totalsfontsize`, `totalsfontcolor`, `totalsfontalign`, `col1width`, `col2width`, `col3width`, `col4width`, `col5width`, `col6width`, `col7width`, `col8width`, `col9width`, `col10width`, `col11width`, `col12width`, `col13width`, `col14width`, `col15width`, `col16width`, `col17width`, `col18width`, `col19width`, `col20width`, `table1`, `table2`, `table2criteria`, `table3`, `table3criteria`, `table4`, `table4criteria`, `table5`, `table5criteria`, `table6`, `table6criteria`) VALUES(137, '销售台账', 'rpt', 'ord', '1', 'A3:297:420', 'P', 10, 10, 10, 10, 'helvetica', 12, '0:0:0', 'C', '1', '%reportname%', 'helvetica', 10, '0:0:0', 'C', '1', 'Report Generated %date%', 'helvetica', 10, '0:0:0', 'C', '1', 'helvetica', 8, '0:0:0', 'L', 'helvetica', 10, '0:0:0', 'L', 'helvetica', 10, '0:0:0', 'L', 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 'debtortrans', 'stockmoves', 'debtortrans.transno=stockmoves.transno and debtortrans.type=stockmoves.type', 'systypes', 'debtortrans.type=systypes.typeid', 'salesorders', 'debtortrans.order_=salesorders.orderno', 'debtorsmaster', 'debtorsmaster.debtorno=debtortrans.debtorno', 'stockmaster', 'stockmaster.stockid=stockmoves.stockid');

CREATE TABLE IF NOT EXISTS `salesanalysis` (
  `typeabbrev` char(2) NOT NULL DEFAULT '',
  `periodno` smallint(6) NOT NULL DEFAULT '0',
  `amt` double NOT NULL DEFAULT '0',
  `cost` double NOT NULL DEFAULT '0',
  `cust` varchar(10) NOT NULL DEFAULT '',
  `custbranch` varchar(10) NOT NULL DEFAULT '',
  `qty` double NOT NULL DEFAULT '0',
  `disc` double NOT NULL DEFAULT '0',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `area` varchar(3) NOT NULL,
  `budgetoractual` tinyint(1) NOT NULL DEFAULT '0',
  `salesperson` char(3) NOT NULL DEFAULT '',
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
  KEY `Salesperson` (`salesperson`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `salesanalysis` (`typeabbrev`, `periodno`, `amt`, `cost`, `cust`, `custbranch`, `qty`, `disc`, `stockid`, `area`, `budgetoractual`, `salesperson`, `stkcategory`, `id`) VALUES('01', 0, 136, 10, '1001', '1001', 2, 0, '3001', '871', 1, '001', '04', 2);
INSERT INTO `salesanalysis` (`typeabbrev`, `periodno`, `amt`, `cost`, `cust`, `custbranch`, `qty`, `disc`, `stockid`, `area`, `budgetoractual`, `salesperson`, `stkcategory`, `id`) VALUES('01', 0, 495, 127.02, '1001', '1001', 5, 0, '3007', '871', 1, '001', '01', 3);
INSERT INTO `salesanalysis` (`typeabbrev`, `periodno`, `amt`, `cost`, `cust`, `custbranch`, `qty`, `disc`, `stockid`, `area`, `budgetoractual`, `salesperson`, `stkcategory`, `id`) VALUES('01', 0, 198, 85, '1001', '1001', 1, 0, '3008', '871', 1, '001', '01', 4);

CREATE TABLE IF NOT EXISTS `salescat` (
  `salescatid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `parentcatid` tinyint(4) DEFAULT NULL,
  `salescatname` varchar(50) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1' COMMENT '1 if active 0 if inactive',
  PRIMARY KEY (`salescatid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `salescatprod` (
  `salescatid` tinyint(4) NOT NULL DEFAULT '0',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `manufacturers_id` int(11) NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`salescatid`,`stockid`),
  KEY `salescatid` (`salescatid`),
  KEY `stockid` (`stockid`),
  KEY `manufacturer_id` (`manufacturers_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `manufacturers_id_2` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `salescattranslations` (
  `salescatid` tinyint(4) NOT NULL DEFAULT '0',
  `language_id` varchar(10) NOT NULL DEFAULT 'en_GB.utf8',
  `salescattranslation` varchar(40) NOT NULL,
  PRIMARY KEY (`salescatid`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

INSERT INTO `salesglpostings` (`id`, `area`, `stkcat`, `discountglcode`, `salesglcode`, `salestype`) VALUES(14, '870', 'ANY', '60010101', '60010101', 'AN');
INSERT INTO `salesglpostings` (`id`, `area`, `stkcat`, `discountglcode`, `salesglcode`, `salestype`) VALUES(12, '871', '01', '60010101', '60010101', 'AN');
INSERT INTO `salesglpostings` (`id`, `area`, `stkcat`, `discountglcode`, `salesglcode`, `salestype`) VALUES(13, 'AN', 'ANY', '60010101', '60010101', 'AN');

CREATE TABLE IF NOT EXISTS `salesman` (
  `salesmancode` varchar(4) NOT NULL DEFAULT '',
  `salesmanname` char(30) NOT NULL DEFAULT '',
  `smantel` char(20) NOT NULL DEFAULT '',
  `smanfax` char(20) NOT NULL DEFAULT '',
  `commissionrate1` double NOT NULL DEFAULT '0',
  `breakpoint` decimal(10,0) NOT NULL DEFAULT '0',
  `commissionrate2` double NOT NULL DEFAULT '0',
  `current` tinyint(4) NOT NULL COMMENT 'Salesman current (1) or not (0)',
  PRIMARY KEY (`salesmancode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `salesman` (`salesmancode`, `salesmanname`, `smantel`, `smanfax`, `commissionrate1`, `breakpoint`, `commissionrate2`, `current`) VALUES('002', '苏试', '99877', '', 0, '0', 0, 1);
INSERT INTO `salesman` (`salesmancode`, `salesmanname`, `smantel`, `smanfax`, `commissionrate1`, `breakpoint`, `commissionrate2`, `current`) VALUES('001', '王忠官', '99898', '', 0, '0', 0, 1);

CREATE TABLE IF NOT EXISTS `salesorderdetails` (
  `orderlineno` int(11) NOT NULL DEFAULT '0',
  `orderno` int(11) NOT NULL DEFAULT '0',
  `stkcode` varchar(20) NOT NULL DEFAULT '',
  `qtyinvoiced` double NOT NULL DEFAULT '0',
  `unitprice` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `estimate` tinyint(4) NOT NULL DEFAULT '0',
  `discountpercent` double NOT NULL DEFAULT '0',
  `actualdispatchdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `narrative` text,
  `itemdue` date DEFAULT NULL COMMENT 'Due date for line item.  Some customers require \r\nacknowledgements with due dates by line item',
  `poline` varchar(10) DEFAULT NULL COMMENT 'Some Customers require acknowledgements with a PO line number for each sales line',
  PRIMARY KEY (`orderlineno`,`orderno`),
  KEY `OrderNo` (`orderno`),
  KEY `StkCode` (`stkcode`),
  KEY `Completed` (`completed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `salesorderdetails` (`orderlineno`, `orderno`, `stkcode`, `qtyinvoiced`, `unitprice`, `quantity`, `estimate`, `discountpercent`, `actualdispatchdate`, `completed`, `narrative`, `itemdue`, `poline`) VALUES(0, 1, '3001', 2, 68, 2, 0, 0, '2013-12-14 00:00:00', 1, '', '2013-12-14', '0');
INSERT INTO `salesorderdetails` (`orderlineno`, `orderno`, `stkcode`, `qtyinvoiced`, `unitprice`, `quantity`, `estimate`, `discountpercent`, `actualdispatchdate`, `completed`, `narrative`, `itemdue`, `poline`) VALUES(1, 1, '3007', 5, 99, 5, 0, 0, '2013-12-14 00:00:00', 1, '', '2013-12-14', '0');
INSERT INTO `salesorderdetails` (`orderlineno`, `orderno`, `stkcode`, `qtyinvoiced`, `unitprice`, `quantity`, `estimate`, `discountpercent`, `actualdispatchdate`, `completed`, `narrative`, `itemdue`, `poline`) VALUES(2, 1, '3008', 1, 198, 1, 0, 0, '2013-12-14 00:00:00', 1, '', '2013-12-14', '0');

CREATE TABLE IF NOT EXISTS `salesorders` (
  `orderno` int(11) NOT NULL,
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `customerref` varchar(50) NOT NULL DEFAULT '',
  `buyername` varchar(50) DEFAULT NULL,
  `comments` longblob,
  `orddate` date NOT NULL DEFAULT '0000-00-00',
  `ordertype` char(2) NOT NULL DEFAULT '',
  `shipvia` int(11) NOT NULL DEFAULT '0',
  `deladd1` varchar(40) NOT NULL DEFAULT '',
  `deladd2` varchar(40) NOT NULL DEFAULT '',
  `deladd3` varchar(40) NOT NULL DEFAULT '',
  `deladd4` varchar(40) DEFAULT NULL,
  `deladd5` varchar(20) NOT NULL DEFAULT '',
  `deladd6` varchar(15) NOT NULL DEFAULT '',
  `contactphone` varchar(25) DEFAULT NULL,
  `contactemail` varchar(40) DEFAULT NULL,
  `deliverto` varchar(40) NOT NULL DEFAULT '',
  `deliverblind` tinyint(1) DEFAULT '1',
  `freightcost` double NOT NULL DEFAULT '0',
  `fromstkloc` varchar(5) NOT NULL DEFAULT '',
  `deliverydate` date NOT NULL DEFAULT '0000-00-00',
  `confirmeddate` date NOT NULL DEFAULT '0000-00-00',
  `printedpackingslip` tinyint(4) NOT NULL DEFAULT '0',
  `datepackingslipprinted` date NOT NULL DEFAULT '0000-00-00',
  `quotation` tinyint(4) NOT NULL DEFAULT '0',
  `quotedate` date NOT NULL DEFAULT '0000-00-00',
  `poplaced` tinyint(4) NOT NULL DEFAULT '0',
  `salesperson` varchar(4) NOT NULL,
  PRIMARY KEY (`orderno`),
  KEY `DebtorNo` (`debtorno`),
  KEY `OrdDate` (`orddate`),
  KEY `OrderType` (`ordertype`),
  KEY `LocationIndex` (`fromstkloc`),
  KEY `BranchCode` (`branchcode`,`debtorno`),
  KEY `ShipVia` (`shipvia`),
  KEY `quotation` (`quotation`),
  KEY `poplaced` (`poplaced`),
  KEY `salesperson` (`salesperson`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `salesorders` (`orderno`, `debtorno`, `branchcode`, `customerref`, `buyername`, `comments`, `orddate`, `ordertype`, `shipvia`, `deladd1`, `deladd2`, `deladd3`, `deladd4`, `deladd5`, `deladd6`, `contactphone`, `contactemail`, `deliverto`, `deliverblind`, `freightcost`, `fromstkloc`, `deliverydate`, `confirmeddate`, `printedpackingslip`, `datepackingslipprinted`, `quotation`, `quotedate`, `poplaced`, `salesperson`) VALUES(1, '1001', '1001', '', NULL, 0x20496e762031, '2013-12-14', '01', 1, '无需计较', '', '', '', '', '中国', '123456', '', '统一零售顾客', 1, 0, 'CK001', '2013-12-14', '2013-12-14', 0, '0000-00-00', 0, '2013-12-14', 0, '001');

CREATE TABLE IF NOT EXISTS `salestypes` (
  `typeabbrev` char(2) NOT NULL DEFAULT '',
  `sales_type` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`typeabbrev`),
  KEY `Sales_Type` (`sales_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `salestypes` (`typeabbrev`, `sales_type`) VALUES('04', '内销');
INSERT INTO `salestypes` (`typeabbrev`, `sales_type`) VALUES('06', '商超');
INSERT INTO `salestypes` (`typeabbrev`, `sales_type`) VALUES('02', '批发');
INSERT INTO `salestypes` (`typeabbrev`, `sales_type`) VALUES('05', '香港批发');
INSERT INTO `salestypes` (`typeabbrev`, `sales_type`) VALUES('03', '联营');
INSERT INTO `salestypes` (`typeabbrev`, `sales_type`) VALUES('01', '零售');

CREATE TABLE IF NOT EXISTS `scripts` (
  `script` varchar(78) NOT NULL DEFAULT '',
  `pagesecurity` int(11) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  PRIMARY KEY (`script`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('AccountGroups.php', 10, '会计科目组设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('AccountSections.php', 10, '会计要素设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('AddCustomerContacts.php', 2, '顾客联系人设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('AddCustomerNotes.php', 2, '客户网络信息等设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('AddCustomerTypeNotes.php', 2, '顾客(组）备注');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('AgedDebtors.php', 3, '应收账款账龄分析表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('AgedSuppliers.php', 3, '应付账款帐龄分析');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Areas.php', 15, '销售区域设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('AuditTrail.php', 15, '审核追踪黑匣子查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('BankAccounts.php', 15, '银行账户设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('BankMatching.php', 7, '银行账户对账');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('BankReconciliation.php', 7, '银行对账单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('BOMExtendedQty.php', 15, 'bom需列表求PDF');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('BOMIndented.php', 15, '缩排式BOM列表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('BOMIndentedReverse.php', 15, '逆向缩排式BOM2PDF打印上层需求');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('BOMInquiry.php', 15, 'BOM成本');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('BOMListing.php', 15, 'BOM清单PDF');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('BOMs.php', 15, '多层BOM设定修改');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('COGSGLPostings.php', 15, '销售成本科目设置');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CompanyPreferences.php', 15, '公司设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ConfirmDispatchControlled_Invoice.php', 15, '指定受控物料的控制信息');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ConfirmDispatch_Invoice.php', 2, '确认发货并为订单开发票');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ContractBOM.php', 15, '合同明细输入');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ContractCosting.php', 15, '合同成本');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ContractOtherReqts.php', 15, '合同输入');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Contracts.php', 15, '合同输入');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CopyBOM.php', 15, '复制BOM');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CounterSales.php', 1, '门店销售');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CreditItemsControlled.php', 21, '红字受控物料信息');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CreditStatus.php', 15, '信用等级编号');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Credit_Invoice.php', 21, '红字冲销发票');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Currencies.php', 15, '货币设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CustEDISetup.php', 15, '客户EDI设置');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CustLoginSetup.php', 15, '客户登录配置');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CustomerAllocations.php', 21, '客户收据(收款)/红字发票清算');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CustomerBranches.php', 3, '客户分公司设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CustomerInquiry.php', 1, '客户交易查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CustomerReceipt.php', 3, '收款操作');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Customers.php', 3, '客户设定修改');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CustomerTransInquiry.php', 2, '期间所有客户交易查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CustomerTypes.php', 15, '顾客类型分类设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CustWhereAlloc.php', 2, '交易清算状态查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('DailyBankTransactions.php', 3, '银行交易查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('DailySalesInquiry.php', 2, '销售日报查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('DebtorsAtPeriodEnd.php', 3, '期末客户欠款汇总表PDF');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('DeliveryDetails.php', 1, '购物车交易明细');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Departments.php', 15, '部门设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('DiscountCategories.php', 15, '折扣类别设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('DiscountMatrix.php', 15, '折扣设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('EDIMessageFormat.php', 15, 'EDI模板设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('EDIProcessOrders.php', 15, 'EDI订单文件列表（档案列表显示）');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('EDISendInvoices.php', 15, '流程发票EDI消息');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('EmailConfirmation.php', 15, '电子邮件确认');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('EmailCustTrans.php', 15, '电子邮件 红字发票');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ExchangeRateTrend.php', 15, '查看货币趋势');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Factors.php', 15, '代理公司维护');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('FixedAssetCategories.php', 16, '固定资产种类维护');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('FixedAssetDepreciation.php', 10, '折旧日记账分录');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('FixedAssetItems.php', 16, '固定资产、档案修改查询下载');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('FixedAssetList.php', 16, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('FixedAssetLocations.php', 16, '固定资产地点设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('FixedAssetMoves.php', 16, '档案、车辆、公章、固定资产借用记录');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('FixedAssetRegister.php', 5, '固定资产账簿');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('FixedAssetTransfer.php', 16, '变更资产地点');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('FixedAssetUsage.php', 16, '档案、车辆、公章、固定资产利用记录');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('FormDesigner.php', 15, '表单设计工具');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('FormMaker.php', 1, 'Allows running user defined Forms');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('FreightCosts.php', 15, '发运点设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('FTP_RadioBeacon.php', 15, 'FTP 订单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('geocode.php', 15, '顾客和供应商地理编码');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GeocodeSetup.php', 15, '地理编码');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('geocode_genxml_customers.php', 15, '地理编码');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('geocode_genxml_suppliers.php', 15, '地理编码');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('geo_displaymap_customers.php', 15, '地理编码');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('geo_displaymap_suppliers.php', 15, '地理编码');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GetStockImage.php', 16, '档案在线预览');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLAccountCSV.php', 8, '会计账簿导出csv');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLAccountInquiry.php', 8, '总账查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLAccountReport.php', 8, '账簿打印');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLAccounts.php', 10, '会计科目设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLBalanceSheet.php', 10, '资产负债表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLBudgets.php', 10, '总帐预算');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLCodesInquiry.php', 8, '总账科目查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLJournal.php', 3, '转账凭证录入');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLJournalInquiry.php', 3, '打印会计凭证');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLProfit_Loss.php', 10, '损益表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLTagProfit_Loss.php', 10, '标签分类的收入和费用');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLTags.php', 10, '总账标签设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLTransInquiry.php', 8, '系统凭证查看');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLTrialBalance.php', 8, '试算表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GLTrialBalance_csv.php', 5, '试算平衡表导出csv（余额表）');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GoodsReceived.php', 17, '采购收货');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GoodsReceivedControlled.php', 17, '受控物料收货');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('index.php', 1, '主页');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('InternalStockCategoriesByRole.php', 15, '易耗品申请单安全角色设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('InternalStockRequest.php', 1, '创建易耗品申请单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('InternalStockRequestAuthorisation.php', 10, '审核易耗品申请单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('InternalStockRequestFulfill.php', 18, '执行易耗品申请');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('InventoryPlanning.php', 15, '物料需求计划报表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('InventoryPlanningPrefSupplier.php', 15, '首选供应商库存计划');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('InventoryQuantities.php', 2, '库存数量报表PDF');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('InventoryValuation.php', 10, '库存价值报表PDF');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Labels.php', 15, '标签模板');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Locations.php', 15, '定义库存地点仓库');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Logout.php', 1, '退出页面');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MailInventoryValuation.php', 15, '电邮库存报告');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ManualContents.php', 15, '手册目录');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MenuAccess.php', 15, '手册菜单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MRP.php', 15, '运行MRP计算');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MRPCalendar.php', 15, 'MRP 日历');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MRPCreateDemands.php', 15, 'MRP 创建需求');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MRPDemands.php', 15, 'MRP需求查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MRPDemandTypes.php', 15, 'MRP 需求种类');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MRPPlannedPurchaseOrders.php', 15, '物料需求计划计划（MRP）采购订单报告');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MRPPlannedWorkOrders.php', 15, 'MRP计划的工作单报告');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MRPReport.php', 15, 'MRP 报告');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MRPReschedules.php', 15, 'MRP重新计划报告');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MRPShortages.php', 15, 'MRP缺料-滞料报告');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('NoSalesItems.php', 2, '销售不佳的商品');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('OffersReceived.php', 15, '供应商报盘');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('OrderDetails.php', 2, '检视销售订单的细节');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('OutstandingGRNs.php', 2, '已收货未开发票暂估报表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PageSecurity.php', 15, '页面安全等级设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PaymentAllocations.php', 3, '付款分配');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PaymentMethods.php', 15, '收付款方式设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Payments.php', 3, '付款');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PaymentTerms.php', 10, '付款条款（合同条款）');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PcAssignCashToTab.php', 10, '安排小额现金预付款');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PcAuthorizeExpenses.php', 10, '小额现金费用授权');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PcClaimExpensesFromTab.php', 2, '报销申请');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PcExpenses.php', 10, '报销费用种类设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PcExpensesTypeTab.php', 10, '设定费用与员工组别的对应');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PcReportTab.php', 10, '小额现金管理报表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PcTabs.php', 15, '小额现金标签设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PcTypeTabs.php', 15, '小额现金种类设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFBankingSummary.php', 3, '打印收款单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFChequeListing.php', 3, '付款清单报表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFCustomerList.php', 2, '打印客户清单（名单及联系方式）');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFCustTransListing.php', 3, '客户交易报告（发票，红字、收款）');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFDeliveryDifferences.php', 15, '拖期交货报表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFDIFOT.php', 15, '按期足量交货报表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFGLJournal.php', 3, '凭证PDF生成');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFGrn.php', 17, '打印采购收货单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFLowGP.php', 15, '低毛利销售报表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFOrdersInvoiced.php', 3, '已开发票报告');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFOrderStatus.php', 15, '订单执行状况报表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFPeriodStockTransListing.php', 18, '库存（期间）交易列表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFPickingList.php', 15, '打印装箱单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFPriceList.php', 2, '打印价格表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFPrintLabel.php', 15, '打印价格标签');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFQuotation.php', 2, '打印报价单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFQuotationPortrait.php', 2, '报价单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFReceipt.php', 20, '打印客户收据');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFRemittanceAdvice.php', 15, '打印汇款通知');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFStockCheckComparison.php', 15, '库存核对报告（小心）');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFStockLocTransfer.php', 18, '打印调拨发货单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFStockNegatives.php', 18, '负库存报表打印');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFStockTransfer.php', 15, '打印移库单（转移结束）');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFSuppTransListing.php', 3, '供应商交易列表（发票、红字、付款）');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFTopItems.php', 15, '顶层物料销售报告');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFWorkOrderReceived.php', 18, '打印产成品入库');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PeriodsInquiry.php', 2, '会计期间查看');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('POReport.php', 2, '采购订单报告（采购台账）');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PO_AuthorisationLevels.php', 15, '采购订单授权设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PO_AuthoriseMyOrders.php', 4, '授权采购订单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PO_Header.php', 4, '采购抬头选择');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PO_Items.php', 4, '采购订单明细车');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PO_OrderDetails.php', 2, '查看采购订单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PO_PDFPurchOrder.php', 4, '打印采购订单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PO_SelectOSPurchOrder.php', 4, '查找未完成采购订单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PO_SelectPurchOrder.php', 2, '查找采购订单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Prices.php', 3, '物料价格设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PricesBasedOnMarkUp.php', 15, '按比例更新价格');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PricesByCost.php', 15, '根据多个成本更新价格');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Prices_Customer.php', 15, '特殊价格设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PrintCheque.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PrintCustOrder.php', 15, '打印销售订单（套打）');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PrintCustOrder_generic.php', 15, '打印销售订单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PrintCustStatements.php', 2, '打印客户对账单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PrintCustTrans.php', 20, '打印批量打印发票红字发票');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PrintCustTransPortrait.php', 20, '打印批量打印发票红字发票（横竖之差）');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PrintSalesOrder_generic.php', 20, '打印通用销售订单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PurchData.php', 4, '供应商供货信息');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('RecurringSalesOrders.php', 15, '客户循环订单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('RecurringSalesOrdersProcess.php', 15, '执行循环订单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ReorderLevel.php', 15, '库存再订购水平报告');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ReorderLevelLocation.php', 15, '重新订货水平仓库报告');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ReportBug.php', 20, '报告错误');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ReportCreator.php', 20, '用户定义的报表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ReportletContainer.php', 1, '用户定义的报表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ReportMaker.php', 1, '用户定义的报表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('reportwriter/admin/ReportCreator.php', 15, '自定义报表工具');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ReprintGRN.php', 18, '打印采购收货单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ReverseGRN.php', 10, '撤销收货');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SalesAnalReptCols.php', 2, '销售分析报告');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SalesAnalRepts.php', 2, '自定义销售分析报表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SalesAnalysis_UserDefined.php', 15, '用户自定义销售分析');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SalesByTypePeriodInquiry.php', 2, '销售报表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SalesCategories.php', 15, '商品分类');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SalesCategoryPeriodInquiry.php', 2, '销售分类报告');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SalesGLPostings.php', 10, '销售收入科目配置');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SalesGraph.php', 1, '销售报告图');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SalesInquiry.php', 2, '销售查询发（导出csv）');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SalesPeople.php', 15, '销售员(负责人）设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SalesTopItemsInquiry.php', 2, ' 热销商品查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SalesTypes.php', 15, '销售方式 / 价格表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SecurityTokens.php', 15, '安全令牌设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SelectAsset.php', 16, '选择资产、档案');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SelectCompletedOrder.php', 1, '搜寻所有销售订单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SelectContract.php', 15, '选择合同');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SelectCreditItems.php', 21, '新建红字发票');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SelectCustomer.php', 2, '选择客户');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SelectGLAccount.php', 8, '选择会计科目');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SelectOrderItems.php', 1, '输入销售订单，报价单行');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SelectProduct.php', 1, '选择查询物料商品');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SelectRecurringSalesOrder.php', 15, '查找循环销售订单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SelectSalesOrder.php', 2, '搜索未完成销售订单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SelectSupplier.php', 4, '选择供应商');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SelectWorkOrder.php', 1, '工单查找选择');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ShipmentCosting.php', 5, '运费');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Shipments.php', 5, '建运单、修改');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Shippers.php', 15, '承运人设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ShiptsList.php', 15, '运输过程查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Shipt_Select.php', 5, '查找运单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SMTPServer.php', 15, 'SMTP服务器细节设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SpecialOrder.php', 15, '输入特殊订单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockAdjustments.php', 21, '存货调整');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockAdjustmentsControlled.php', 10, '调整受控物料');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockCategories.php', 15, '物料组设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockCheck.php', 15, '存货检查表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockCostUpdate.php', 15, '存货成本更新');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockCounts.php', 15, '输入盘点表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockDispatch.php', 15, '存货水平调节内调发货');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockLocMovements.php', 2, '按仓库的全部物料转移查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockLocStatus.php', 2, '地点/类别的全部存货状况');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockLocTransfer.php', 18, '调拨发货');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockLocTransferReceive.php', 18, '调拨接收');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockMovements.php', 18, '存货台账查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockQties_csv.php', 15, '存货数量CSV文件');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockQuantityByDate.php', 2, '历史库存查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockReorderLevel.php', 15, '物料再订货点');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Stocks.php', 3, '物料设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockSerialItemResearch.php', 3, '序列号查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockSerialItems.php', 15, '受控物料的存货');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockStatus.php', 2, '存货状况');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockTransferControlled.php', 15, '移动受控物料');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockTransfers.php', 15, '物料移动（一步到位）');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockUsage.php', 2, '存货用量');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockUsageGraph.php', 2, '存货用量走势图表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SuppContractChgs.php', 15, '合同费用或者付费');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SuppCreditGRNs.php', 5, '供应商红字发票');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SuppFixedAssetChgs.php', 5, '固定资产费用或冲销');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SuppInvGRNs.php', 5, '按收货单输入供应商发票');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SupplierAllocations.php', 3, '供应商付款/红字发票清算');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SupplierBalsAtPeriodEnd.php', 5, '期末的供应商（应付）余额报表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SupplierContacts.php', 4, '供应商联系人');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SupplierCredit.php', 3, '供应商红字发票');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SupplierInquiry.php', 4, '供应商交易查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SupplierInvoice.php', 5, '输入供应商发票');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SupplierPriceList.php', 4, '供应商供货信息');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Suppliers.php', 3, '供应商设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SupplierTenderCreate.php', 15, '创建新供应商投标申请');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SupplierTenders.php', 15, '供应商投标');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SupplierTransInquiry.php', 2, '供应商交易统计报告');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SupplierTypes.php', 15, '供应商类型设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SuppLoginSetup.php', 15, '供应商登录配置');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SuppPaymentRun.php', 15, '批量执行付款（！小心使用）');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SuppPriceList.php', 2, '供应商价格表');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SuppShiptChgs.php', 5, '输入运费发票');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SuppTransGLAnalysis.php', 5, '输入费用发票');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SystemCheck.php', 10, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SystemParameters.php', 15, '系统设置');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Tax.php', 2, '税报告PDF打印');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('TaxAuthorities.php', 15, '税收管辖部门设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('TaxAuthorityRates.php', 15, '税率设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('TaxCategories.php', 15, '税目维护');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('TaxGroups.php', 15, '税收组设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('TaxProvinces.php', 15, '纳税区域设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('TopItems.php', 2, '销售排行榜查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('UnitsOfMeasure.php', 15, '计量单位设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('UpgradeDatabase.php', 15, '升级ERP到数据库');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('UserSettings.php', 1, '用户个人设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('WhereUsedInquiry.php', 15, '物料用途查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('WorkCentres.php', 15, '工作中心设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('WorkOrderCosting.php', 10, '成本查看发料凭证查看');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('WorkOrderEntry.php', 19, '工单输入修改');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('WorkOrderIssue.php', 17, '生产发料、打印投料单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('WorkOrderIssue2.php', 15, '控制物料发放、打印投料单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('WorkOrderIssue_pdf.php', 18, '生产投料单打印');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('WorkOrderReceive.php', 17, '产成品入库、打印入库单');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('WorkOrderStatus.php', 19, '工单状态查询');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('WOSerialNos.php', 15, '处理中的工作单批次');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('WWW_Access.php', 15, '职位设定');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('WWW_Users.php', 15, '用户管理');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_BottomUpCosts.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ChangeBranchCode.php', 15, '更改所有表的客户分公司编号');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ChangeCustomerCode.php', 15, '更改所有表的客户编码');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ChangeLocationCode.php', 15, '更改仓库编码');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ChangeStockCategory.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ChangeStockCode.php', 15, '更改存货编码');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ChangeSupplierCode.php', 15, '更改所有表的客户编码');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_CheckAllocationsFrom.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_CheckAllocs.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_CheckDebtorsControl.php', 15, '债务人统制整合');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_CheckGLTransBalance.php', 15, '检查期间销售账控制账目');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_CreateChartDetails.php', 15, '产生明细资料记录');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_CreateCompany.php', 15, '设定新的空白公司记录');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_CreateCompanyTemplateFile.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_CurrencyDebtorsBalances.php', 15, '货币借方结余');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_CurrencySuppliersBalances.php', 15, '供应商结余, 按货币总结');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_DataExport.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_DeleteCreditNote.php', 15, '删除红字发票');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_DeleteInvoice.php', 15, '删除发票');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_DeleteOldPrices.php', 15, '删除所有旧价格');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_DeleteSalesTransActions.php', 15, '删除销售交易');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_DescribeTable.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ImportChartOfAccounts.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ImportFixedAssets.php', 15, '导入固定资产');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ImportGLAccountGroups.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ImportGLAccountSections.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ImportPartCodes.php', 15, '导入库存物料');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ImportStocks.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_index.php', 15, 'Utility menu page');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_MakeNewCompany.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_MakeStockLocns.php', 15, '制作地点存货记录');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_poAddLanguage.php', 15, '新语言');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_poAdmin.php', 15, ' 用于维护语言文件');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_poEditLangHeader.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_poEditLangModule.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_poEditLangRemaining.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_poRebuildDefault.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_PriceChanges.php', 15, '目前不存在了');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ReApplyCostToSA.php', 15, '更新销售成本分析');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_RePostGLFromPeriod.php', 15, '重计明细表的总账结余');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ReverseSuppPaymentRun.php', 15, '撤销和删除供应商付款');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_SalesIntegrityCheck.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_UpdateChartDetailsBFwd.php', 15, '重新转结科目余额');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_Upgrade3.10.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_Upgrade_3.01-3.02.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_Upgrade_3.04-3.05.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_Upgrade_3.05-3.06.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_Upgrade_3.07-3.08.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_Upgrade_3.08-3.09.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_Upgrade_3.09-3.10.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_Upgrade_3.10-3.11.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_Upgrade_3.11-4.00.php', 15, '');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_UploadForm.php', 15, '档案上传');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_UploadResult.php', 15, '档案上传报告');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z-GLAccountsInit.php', 15, 'CNCERP总账余额初始化');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('BankAccountUsers.php', 15, '银行账户授权');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CounterReturns.php', 5, 'Allows credits and refunds from the default Counter Sale account for an inventory location');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('CustomerPurchases.php', 5, 'Shows the purchases a customer has made.');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('GoodsReceivedNotInvoiced.php', 2, 'Shows the list of goods received but not yet invoiced, both in supplier currency and home currency. Total in home curency should match the GL Account for Goods received not invoiced. Any discrepancy is due to multicurrency errors.');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ImportBankTrans.php', 11, 'Imports bank transactions');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ImportBankTransAnalysis.php', 11, 'Allows analysis of bank transactions being imported');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('InventoryPlanningPrefSupplier_CSV.php', 2, 'Inventory planning spreadsheet');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MailingGroupMaintenance.php', 15, 'Mainting mailing lists for items to mail');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MailSalesReport_csv.php', 15, 'Mailing the sales report');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MaintenanceReminders.php', 1, 'Sends email reminders for scheduled asset maintenance tasks');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MaintenanceTasks.php', 1, 'Allows set up and edit of scheduled maintenance tasks');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MaintenanceUserSchedule.php', 1, 'List users or managers scheduled maintenance tasks and allow to be flagged as completed');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Manufacturers.php', 15, 'Maintain brands of sales products');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('MaterialsNotUsed.php', 4, 'Lists the items from Raw Material Categories not used in any BOM (thus, not used at all)');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('OrderEntryDiscountPricing', 13, 'Not a script but an authority level marker - required if the user is allowed to enter discounts and special pricing against a customer order');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PDFSellThroughSupportClaim.php', 9, 'Reports the sell through support claims to be made against all suppliers for a given date range.');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('PurchaseByPrefSupplier.php', 2, 'Purchase ordering by preferred supplier');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SalesCategoryDescriptions.php', 15, 'Maintain translations for sales categories');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('SellThroughSupport.php', 9, 'Defines the items, period and quantum of support for which supplier has agreed to provide.');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('ShopParameters.php', 15, 'Maintain web-store configuration and set up');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('StockClone.php', 11, 'Script to copy a stock item and associated properties, image, price, purchase and cost data');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ChangeGLAccountCode.php', 15, 'Script to change a GL account code accross all tables necessary');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ImportGLTransactions.php', 15, 'Import General Ledger Transactions');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ImportPriceList.php', 15, 'Loads a new price list from a csv file');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_ItemsWithoutPicture.php', 15, 'Shows the list of curent items without picture in webERP');
INSERT INTO `scripts` (`script`, `pagesecurity`, `description`) VALUES('Z_UpdateSalesAnalysisWithLatestCustomerData.php', 15, 'Updates the salesanalysis table with the latest data from the customer debtorsmaster salestype and custbranch sales area and sales person irrespective of the sales type, area, salesperson at the time when the sale was made');

CREATE TABLE IF NOT EXISTS `securitygroups` (
  `secroleid` int(11) NOT NULL DEFAULT '0',
  `tokenid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`secroleid`,`tokenid`),
  KEY `secroleid` (`secroleid`),
  KEY `tokenid` (`tokenid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(1, 0);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(1, 1);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(1, 2);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(1, 13);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(1, 20);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(1, 21);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(2, 0);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(2, 1);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(2, 19);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(3, 0);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(3, 1);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(3, 2);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(3, 4);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(3, 12);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(3, 22);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(4, 0);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(4, 1);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(4, 2);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(4, 3);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(4, 7);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(4, 8);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(4, 11);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(4, 13);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(4, 18);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(4, 20);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(4, 21);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(4, 23);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(5, 0);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(5, 1);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(5, 2);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(5, 4);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(5, 9);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(5, 11);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(5, 17);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(5, 18);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(5, 19);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 0);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 1);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 2);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 3);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 4);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 5);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 6);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 7);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 8);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 9);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 10);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 11);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 12);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 13);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 14);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 18);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 19);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 20);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 21);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 22);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 23);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(6, 24);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(7, 0);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(7, 1);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 0);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 1);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 2);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 3);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 4);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 5);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 6);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 7);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 8);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 9);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 10);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 11);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 12);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 13);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 14);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 15);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 16);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 17);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 18);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 19);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 20);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 21);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 22);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 23);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(8, 24);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(9, 0);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(9, 9);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 0);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 1);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 2);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 3);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 4);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 5);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 7);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 8);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 11);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 12);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 13);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 17);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 18);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 20);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 21);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 22);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(10, 23);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(11, 0);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(11, 1);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(11, 16);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(12, 0);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(12, 1);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(12, 2);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(12, 4);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(12, 5);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(12, 6);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(12, 8);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(12, 9);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(12, 13);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(12, 18);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(12, 21);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 0);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 1);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 2);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 3);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 4);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 5);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 6);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 7);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 8);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 9);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 10);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 11);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 12);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 13);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 14);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 16);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 17);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 18);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 19);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 20);
INSERT INTO `securitygroups` (`secroleid`, `tokenid`) VALUES(13, 21);

CREATE TABLE IF NOT EXISTS `securityroles` (
  `secroleid` int(11) NOT NULL AUTO_INCREMENT,
  `secrolename` text NOT NULL,
  PRIMARY KEY (`secroleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

INSERT INTO `securityroles` (`secroleid`, `secrolename`) VALUES(1, '销售负责人');
INSERT INTO `securityroles` (`secroleid`, `secrolename`) VALUES(2, '生产主管');
INSERT INTO `securityroles` (`secroleid`, `secrolename`) VALUES(3, '采购主任');
INSERT INTO `securityroles` (`secroleid`, `secrolename`) VALUES(4, '分公司出纳');
INSERT INTO `securityroles` (`secroleid`, `secrolename`) VALUES(5, '化验检验');
INSERT INTO `securityroles` (`secroleid`, `secrolename`) VALUES(6, '财务经理');
INSERT INTO `securityroles` (`secroleid`, `secrolename`) VALUES(7, '客户登录');
INSERT INTO `securityroles` (`secroleid`, `secrolename`) VALUES(8, '系统管理');
INSERT INTO `securityroles` (`secroleid`, `secrolename`) VALUES(9, '供方登陆');
INSERT INTO `securityroles` (`secroleid`, `secrolename`) VALUES(10, '财务出纳');
INSERT INTO `securityroles` (`secroleid`, `secrolename`) VALUES(11, '办公文员');
INSERT INTO `securityroles` (`secroleid`, `secrolename`) VALUES(12, '财务会计');
INSERT INTO `securityroles` (`secroleid`, `secrolename`) VALUES(13, '测试所有除管理');

CREATE TABLE IF NOT EXISTS `securitytokens` (
  `tokenid` int(11) NOT NULL DEFAULT '0',
  `tokenname` text NOT NULL,
  PRIMARY KEY (`tokenid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(0, '主菜单');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(1, '订单录入查询客户访问');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(2, '基本报表和选择选项查询');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(3, '出纳');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(4, '采购数据/采购订单录入/再订购水平');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(5, '财务会计副职');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(6, '费用申请');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(7, '银行对帐');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(8, '总帐报表/查询');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(9, '供应商中心 - 供应商访问');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(10, '财务总监');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(11, '库存管理和定价');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(12, '价格管理');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(13, '价格');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(14, 'Unknown');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(15, '用户管理和系统管理');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(16, '综合办公负责');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(17, '化验');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(18, '仓库');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(19, '生产');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(20, '销售');
INSERT INTO `securitytokens` (`tokenid`, `tokenname`) VALUES(21, '红字发票');

CREATE TABLE IF NOT EXISTS `sellthroughsupport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplierno` varchar(10) NOT NULL,
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `categoryid` char(6) NOT NULL DEFAULT '',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `narrative` varchar(20) NOT NULL DEFAULT '',
  `rebatepercent` double NOT NULL DEFAULT '0',
  `rebateamount` double NOT NULL DEFAULT '0',
  `effectivefrom` date NOT NULL,
  `effectiveto` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `supplierno` (`supplierno`),
  KEY `debtorno` (`debtorno`),
  KEY `effectivefrom` (`effectivefrom`),
  KEY `effectiveto` (`effectiveto`),
  KEY `stockid` (`stockid`),
  KEY `categoryid` (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `shipmentcharges` (
  `shiptchgid` int(11) NOT NULL AUTO_INCREMENT,
  `shiptref` int(11) NOT NULL DEFAULT '0',
  `transtype` smallint(6) NOT NULL DEFAULT '0',
  `transno` int(11) NOT NULL DEFAULT '0',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `value` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`shiptchgid`),
  KEY `TransType` (`transtype`,`transno`),
  KEY `ShiptRef` (`shiptref`),
  KEY `StockID` (`stockid`),
  KEY `TransType_2` (`transtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `shipments` (
  `shiptref` int(11) NOT NULL DEFAULT '0',
  `voyageref` varchar(20) NOT NULL DEFAULT '0',
  `vessel` varchar(50) NOT NULL DEFAULT '',
  `eta` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `accumvalue` double NOT NULL DEFAULT '0',
  `supplierid` varchar(10) NOT NULL DEFAULT '',
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shiptref`),
  KEY `ETA` (`eta`),
  KEY `SupplierID` (`supplierid`),
  KEY `ShipperRef` (`voyageref`),
  KEY `Vessel` (`vessel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `shippers` (
  `shipper_id` int(11) NOT NULL AUTO_INCREMENT,
  `shippername` char(40) NOT NULL DEFAULT '',
  `mincharge` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipper_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

INSERT INTO `shippers` (`shipper_id`, `shippername`, `mincharge`) VALUES(1, '菜鸟物流', 0);

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
  `defaulttaxcatid` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`categoryid`),
  KEY `CategoryDescription` (`categorydescription`),
  KEY `StockType` (`stocktype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `stockcategory` (`categoryid`, `categorydescription`, `stocktype`, `stockact`, `adjglact`, `issueglact`, `purchpricevaract`, `materialuseagevarac`, `wipact`, `defaulttaxcatid`) VALUES('01', '产成品', 'F', '1405', '6701', '6701', '6702', '6702', '1406', 1);
INSERT INTO `stockcategory` (`categoryid`, `categorydescription`, `stocktype`, `stockact`, `adjglact`, `issueglact`, `purchpricevaract`, `materialuseagevarac`, `wipact`, `defaulttaxcatid`) VALUES('02', '原料', 'F', '1403', '6701', '6701', '6702', '6702', '1406', 1);
INSERT INTO `stockcategory` (`categoryid`, `categorydescription`, `stocktype`, `stockact`, `adjglact`, `issueglact`, `purchpricevaract`, `materialuseagevarac`, `wipact`, `defaulttaxcatid`) VALUES('03', '包装物', 'F', '1403', '6701', '6701', '6702', '6702', '1406', 1);
INSERT INTO `stockcategory` (`categoryid`, `categorydescription`, `stocktype`, `stockact`, `adjglact`, `issueglact`, `purchpricevaract`, `materialuseagevarac`, `wipact`, `defaulttaxcatid`) VALUES('04', '贩卖品', 'F', '1405', '6701', '6701', '6702', '6702', '1405', 1);
INSERT INTO `stockcategory` (`categoryid`, `categorydescription`, `stocktype`, `stockact`, `adjglact`, `issueglact`, `purchpricevaract`, `materialuseagevarac`, `wipact`, `defaulttaxcatid`) VALUES('05', '虚拟物料', 'D', '1407', '6701', '6701', '6702', '6702', '1407', 1);
INSERT INTO `stockcategory` (`categoryid`, `categorydescription`, `stocktype`, `stockact`, `adjglact`, `issueglact`, `purchpricevaract`, `materialuseagevarac`, `wipact`, `defaulttaxcatid`) VALUES('06', '人工', 'L', '500102', '500102', '500102', '500102', '500102', '1406', 1);
INSERT INTO `stockcategory` (`categoryid`, `categorydescription`, `stocktype`, `stockact`, `adjglact`, `issueglact`, `purchpricevaract`, `materialuseagevarac`, `wipact`, `defaulttaxcatid`) VALUES('07', '制造费用', 'L', '500103', '500102', '500102', '500102', '500102', '1406', 1);

CREATE TABLE IF NOT EXISTS `stockcatproperties` (
  `stkcatpropid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` char(6) NOT NULL,
  `label` text NOT NULL,
  `controltype` tinyint(4) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(100) NOT NULL DEFAULT '''''',
  `maximumvalue` double NOT NULL DEFAULT '999999999',
  `reqatsalesorder` tinyint(4) NOT NULL DEFAULT '0',
  `minimumvalue` double NOT NULL DEFAULT '-999999999',
  `numericvalue` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stkcatpropid`),
  KEY `categoryid` (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `stockcheckfreeze` (
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `qoh` double NOT NULL DEFAULT '0',
  `stockcheckdate` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`stockid`,`loccode`),
  KEY `LocCode` (`loccode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `stockcounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `qtycounted` double NOT NULL DEFAULT '0',
  `reference` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `StockID` (`stockid`),
  KEY `LocCode` (`loccode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `stockdescriptiontranslations` (
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `language_id` varchar(10) NOT NULL DEFAULT 'en_GB.utf8',
  `descriptiontranslation` varchar(50) NOT NULL,
  PRIMARY KEY (`stockid`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `stockitemproperties` (
  `stockid` varchar(20) NOT NULL,
  `stkcatpropid` int(11) NOT NULL,
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (`stockid`,`stkcatpropid`),
  KEY `stockid` (`stockid`),
  KEY `value` (`value`),
  KEY `stkcatpropid` (`stkcatpropid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `stockmaster` (
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `categoryid` varchar(6) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL DEFAULT '',
  `longdescription` text NOT NULL,
  `units` varchar(20) NOT NULL DEFAULT 'each',
  `mbflag` char(1) NOT NULL DEFAULT 'B',
  `actualcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `lastcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `materialcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `labourcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `overheadcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `lowestlevel` smallint(6) NOT NULL DEFAULT '0',
  `discontinued` tinyint(4) NOT NULL DEFAULT '0',
  `controlled` tinyint(4) NOT NULL DEFAULT '0',
  `eoq` double NOT NULL DEFAULT '0',
  `volume` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `grossweight` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `barcode` varchar(50) NOT NULL DEFAULT '',
  `discountcategory` char(2) NOT NULL DEFAULT '',
  `taxcatid` tinyint(4) NOT NULL DEFAULT '1',
  `serialised` tinyint(4) NOT NULL DEFAULT '0',
  `appendfile` varchar(40) NOT NULL DEFAULT 'none',
  `perishable` tinyint(1) NOT NULL DEFAULT '0',
  `decimalplaces` tinyint(4) NOT NULL DEFAULT '0',
  `pansize` double NOT NULL DEFAULT '0',
  `shrinkfactor` double NOT NULL DEFAULT '0',
  `nextserialno` bigint(20) NOT NULL DEFAULT '0',
  `netweight` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `lastcostupdate` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`stockid`),
  KEY `CategoryID` (`categoryid`),
  KEY `Description` (`description`),
  KEY `MBflag` (`mbflag`),
  KEY `StockID` (`stockid`,`categoryid`),
  KEY `Controlled` (`controlled`),
  KEY `DiscountCategory` (`discountcategory`),
  KEY `taxcatid` (`taxcatid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `stockmaster` (`stockid`, `categoryid`, `description`, `longdescription`, `units`, `mbflag`, `actualcost`, `lastcost`, `materialcost`, `labourcost`, `overheadcost`, `lowestlevel`, `discontinued`, `controlled`, `eoq`, `volume`, `grossweight`, `barcode`, `discountcategory`, `taxcatid`, `serialised`, `appendfile`, `perishable`, `decimalplaces`, `pansize`, `shrinkfactor`, `nextserialno`, `netweight`, `lastcostupdate`) VALUES('3001', '04', '贩卖-摄像头', '贩卖-摄像头', '袋', 'B', '0.0000', '0.0000', '5.0000', '0.0000', '0.0000', 0, 0, 0, 500, '0.1000', '0.5000', '', '', 4, 0, 'none', 0, 0, 0, 0, 0, '0.0000', '2013-11-18');
INSERT INTO `stockmaster` (`stockid`, `categoryid`, `description`, `longdescription`, `units`, `mbflag`, `actualcost`, `lastcost`, `materialcost`, `labourcost`, `overheadcost`, `lowestlevel`, `discontinued`, `controlled`, `eoq`, `volume`, `grossweight`, `barcode`, `discountcategory`, `taxcatid`, `serialised`, `appendfile`, `perishable`, `decimalplaces`, `pansize`, `shrinkfactor`, `nextserialno`, `netweight`, `lastcostupdate`) VALUES('3002', '02', '闪存颗粒1G', '闪存颗粒1G', '个', 'B', '0.0000', '0.0000', '20.2000', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 4, 0, 'none', 0, 0, 0, 0, 0, '0.0000', '2013-11-18');
INSERT INTO `stockmaster` (`stockid`, `categoryid`, `description`, `longdescription`, `units`, `mbflag`, `actualcost`, `lastcost`, `materialcost`, `labourcost`, `overheadcost`, `lowestlevel`, `discontinued`, `controlled`, `eoq`, `volume`, `grossweight`, `barcode`, `discountcategory`, `taxcatid`, `serialised`, `appendfile`, `perishable`, `decimalplaces`, `pansize`, `shrinkfactor`, `nextserialno`, `netweight`, `lastcostupdate`) VALUES('3003', '02', 'U盘主控板', 'U盘主控板', '个', 'B', '0.0000', '0.0000', '3.0000', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 4, 0, 'none', 0, 0, 0, 0, 0, '0.0000', '2013-11-18');
INSERT INTO `stockmaster` (`stockid`, `categoryid`, `description`, `longdescription`, `units`, `mbflag`, `actualcost`, `lastcost`, `materialcost`, `labourcost`, `overheadcost`, `lowestlevel`, `discontinued`, `controlled`, `eoq`, `volume`, `grossweight`, `barcode`, `discountcategory`, `taxcatid`, `serialised`, `appendfile`, `perishable`, `decimalplaces`, `pansize`, `shrinkfactor`, `nextserialno`, `netweight`, `lastcostupdate`) VALUES('3004', '02', 'USB接头', 'USB接头', '个', 'B', '0.0000', '0.0000', '0.5000', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 4, 0, 'none', 0, 0, 0, 0, 0, '0.0000', '2013-11-18');
INSERT INTO `stockmaster` (`stockid`, `categoryid`, `description`, `longdescription`, `units`, `mbflag`, `actualcost`, `lastcost`, `materialcost`, `labourcost`, `overheadcost`, `lowestlevel`, `discontinued`, `controlled`, `eoq`, `volume`, `grossweight`, `barcode`, `discountcategory`, `taxcatid`, `serialised`, `appendfile`, `perishable`, `decimalplaces`, `pansize`, `shrinkfactor`, `nextserialno`, `netweight`, `lastcostupdate`) VALUES('3005', '02', '370U盘壳子', '370U盘壳子', '个', 'M', '0.0000', '0.7030', '0.7030', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 4, 0, 'none', 0, 0, 0, 0, 0, '0.0000', '2013-12-14');
INSERT INTO `stockmaster` (`stockid`, `categoryid`, `description`, `longdescription`, `units`, `mbflag`, `actualcost`, `lastcost`, `materialcost`, `labourcost`, `overheadcost`, `lowestlevel`, `discontinued`, `controlled`, `eoq`, `volume`, `grossweight`, `barcode`, `discountcategory`, `taxcatid`, `serialised`, `appendfile`, `perishable`, `decimalplaces`, `pansize`, `shrinkfactor`, `nextserialno`, `netweight`, `lastcostupdate`) VALUES('3006', '02', '树脂颗粒', '树脂颗粒', '克', 'B', '0.0000', '0.0000', '0.0100', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 4, 0, 'none', 0, 0, 0, 0, 0, '0.0000', '2013-11-18');
INSERT INTO `stockmaster` (`stockid`, `categoryid`, `description`, `longdescription`, `units`, `mbflag`, `actualcost`, `lastcost`, `materialcost`, `labourcost`, `overheadcost`, `lowestlevel`, `discontinued`, `controlled`, `eoq`, `volume`, `grossweight`, `barcode`, `discountcategory`, `taxcatid`, `serialised`, `appendfile`, `perishable`, `decimalplaces`, `pansize`, `shrinkfactor`, `nextserialno`, `netweight`, `lastcostupdate`) VALUES('3007', '01', '370 U盘 1G', '370 U盘 1G', '个', 'M', '0.0000', '25.4030', '25.4030', '0.0000', '0.0000', 0, 0, 0, 50, '0.0000', '0.0000', '', '', 4, 0, 'none', 0, 0, 0, 0, 0, '0.0000', '2013-12-14');
INSERT INTO `stockmaster` (`stockid`, `categoryid`, `description`, `longdescription`, `units`, `mbflag`, `actualcost`, `lastcost`, `materialcost`, `labourcost`, `overheadcost`, `lowestlevel`, `discontinued`, `controlled`, `eoq`, `volume`, `grossweight`, `barcode`, `discountcategory`, `taxcatid`, `serialised`, `appendfile`, `perishable`, `decimalplaces`, `pansize`, `shrinkfactor`, `nextserialno`, `netweight`, `lastcostupdate`) VALUES('3008', '01', '370 U盘 4G', '370 U盘 4G', '个', 'M', '0.0000', '85.0030', '85.0030', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 4, 0, 'none', 0, 0, 0, 0, 0, '0.0000', '2013-12-14');
INSERT INTO `stockmaster` (`stockid`, `categoryid`, `description`, `longdescription`, `units`, `mbflag`, `actualcost`, `lastcost`, `materialcost`, `labourcost`, `overheadcost`, `lowestlevel`, `discontinued`, `controlled`, `eoq`, `volume`, `grossweight`, `barcode`, `discountcategory`, `taxcatid`, `serialised`, `appendfile`, `perishable`, `decimalplaces`, `pansize`, `shrinkfactor`, `nextserialno`, `netweight`, `lastcostupdate`) VALUES('41899-001', '01', 'HP 146G 2.5 sas ', 'HP 146G 2.5 sas ', '个', 'B', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 0, 0, 1, 0, '0.0090', '0.4000', '', '', 4, 1, 'none', 0, 0, 0, 0, 0, '0.0000', '0000-00-00');
INSERT INTO `stockmaster` (`stockid`, `categoryid`, `description`, `longdescription`, `units`, `mbflag`, `actualcost`, `lastcost`, `materialcost`, `labourcost`, `overheadcost`, `lowestlevel`, `discontinued`, `controlled`, `eoq`, `volume`, `grossweight`, `barcode`, `discountcategory`, `taxcatid`, `serialised`, `appendfile`, `perishable`, `decimalplaces`, `pansize`, `shrinkfactor`, `nextserialno`, `netweight`, `lastcostupdate`) VALUES('6001', '06', '生产人工费', '生产人工费', '个', 'D', '0.0000', '0.0000', '1.0000', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 4, 0, 'none', 0, 0, 0, 0, 0, '0.0000', '2013-11-18');
INSERT INTO `stockmaster` (`stockid`, `categoryid`, `description`, `longdescription`, `units`, `mbflag`, `actualcost`, `lastcost`, `materialcost`, `labourcost`, `overheadcost`, `lowestlevel`, `discontinued`, `controlled`, `eoq`, `volume`, `grossweight`, `barcode`, `discountcategory`, `taxcatid`, `serialised`, `appendfile`, `perishable`, `decimalplaces`, `pansize`, `shrinkfactor`, `nextserialno`, `netweight`, `lastcostupdate`) VALUES('6002', '07', '制造费用', '制造费用', '个', 'D', '0.0000', '0.0000', '1.0000', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 4, 0, 'none', 0, 0, 0, 0, 0, '0.0000', '2013-11-18');
INSERT INTO `stockmaster` (`stockid`, `categoryid`, `description`, `longdescription`, `units`, `mbflag`, `actualcost`, `lastcost`, `materialcost`, `labourcost`, `overheadcost`, `lowestlevel`, `discontinued`, `controlled`, `eoq`, `volume`, `grossweight`, `barcode`, `discountcategory`, `taxcatid`, `serialised`, `appendfile`, `perishable`, `decimalplaces`, `pansize`, `shrinkfactor`, `nextserialno`, `netweight`, `lastcostupdate`) VALUES('CH0001', '07', '2', '22', '个', 'B', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 0, 0, 0, 9, '3.0000', '5.0000', '', '', 4, 0, 'none', 0, 0, 0, 0, 0, '0.0000', '0000-00-00');
INSERT INTO `stockmaster` (`stockid`, `categoryid`, `description`, `longdescription`, `units`, `mbflag`, `actualcost`, `lastcost`, `materialcost`, `labourcost`, `overheadcost`, `lowestlevel`, `discontinued`, `controlled`, `eoq`, `volume`, `grossweight`, `barcode`, `discountcategory`, `taxcatid`, `serialised`, `appendfile`, `perishable`, `decimalplaces`, `pansize`, `shrinkfactor`, `nextserialno`, `netweight`, `lastcostupdate`) VALUES('JY6120-7', '01', 'Orange', 'Orange', '个', 'B', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 0, 0, 1, 0, '0.0000', '0.0000', '', '', 4, 0, 'none', 0, 0, 0, 0, 0, '0.0000', '0000-00-00');

CREATE TABLE IF NOT EXISTS `stockmoves` (
  `stkmoveno` int(11) NOT NULL AUTO_INCREMENT,
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `transno` int(11) NOT NULL DEFAULT '0',
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `trandate` date NOT NULL DEFAULT '0000-00-00',
  `debtorno` varchar(10) NOT NULL DEFAULT '',
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `price` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `prd` smallint(6) NOT NULL DEFAULT '0',
  `reference` varchar(40) NOT NULL DEFAULT '',
  `qty` double NOT NULL DEFAULT '1',
  `discountpercent` double NOT NULL DEFAULT '0',
  `standardcost` double NOT NULL DEFAULT '0',
  `show_on_inv_crds` tinyint(4) NOT NULL DEFAULT '1',
  `newqoh` double NOT NULL DEFAULT '0',
  `hidemovt` tinyint(4) NOT NULL DEFAULT '0',
  `narrative` text,
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
  KEY `reference` (`reference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(49, '3007', 16, 2, 'SC002', '2013-12-14', '', '', '0.0000', 0, '到 总部商品仓库', -50, 0, 0, 1, 0, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(48, '3008', 26, 3, 'SC002', '2013-12-14', '1', '', '85.0030', 0, '2', 8, 0, 85.003, 1, 8, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(47, '3005', 28, 3, 'SC002', '2013-12-14', '3008', '1', '0.7030', 0, '2', -8, 0, 0.703, 1, -58, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(46, '3004', 28, 3, 'SC002', '2013-12-14', '3008', '1', '0.5000', 0, '2', -8, 0, 0.5, 1, -58, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(45, '3003', 28, 3, 'SC002', '2013-12-14', '3008', '1', '3.0000', 0, '2', -8, 0, 3, 1, -58, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(44, '3002', 28, 3, 'SC002', '2013-12-14', '3008', '1', '20.2000', 0, '2', -32, 0, 20.2, 1, -82, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(43, '3007', 26, 2, 'SC002', '2013-12-14', '1', '', '25.4030', 0, '2', 50, 0, 25.403, 1, 50, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(42, '6002', 28, 2, 'SC002', '2013-12-14', '3007', '1', '1.0000', 0, '2', -25, 0, 1, 1, 0, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(41, '6001', 28, 2, 'SC002', '2013-12-14', '3007', '1', '1.0000', 0, '2', -25, 0, 1, 1, 0, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(40, '3005', 28, 2, 'SC002', '2013-12-14', '3007', '1', '0.7030', 0, '2', -50, 0, 0.703, 1, -50, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(39, '3004', 28, 2, 'SC002', '2013-12-14', '3007', '1', '0.5000', 0, '2', -50, 0, 0.5, 1, -50, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(38, '3003', 28, 2, 'SC002', '2013-12-14', '3007', '1', '3.0000', 0, '2', -50, 0, 3, 1, -50, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(37, '3002', 28, 2, 'SC002', '2013-12-14', '3007', '1', '20.2000', 0, '2', -50, 0, 20.2, 1, -50, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(36, '3005', 26, 1, 'CK001', '2013-12-14', '1', '', '0.5030', 0, '1', 35, 0, 0.503, 1, 35, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(35, '6002', 28, 1, 'SC002', '2013-12-14', '3005', '1', '1.0000', 0, '1', -7, 0, 1, 1, 0, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(34, '6001', 28, 1, 'SC002', '2013-12-14', '3005', '1', '1.0000', 0, '1', -10.5, 0, 1, 1, 0, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(33, '3006', 28, 1, 'SC002', '2013-12-14', '3005', '1', '0.0100', 0, '1', -10.5, 0, 0.01, 1, -10.5, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(32, '3006', 25, 1, 'CK001', '2013-12-14', '', '', '8.0000', 0, '3001 (长城公司) - 1', 300, 0, 0.01, 1, 300, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(31, '3002', 25, 1, 'CK001', '2013-12-14', '', '', '14.0000', 0, '3001 (长城公司) - 1', 5, 0, 20.2, 1, 5, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(30, '3001', 25, 1, 'CK001', '2013-12-14', '', '', '25.0000', 0, '3001 (长城公司) - 1', 100, 0, 5, 1, 100, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(50, '3007', 16, 2, 'CK001', '2013-12-14', '', '', '0.0000', 0, '从 车间仓库', 50, 0, 0, 1, 50, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(51, '3008', 16, 2, 'SC002', '2013-12-14', '', '', '0.0000', 0, '到 总部商品仓库', -8, 0, 0, 1, 0, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(52, '3008', 16, 2, 'CK001', '2013-12-14', '', '', '0.0000', 0, '从 车间仓库', 8, 0, 0, 1, 8, 0, NULL);
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(53, '3001', 10, 1, 'CK001', '2013-12-14', '1001', '1001', '68.0000', 0, '1', -2, 0, 5, 1, 98, 0, '');
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(54, '3007', 10, 1, 'CK001', '2013-12-14', '1001', '1001', '99.0000', 0, '1', -5, 0, 25.403, 1, 45, 0, '');
INSERT INTO `stockmoves` (`stkmoveno`, `stockid`, `type`, `transno`, `loccode`, `trandate`, `debtorno`, `branchcode`, `price`, `prd`, `reference`, `qty`, `discountpercent`, `standardcost`, `show_on_inv_crds`, `newqoh`, `hidemovt`, `narrative`) VALUES(55, '3008', 10, 1, 'CK001', '2013-12-14', '1001', '1001', '198.0000', 0, '1', -1, 0, 85.003, 1, 7, 0, '');

CREATE TABLE IF NOT EXISTS `stockmovestaxes` (
  `stkmoveno` int(11) NOT NULL DEFAULT '0',
  `taxauthid` tinyint(4) NOT NULL DEFAULT '0',
  `taxrate` double NOT NULL DEFAULT '0',
  `taxontax` tinyint(4) NOT NULL DEFAULT '0',
  `taxcalculationorder` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stkmoveno`,`taxauthid`),
  KEY `taxauthid` (`taxauthid`),
  KEY `calculationorder` (`taxcalculationorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `stockmovestaxes` (`stkmoveno`, `taxauthid`, `taxrate`, `taxontax`, `taxcalculationorder`) VALUES(55, 14, 0.17, 0, 0);
INSERT INTO `stockmovestaxes` (`stkmoveno`, `taxauthid`, `taxrate`, `taxontax`, `taxcalculationorder`) VALUES(54, 14, 0.17, 0, 0);
INSERT INTO `stockmovestaxes` (`stkmoveno`, `taxauthid`, `taxrate`, `taxontax`, `taxcalculationorder`) VALUES(53, 14, 0.17, 0, 0);

CREATE TABLE IF NOT EXISTS `stockrequest` (
  `dispatchid` int(11) NOT NULL AUTO_INCREMENT,
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `departmentid` int(11) NOT NULL DEFAULT '0',
  `despatchdate` date NOT NULL DEFAULT '0000-00-00',
  `authorised` tinyint(4) NOT NULL DEFAULT '0',
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  `narrative` text NOT NULL,
  PRIMARY KEY (`dispatchid`),
  KEY `loccode` (`loccode`),
  KEY `departmentid` (`departmentid`),
  KEY `loccode_2` (`loccode`),
  KEY `departmentid_2` (`departmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `stockrequestitems` (
  `dispatchitemsid` int(11) NOT NULL DEFAULT '0',
  `dispatchid` int(11) NOT NULL DEFAULT '0',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT '0',
  `qtydelivered` double NOT NULL DEFAULT '0',
  `decimalplaces` int(11) NOT NULL DEFAULT '0',
  `uom` varchar(20) NOT NULL DEFAULT '',
  `completed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dispatchitemsid`,`dispatchid`),
  KEY `dispatchid` (`dispatchid`),
  KEY `stockid` (`stockid`),
  KEY `dispatchid_2` (`dispatchid`),
  KEY `stockid_2` (`stockid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `stockserialitems` (
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `serialno` varchar(30) NOT NULL DEFAULT '',
  `expirationdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `quantity` double NOT NULL DEFAULT '0',
  `qualitytext` text NOT NULL,
  PRIMARY KEY (`stockid`,`serialno`,`loccode`),
  KEY `StockID` (`stockid`),
  KEY `LocCode` (`loccode`),
  KEY `serialno` (`serialno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `stockserialmoves` (
  `stkitmmoveno` int(11) NOT NULL AUTO_INCREMENT,
  `stockmoveno` int(11) NOT NULL DEFAULT '0',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `serialno` varchar(30) NOT NULL DEFAULT '',
  `moveqty` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`stkitmmoveno`),
  KEY `StockMoveNo` (`stockmoveno`),
  KEY `StockID_SN` (`stockid`,`serialno`),
  KEY `serialno` (`serialno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `suppallocs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amt` double NOT NULL DEFAULT '0',
  `datealloc` date NOT NULL DEFAULT '0000-00-00',
  `transid_allocfrom` int(11) NOT NULL DEFAULT '0',
  `transid_allocto` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `TransID_AllocFrom` (`transid_allocfrom`),
  KEY `TransID_AllocTo` (`transid_allocto`),
  KEY `DateAlloc` (`datealloc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `suppliercontacts` (
  `supplierid` varchar(10) NOT NULL DEFAULT '',
  `contact` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(30) NOT NULL DEFAULT '',
  `tel` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `mobile` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(55) NOT NULL DEFAULT '',
  `ordercontact` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`supplierid`,`contact`),
  KEY `Contact` (`contact`),
  KEY `SupplierID` (`supplierid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `suppliers` (
  `supplierid` varchar(10) NOT NULL DEFAULT '',
  `suppname` varchar(40) NOT NULL DEFAULT '',
  `address1` varchar(40) NOT NULL DEFAULT '',
  `address2` varchar(40) NOT NULL DEFAULT '',
  `address3` varchar(40) NOT NULL DEFAULT '',
  `address4` varchar(50) NOT NULL DEFAULT '',
  `address5` varchar(20) NOT NULL DEFAULT '',
  `address6` varchar(40) NOT NULL DEFAULT '',
  `supptype` tinyint(4) NOT NULL DEFAULT '1',
  `lat` float(10,6) NOT NULL DEFAULT '0.000000',
  `lng` float(10,6) NOT NULL DEFAULT '0.000000',
  `currcode` char(3) NOT NULL DEFAULT '',
  `suppliersince` date NOT NULL DEFAULT '0000-00-00',
  `paymentterms` char(2) NOT NULL DEFAULT '',
  `lastpaid` double NOT NULL DEFAULT '0',
  `lastpaiddate` datetime DEFAULT NULL,
  `bankact` varchar(30) NOT NULL DEFAULT '',
  `bankref` varchar(12) NOT NULL DEFAULT '',
  `bankpartics` varchar(12) NOT NULL DEFAULT '',
  `remittance` tinyint(4) NOT NULL DEFAULT '1',
  `taxgroupid` tinyint(4) NOT NULL DEFAULT '1',
  `factorcompanyid` int(11) NOT NULL DEFAULT '1',
  `taxref` varchar(20) NOT NULL DEFAULT '',
  `phn` varchar(50) NOT NULL DEFAULT '',
  `port` varchar(200) NOT NULL DEFAULT '',
  `email` varchar(55) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `telephone` varchar(25) DEFAULT NULL,
  `url` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`supplierid`),
  KEY `CurrCode` (`currcode`),
  KEY `PaymentTerms` (`paymentterms`),
  KEY `SuppName` (`suppname`),
  KEY `taxgroupid` (`taxgroupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `suppliers` (`supplierid`, `suppname`, `address1`, `address2`, `address3`, `address4`, `address5`, `address6`, `supptype`, `lat`, `lng`, `currcode`, `suppliersince`, `paymentterms`, `lastpaid`, `lastpaiddate`, `bankact`, `bankref`, `bankpartics`, `remittance`, `taxgroupid`, `factorcompanyid`, `taxref`, `phn`, `port`, `email`, `fax`, `telephone`, `url`) VALUES('3001', '长城公司', '八达岭', '2号', '', '', '', '中国', 1, 0.000000, 0.000000, 'CNY', '2013-12-14', '20', 0, NULL, '', '0', '', 0, 2, 0, '', '', '', '', '', '', '');

CREATE TABLE IF NOT EXISTS `suppliertype` (
  `typeid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `typename` varchar(100) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

INSERT INTO `suppliertype` (`typeid`, `typename`) VALUES(1, '长期');
INSERT INTO `suppliertype` (`typeid`, `typename`) VALUES(2, '短期');
INSERT INTO `suppliertype` (`typeid`, `typename`) VALUES(3, '专供');

CREATE TABLE IF NOT EXISTS `supptrans` (
  `transno` int(11) NOT NULL DEFAULT '0',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `supplierno` varchar(10) NOT NULL DEFAULT '',
  `suppreference` varchar(20) NOT NULL DEFAULT '',
  `trandate` date NOT NULL DEFAULT '0000-00-00',
  `duedate` date NOT NULL DEFAULT '0000-00-00',
  `inputdate` datetime NOT NULL,
  `settled` tinyint(4) NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '1',
  `ovamount` double NOT NULL DEFAULT '0',
  `ovgst` double NOT NULL DEFAULT '0',
  `diffonexch` double NOT NULL DEFAULT '0',
  `alloc` double NOT NULL DEFAULT '0',
  `transtext` text,
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `TypeTransNo` (`transno`,`type`),
  KEY `DueDate` (`duedate`),
  KEY `Hold` (`hold`),
  KEY `SupplierNo` (`supplierno`),
  KEY `Settled` (`settled`),
  KEY `SupplierNo_2` (`supplierno`,`suppreference`),
  KEY `SuppReference` (`suppreference`),
  KEY `TranDate` (`trandate`),
  KEY `TransNo` (`transno`),
  KEY `Type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=235 ;

CREATE TABLE IF NOT EXISTS `supptranstaxes` (
  `supptransid` int(11) NOT NULL DEFAULT '0',
  `taxauthid` tinyint(4) NOT NULL DEFAULT '0',
  `taxamount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`supptransid`,`taxauthid`),
  KEY `taxauthid` (`taxauthid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `systypes` (
  `typeid` smallint(6) NOT NULL DEFAULT '0',
  `typename` char(50) NOT NULL DEFAULT '',
  `typeno` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`typeid`),
  KEY `TypeNo` (`typeno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(0, '转账凭证', 1);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(1, '总账付款', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(2, '总账收款', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(3, 'Standing Journal', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(10, '销售发票', 1);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(11, '红字发票', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(12, '收款收据', 2);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(15, '其它应收', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(16, '物料调拨', 2);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(17, '盘点调整', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(18, '采购订单', 1);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(19, '领料单', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(20, '采购发票', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(21, '供应商红字发票', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(22, '偿还债务', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(23, '应付账款', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(25, '收货暂估', 1);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(26, '生产入库', 3);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(28, '工单发料', 3);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(29, '工单差异', 2);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(30, '销售定单', 1);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(31, '运费', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(32, '合同费', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(35, '成本更新', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(36, '汇兑差额', 1);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(37, '招、投标', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(38, '易耗品申请单', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(40, '工作单', 2);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(41, '资产加入', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(42, '资产变更', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(43, '资产报废', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(44, '折旧', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(49, '增加资产', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(50, '期初结余', 0);
INSERT INTO `systypes` (`typeid`, `typename`, `typeno`) VALUES(500, '客户编号', 0);

CREATE TABLE IF NOT EXISTS `tags` (
  `tagref` tinyint(4) NOT NULL AUTO_INCREMENT,
  `tagdescription` varchar(50) NOT NULL,
  PRIMARY KEY (`tagref`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  KEY `PurchTaxGLAccount` (`purchtaxglaccount`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

INSERT INTO `taxauthorities` (`taxid`, `description`, `taxglcode`, `purchtaxglaccount`, `bank`, `bankacctype`, `bankacc`, `bankswift`) VALUES(14, '增值税', '22212', '22211', '', '', '', '');
INSERT INTO `taxauthorities` (`taxid`, `description`, `taxglcode`, `purchtaxglaccount`, `bank`, `bankacctype`, `bankacc`, `bankswift`) VALUES(15, '特殊免税', '2221', '2221', '', '', '', '');
INSERT INTO `taxauthorities` (`taxid`, `description`, `taxglcode`, `purchtaxglaccount`, `bank`, `bankacctype`, `bankacc`, `bankswift`) VALUES(16, '普税%3', '22213', '22213', '', '', '', '');

CREATE TABLE IF NOT EXISTS `taxauthrates` (
  `taxauthority` tinyint(4) NOT NULL DEFAULT '1',
  `dispatchtaxprovince` tinyint(4) NOT NULL DEFAULT '1',
  `taxcatid` tinyint(4) NOT NULL DEFAULT '0',
  `taxrate` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`taxauthority`,`dispatchtaxprovince`,`taxcatid`),
  KEY `TaxAuthority` (`taxauthority`),
  KEY `dispatchtaxprovince` (`dispatchtaxprovince`),
  KEY `taxcatid` (`taxcatid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(14, 1, 1, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(14, 1, 2, 0.17);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(14, 1, 4, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(14, 1, 6, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(15, 1, 1, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(15, 1, 2, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(15, 1, 4, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(15, 1, 6, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(16, 1, 1, 0.03);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(16, 1, 2, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(16, 1, 4, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(16, 1, 6, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(14, 2, 1, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(15, 2, 1, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(16, 2, 1, 0.05);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(14, 2, 2, 0.13);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(15, 2, 2, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(16, 2, 2, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(14, 2, 4, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(15, 2, 4, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(16, 2, 4, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(14, 2, 6, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(15, 2, 6, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(16, 2, 6, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(14, 1, 7, 0.01);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(14, 2, 7, 0.02);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(15, 1, 7, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(15, 2, 7, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(16, 1, 7, 0);
INSERT INTO `taxauthrates` (`taxauthority`, `dispatchtaxprovince`, `taxcatid`, `taxrate`) VALUES(16, 2, 7, 0);

CREATE TABLE IF NOT EXISTS `taxcategories` (
  `taxcatid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `taxcatname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`taxcatid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

INSERT INTO `taxcategories` (`taxcatid`, `taxcatname`) VALUES(1, '普税');
INSERT INTO `taxcategories` (`taxcatid`, `taxcatname`) VALUES(2, '增值税');
INSERT INTO `taxcategories` (`taxcatid`, `taxcatname`) VALUES(4, '免税');
INSERT INTO `taxcategories` (`taxcatid`, `taxcatname`) VALUES(6, 'Freight');
INSERT INTO `taxcategories` (`taxcatid`, `taxcatname`) VALUES(7, '所得税');

CREATE TABLE IF NOT EXISTS `taxgroups` (
  `taxgroupid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `taxgroupdescription` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`taxgroupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

INSERT INTO `taxgroups` (`taxgroupid`, `taxgroupdescription`) VALUES(1, '普通税种');
INSERT INTO `taxgroups` (`taxgroupid`, `taxgroupdescription`) VALUES(2, '增值税种');
INSERT INTO `taxgroups` (`taxgroupid`, `taxgroupdescription`) VALUES(3, '特殊免税');

CREATE TABLE IF NOT EXISTS `taxgrouptaxes` (
  `taxgroupid` tinyint(4) NOT NULL DEFAULT '0',
  `taxauthid` tinyint(4) NOT NULL DEFAULT '0',
  `calculationorder` tinyint(4) NOT NULL DEFAULT '0',
  `taxontax` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`taxgroupid`,`taxauthid`),
  KEY `taxgroupid` (`taxgroupid`),
  KEY `taxauthid` (`taxauthid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `taxgrouptaxes` (`taxgroupid`, `taxauthid`, `calculationorder`, `taxontax`) VALUES(1, 16, 0, 0);
INSERT INTO `taxgrouptaxes` (`taxgroupid`, `taxauthid`, `calculationorder`, `taxontax`) VALUES(2, 14, 0, 0);
INSERT INTO `taxgrouptaxes` (`taxgroupid`, `taxauthid`, `calculationorder`, `taxontax`) VALUES(3, 15, 0, 0);

CREATE TABLE IF NOT EXISTS `taxprovinces` (
  `taxprovinceid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `taxprovincename` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`taxprovinceid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

INSERT INTO `taxprovinces` (`taxprovinceid`, `taxprovincename`) VALUES(1, '中国大陆');
INSERT INTO `taxprovinces` (`taxprovinceid`, `taxprovincename`) VALUES(2, '中国香港');

CREATE TABLE IF NOT EXISTS `tenderitems` (
  `tenderid` int(11) NOT NULL DEFAULT '0',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `quantity` varchar(40) NOT NULL DEFAULT '',
  `units` varchar(20) NOT NULL DEFAULT 'each',
  PRIMARY KEY (`tenderid`,`stockid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tenders` (
  `tenderid` int(11) NOT NULL DEFAULT '0',
  `location` varchar(5) NOT NULL DEFAULT '',
  `address1` varchar(40) NOT NULL DEFAULT '',
  `address2` varchar(40) NOT NULL DEFAULT '',
  `address3` varchar(40) NOT NULL DEFAULT '',
  `address4` varchar(40) NOT NULL DEFAULT '',
  `address5` varchar(20) NOT NULL DEFAULT '',
  `address6` varchar(15) NOT NULL DEFAULT '',
  `telephone` varchar(25) NOT NULL DEFAULT '',
  `closed` int(2) NOT NULL DEFAULT '0',
  `requiredbydate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tenderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tendersuppliers` (
  `tenderid` int(11) NOT NULL DEFAULT '0',
  `supplierid` varchar(10) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `responded` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tenderid`,`supplierid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `transby` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `typeno` bigint(16) NOT NULL DEFAULT '1',
  `step` tinyint(4) NOT NULL DEFAULT '0',
  `stepdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` varchar(20) NOT NULL DEFAULT '',
  `realname` varchar(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(1, 12, 1, 0, '2013-12-14 00:31:40', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(2, 18, 1, 0, '2013-12-14 00:34:41', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(3, 25, 1, 0, '2013-12-14 00:42:27', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(4, 40, 1, 0, '2013-12-14 00:46:11', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(5, 26, 1, 0, '2013-12-14 00:49:53', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(6, 28, 1, 0, '2013-12-14 00:49:53', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(7, 40, 2, 0, '2013-12-14 00:51:32', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(8, 40, 2, 0, '2013-12-14 00:51:39', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(9, 40, 2, 0, '2013-12-14 00:51:39', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(10, 40, 2, 0, '2013-12-14 00:51:48', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(11, 40, 2, 0, '2013-12-14 00:51:48', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(12, 26, 2, 0, '2013-12-14 00:52:09', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(13, 28, 2, 0, '2013-12-14 00:52:09', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(14, 26, 3, 0, '2013-12-14 00:52:20', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(15, 28, 3, 0, '2013-12-14 00:52:20', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(16, 29, 1, 0, '2013-12-14 00:54:01', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(17, 29, 2, 0, '2013-12-14 00:54:11', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(18, 16, 2, 0, '2013-12-14 00:56:59', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(19, 16, 2, 0, '2013-12-14 00:56:59', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(20, 16, 2, 1, '2013-12-14 00:57:44', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(21, 16, 2, 1, '2013-12-14 00:57:44', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(22, 30, 1, 0, '2013-12-14 01:01:25', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(23, 10, 1, 0, '2013-12-14 01:02:21', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(24, 12, 2, 0, '2013-12-14 01:08:28', 'admin', '王忠官');
INSERT INTO `transby` (`id`, `type`, `typeno`, `step`, `stepdate`, `userid`, `realname`) VALUES(25, 0, 1, 0, '2013-12-14 01:13:23', 'admin', '王忠官');

CREATE TABLE IF NOT EXISTS `unitsofmeasure` (
  `unitid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `unitname` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`unitid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

INSERT INTO `unitsofmeasure` (`unitid`, `unitname`) VALUES(1, '瓶');
INSERT INTO `unitsofmeasure` (`unitid`, `unitname`) VALUES(2, '袋');
INSERT INTO `unitsofmeasure` (`unitid`, `unitname`) VALUES(3, '盒');
INSERT INTO `unitsofmeasure` (`unitid`, `unitname`) VALUES(4, '件');
INSERT INTO `unitsofmeasure` (`unitid`, `unitname`) VALUES(6, '千克');
INSERT INTO `unitsofmeasure` (`unitid`, `unitname`) VALUES(7, '克');
INSERT INTO `unitsofmeasure` (`unitid`, `unitname`) VALUES(8, '个');
INSERT INTO `unitsofmeasure` (`unitid`, `unitname`) VALUES(9, '把');
INSERT INTO `unitsofmeasure` (`unitid`, `unitname`) VALUES(10, '套');
INSERT INTO `unitsofmeasure` (`unitid`, `unitname`) VALUES(11, '元');
INSERT INTO `unitsofmeasure` (`unitid`, `unitname`) VALUES(12, '打');

CREATE TABLE IF NOT EXISTS `woitems` (
  `wo` int(11) NOT NULL,
  `stockid` char(20) NOT NULL DEFAULT '',
  `qtyreqd` double NOT NULL DEFAULT '1',
  `qtyrecd` double NOT NULL DEFAULT '0',
  `stdcost` double NOT NULL,
  `nextlotsnref` varchar(20) DEFAULT '',
  PRIMARY KEY (`wo`,`stockid`),
  KEY `stockid` (`stockid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `woitems` (`wo`, `stockid`, `qtyreqd`, `qtyrecd`, `stdcost`, `nextlotsnref`) VALUES(1, '3005', 35, 35, 0.503, '');
INSERT INTO `woitems` (`wo`, `stockid`, `qtyreqd`, `qtyrecd`, `stdcost`, `nextlotsnref`) VALUES(2, '3007', 50, 50, 25.403, '');
INSERT INTO `woitems` (`wo`, `stockid`, `qtyreqd`, `qtyrecd`, `stdcost`, `nextlotsnref`) VALUES(2, '3008', 8, 8, 85.003, '');

CREATE TABLE IF NOT EXISTS `worequirements` (
  `wo` int(11) NOT NULL,
  `parentstockid` varchar(20) NOT NULL,
  `stockid` varchar(20) NOT NULL,
  `qtypu` double NOT NULL DEFAULT '1',
  `stdcost` double NOT NULL DEFAULT '0',
  `autoissue` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wo`,`parentstockid`,`stockid`),
  KEY `stockid` (`stockid`),
  KEY `worequirements_ibfk_3` (`parentstockid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `worequirements` (`wo`, `parentstockid`, `stockid`, `qtypu`, `stdcost`, `autoissue`) VALUES(1, '3005', '6002', 0.2, 1, 1);
INSERT INTO `worequirements` (`wo`, `parentstockid`, `stockid`, `qtypu`, `stdcost`, `autoissue`) VALUES(1, '3005', '6001', 0.3, 1, 1);
INSERT INTO `worequirements` (`wo`, `parentstockid`, `stockid`, `qtypu`, `stdcost`, `autoissue`) VALUES(1, '3005', '3006', 0.3, 0.01, 1);
INSERT INTO `worequirements` (`wo`, `parentstockid`, `stockid`, `qtypu`, `stdcost`, `autoissue`) VALUES(2, '3007', '6002', 0.5, 1, 1);
INSERT INTO `worequirements` (`wo`, `parentstockid`, `stockid`, `qtypu`, `stdcost`, `autoissue`) VALUES(2, '3007', '6001', 0.5, 1, 1);
INSERT INTO `worequirements` (`wo`, `parentstockid`, `stockid`, `qtypu`, `stdcost`, `autoissue`) VALUES(2, '3007', '3005', 1, 0.703, 1);
INSERT INTO `worequirements` (`wo`, `parentstockid`, `stockid`, `qtypu`, `stdcost`, `autoissue`) VALUES(2, '3007', '3004', 1, 0.5, 1);
INSERT INTO `worequirements` (`wo`, `parentstockid`, `stockid`, `qtypu`, `stdcost`, `autoissue`) VALUES(2, '3007', '3003', 1, 3, 1);
INSERT INTO `worequirements` (`wo`, `parentstockid`, `stockid`, `qtypu`, `stdcost`, `autoissue`) VALUES(2, '3007', '3002', 1, 20.2, 1);
INSERT INTO `worequirements` (`wo`, `parentstockid`, `stockid`, `qtypu`, `stdcost`, `autoissue`) VALUES(2, '3008', '3005', 1, 0.703, 1);
INSERT INTO `worequirements` (`wo`, `parentstockid`, `stockid`, `qtypu`, `stdcost`, `autoissue`) VALUES(2, '3008', '3004', 1, 0.5, 1);
INSERT INTO `worequirements` (`wo`, `parentstockid`, `stockid`, `qtypu`, `stdcost`, `autoissue`) VALUES(2, '3008', '3003', 1, 3, 1);
INSERT INTO `worequirements` (`wo`, `parentstockid`, `stockid`, `qtypu`, `stdcost`, `autoissue`) VALUES(2, '3008', '3002', 4, 20.2, 1);

CREATE TABLE IF NOT EXISTS `workcentres` (
  `code` char(5) NOT NULL DEFAULT '',
  `location` char(5) NOT NULL DEFAULT '',
  `description` char(20) NOT NULL DEFAULT '',
  `capacity` double NOT NULL DEFAULT '1',
  `overheadperhour` decimal(10,0) NOT NULL DEFAULT '0',
  `overheadrecoveryact` varchar(20) NOT NULL DEFAULT '0',
  `setuphrs` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`),
  KEY `Description` (`description`),
  KEY `Location` (`location`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `workcentres` (`code`, `location`, `description`, `capacity`, `overheadperhour`, `overheadrecoveryact`, `setuphrs`) VALUES('0001', 'SC002', '组装车间', 1, '0', '500103', '0');

CREATE TABLE IF NOT EXISTS `workorders` (
  `wo` int(11) NOT NULL,
  `loccode` char(5) NOT NULL DEFAULT '',
  `requiredby` date NOT NULL DEFAULT '0000-00-00',
  `startdate` date NOT NULL DEFAULT '0000-00-00',
  `costissued` double NOT NULL DEFAULT '0',
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wo`),
  KEY `LocCode` (`loccode`),
  KEY `StartDate` (`startdate`),
  KEY `RequiredBy` (`requiredby`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `workorders` (`wo`, `loccode`, `requiredby`, `startdate`, `costissued`, `closed`) VALUES(1, 'SC002', '2013-12-14', '2013-12-14', 17.605, 1);
INSERT INTO `workorders` (`wo`, `loccode`, `requiredby`, `startdate`, `costissued`, `closed`) VALUES(2, 'SC002', '2013-12-14', '2013-12-14', 1950.174, 1);

CREATE TABLE IF NOT EXISTS `woserialnos` (
  `wo` int(11) NOT NULL,
  `stockid` varchar(20) NOT NULL,
  `serialno` varchar(30) NOT NULL,
  `quantity` double NOT NULL DEFAULT '1',
  `qualitytext` text NOT NULL,
  PRIMARY KEY (`wo`,`stockid`,`serialno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `fullaccess` int(11) NOT NULL DEFAULT '1',
  `cancreatetender` tinyint(1) NOT NULL DEFAULT '0',
  `lastvisitdate` datetime DEFAULT NULL,
  `branchcode` varchar(10) NOT NULL DEFAULT '',
  `pagesize` varchar(20) NOT NULL DEFAULT 'A4',
  `modulesallowed` varchar(40) NOT NULL DEFAULT '',
  `blocked` tinyint(4) NOT NULL DEFAULT '0',
  `displayrecordsmax` int(11) NOT NULL DEFAULT '0',
  `theme` varchar(30) NOT NULL DEFAULT 'fresh',
  `language` varchar(10) NOT NULL DEFAULT 'en_GB.utf8',
  `pdflanguage` tinyint(1) NOT NULL DEFAULT '0',
  `department` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `CustomerID` (`customerid`),
  KEY `DefaultLocation` (`defaultlocation`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `www_users` (`userid`, `password`, `realname`, `customerid`, `supplierid`, `salesman`, `phone`, `email`, `defaultlocation`, `fullaccess`, `cancreatetender`, `lastvisitdate`, `branchcode`, `pagesize`, `modulesallowed`, `blocked`, `displayrecordsmax`, `theme`, `language`, `pdflanguage`, `department`) VALUES('admin', '$2y$10$rPzYpQUw6z6cqIOhP8Hq/eSTPrNAM8h9Bav1RGh8K/D6hbJvKrpJa', '王管', '1001', '', '001', '', 'admin@weberp.org', 'CK001', 8, 0, '2014-01-07 21:49:04', '1001', 'A4', '1,1,1,1,1,1,1,1,1,1,1,', 0, 50, 'stisla', 'zh_CN.utf8', 2, 0);
INSERT INTO `www_users` (`userid`, `password`, `realname`, `customerid`, `supplierid`, `salesman`, `phone`, `email`, `defaultlocation`, `fullaccess`, `cancreatetender`, `lastvisitdate`, `branchcode`, `pagesize`, `modulesallowed`, `blocked`, `displayrecordsmax`, `theme`, `language`, `pdflanguage`, `department`) VALUES('cncerp', '$2y$10$rPzYpQUw6z6cqIOhP8Hq/eSTPrNAM8h9Bav1RGh8K/D6hbJvKrpJa', '苏试', '1001', '', '002', '000000', 'admin@163.com', 'CK001', 13, 0, '2013-12-13 21:17:12', '1001', 'A4', '1,1,1,1,1,1,1,1,1,1,1,', 0, 50, 'stisla', 'zh_CN.utf8', 2, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
