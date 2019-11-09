<?php
include('includes/session.php');
if (empty($_SESSION['Theme'])) {
$CNCERP_Theme = 'CNCloudERP';
}else{
	$CNCERP_Theme = $_SESSION['Theme'];
}
include('css/'. $CNCERP_Theme.'/index.inc');
?>