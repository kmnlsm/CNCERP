<?php

function getIsshow($parent,$component){
	$SQL = "select isshow from bom where parent='".$parent."' and component='".$component."'";
	$Result = DB_query($SQL);
	$isshowRow = DB_fetch_row($Result);
	$isshow = $isshowRow[0];
	if(empty($isshow))$isshow='';
	return $isshow;
}

?>