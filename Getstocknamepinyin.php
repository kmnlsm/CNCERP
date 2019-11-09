<?php
//CNCERP20191026  CQZ
header('Content-type:text/json;charset=utf-8');
include_once 'includes/CNCERP/pinyin/Pinyin.php';
include ('includes/session.php');
//var_dump($_POST['stockid']);
	$getnamesql = "SELECT stockmaster.description
			FROM stockmaster
			WHERE stockmaster.stockid = " . $_POST['stockid']  . " ";
	$result = DB_query($getnamesql);
	$myrow = DB_fetch_array($result);

$stocknamepinyin = Pinyin::getShortPinyin($myrow['description']);//转化为拼音首字字母
//$stocknamepinyin = Pinyin::getShortPinyin($_POST['stockid']);//转化为拼音首字字母
$data='{pinyin:"' . strtoupper($stocknamepinyin).  '"}';//合成json
echo  json_encode($data);//输出json
/*
echo Pinyin::getPinyin("早上好");
echo '</br>';
echo Pinyin::getShortPinyin("早上好");
*/