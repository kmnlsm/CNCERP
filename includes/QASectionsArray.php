<?php
$SectionsArray=array(array('PhysicalProperty',3, _('Technical Data Sheet Properties'), _('* Data herein is typical and not to be construed as specifications.'), array(260,110,135),array(_('Physical Property'),_('Value'),_('Test Method')),array('left','center','center')),
					 array('Header',3, _('Header'), _('* Trailer'), array(260,110,135), array(_('Physical Property'),_('Value'),_('Test Method')),array('left','center','center')),
					 array('Processing',2, _('Injection Molding Processing Guidelines'), _('* Desicant type dryer required.'), array(240,265),array(_('Setting'),_('Value')),array('left','center')),
					 array('RegulatoryCompliance',2, _('Regulatory Compliance'), '', array(240,265),array(_('Regulatory Compliance'),_('Value')),array('left','center')));
function getQAGroupByTitle($key){
	global $SectionsArray;
	foreach($SectionsArray as $row) {
		if($row[0]==$key)return $row[2];
	}
	return _('Unknow').':'.$key;
}
?>