<?php //LogPath is set in the table `config`. This fold need writing previlige.

echo '<div id="MessageContainerFoot" class=" noPrint">';
global $Messages;
if (isset($Messages) and count($Messages) > 0) {
	foreach ($Messages as $Message) {
		$Prefix = '';
		switch ($Message[1]) {
			case 'error':
				$Class = 'error';
				$Prefix = $Prefix ? $Prefix : _('ERROR') . ' ' . _('Report');
				if (isset($_SESSION['LogSeverity']) and $_SESSION['LogSeverity'] > 3) {
					if (!isset($LogFile))$LogFile=fopen($_SESSION['LogPath'].'/webERP-test.log', 'a');
					fwrite($LogFile, date('Y-m-d h-m-s') . ',' . $Type . ',' . $_SESSION['UserID'] . ',' . trim($Msg, ',') . "\n");
				}
				echo '<div class="Message ' . $Class . ' noPrint">
				<span class="MessageCloseButton">&times;</span>
				<b>' . $Prefix . '</b> : ' . $Message[0] . '</div>';
				break;
			case 'warn':
			case 'warning':	 
				$Class = 'warn';
				$Prefix = $Prefix ? $Prefix : _('WARNING') . ' ' . _('Report');
				if (isset($_SESSION['LogSeverity']) and $_SESSION['LogSeverity'] > 3) {
					if (!isset($LogFile))$LogFile=fopen($_SESSION['LogPath'].'/webERP-test.log', 'a');
					fwrite($LogFile, date('Y-m-d h-m-s') . ',' . $Type . ',' . $_SESSION['UserID'] . ',' . trim($Msg, ',') . "\n");
				}
				echo '<div class="Message ' . $Class . ' noPrint">
				<span class="MessageCloseButton">&times;</span>
				<b>' . $Prefix . '</b> : ' . $Message[0] . '</div>';
				break;
			case 'success':
				$Class = 'success';
				$Prefix = $Prefix ? $Prefix : _('SUCCESS') . ' ' . _('Report');
				if (isset($_SESSION['LogSeverity']) and $_SESSION['LogSeverity'] > 3) {
					if (!isset($LogFile))$LogFile=fopen($_SESSION['LogPath'].'/webERP-test.log', 'a');
					fwrite($LogFile, date('Y-m-d h-m-s') . ',' . $Type . ',' . $_SESSION['UserID'] . ',' . trim($Msg, ',') . "\n");
				}
				echo '<div class="Message ' . $Class . ' noPrint">
				<span class="MessageCloseButton">&times;</span>
				<b>' . $Prefix . '</b> : ' . $Message[0] . '</div>';
				break;
			case 'info':
			default:
				$Prefix = $Prefix ? $Prefix : _('INFORMATION') . ' ' . _('Message');
				$Class = 'info';
				if (isset($_SESSION['LogSeverity']) and $_SESSION['LogSeverity'] > 2) {
					if (!isset($LogFile))$LogFile=fopen($_SESSION['LogPath'].'/webERP-test.log', 'a');
					fwrite($LogFile, date('Y-m-d h-m-s') . ',' . $Type . ',' . $_SESSION['UserID'] . ',' . trim($Msg, ',') . "\n");
				}
				echo '<div class="Message ' . $Class . ' noPrint">
				<span class="MessageCloseButton">&times;</span>
				<b>' . $Prefix . '</b> : ' . $Message[0] . '</div>';
		}
	}
}

echo '</div>'; // eof MessageContainer div

echo '<footer class="CNCERP-footer noprints noPrint">';

	//echo '<span class="pull-left">',DisplayDateTime();//</span>
	echo '<span class="pull-right"><a target="_blank" href="http://www.weberp.org/weberp/doc/Manual/ManualContributors.html">',_('webERP') . _('version') . ' ' . $_SESSION['VersionNumber'] . ' ' . _('Copyright') . ' &copy; 2004 - ' . Date('Y'). ' </a></span>';




//echo '<img class="pull-right" src="'. $RootPath . '/' . $_SESSION['LogoFile'] . '" height="50px" alt="CNCERP" title="CNCERP(WebERP) ' . _('Copyright') . ' &copy; weberp.org - ' . date('Y') . '" />';	
echo '</footer>
		 </div></div>';
echo '
    <script src="', $RootPath, '/css/', $_SESSION['Theme'], '/js/jquery-2.1.3.min.js"></script>
	<script src="', $RootPath, '/css/', $_SESSION['Theme'], '/js/jquery.cookie.min.js"></script>
	<!--script src="', $RootPath, '/css/', $_SESSION['Theme'], '/js/fastclick.min.js"></script-->
	<script src="', $RootPath, '/css/', $_SESSION['Theme'], '/js/bootstrap.min.js"></script>
	<script src="', $RootPath, '/css/', $_SESSION['Theme'], '/js/CNCERP.min.js"></script>
            '; 
echo '
<div class="modal fade noPrint " id="modal" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog noPrint">
    <div class="modal-content noPrint">
     <div class="modal-body noPrint">
          等待结果，请稍候...
        </div>
    </div>
  </div>
</div>

</body>

 <script>
   function CNCERP_GLShows(a,b){
	var type = a;
	var typeno =b; 
    $.ajax({
	   type: "post",
       url: "CNCERP_GLShows.php",
	   data: {FormID:"' . $_SESSION['FormID'] . '" , type:type,typeno:typeno}, 
       dataType: "text",
	   beforeSend:function(){ 
         $(".modal-body").html("<h1>查询中，请稍候……</h1>");
           // show modal 提示
           $("#modal").modal("show");
            },
       success: function(res) {
           // get the ajax response data
           var data = res;
           // update modal content
           $(".modal-body").html(data);
           // show modal
           $("#modal").modal("show");
       },
       error:function(request, status, error) {
           console.log("查询出错:" + request.responseText);
       }
  });
 } 


</script>
	</html>';
?>
