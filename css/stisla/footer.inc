<?php
echo '<div id="MessageContainerFoot" class="noPrint">';

if (isset($Messages) and count($Messages) > 0) {
	foreach ($Messages as $Message) {
		$Prefix = '';
		switch ($Message[1]) {
			case 'error':
				$Class = 'error';
				$Prefix = $Prefix ? $Prefix : _('ERROR') . ' ' . _('Report');
				if (isset($_SESSION['LogSeverity']) and $_SESSION['LogSeverity'] > 3) {
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
					fwrite($LogFile, date('Y-m-d h-m-s') . ',' . $Type . ',' . $_SESSION['UserID'] . ',' . trim($Msg, ',') . "\n");
				}
				echo '<div class="Message ' . $Class . ' noPrint">
				<span class="MessageCloseButton">&times;</span>
				<b>' . $Prefix . '</b> : ' . $Message[0] . '</div>';
		}
	}
}
echo '</div>'; // eof MessageContainer div




echo '
 </div>
        </section>
		


<div class="modal fade bd-example-modal-lg" id="modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    <div class="modal-body">

</div>
    </div>
  </div>
</div>


<!--/div-->
</div>
	  <!-- Main Content 结束-->
      <footer class="main-footer noPrint">
        <div class="footer-right noPrint">
		CNCERP ' . _('version') . ' ' . $_SESSION['VersionNumber'] . ' ' . _('Copyright') . ' &copy; 2004 - ' . Date('Y'). '<a target="_blank" href="http://cncerp.com/ManualContributors.html">weberp,CNCERP</a>
        </div>
      </footer>
    </div>
  </div>
 
  <!-- General JS Scripts -->
  <script src="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/modules/jquery.min.js"></script>
  <script src="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/modules/popper.js"></script>
  <script src="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/modules/tooltip.js"></script>
  <script src="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/modules/bootstrap/js/bootstrap.min.js"></script>
  <script src="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
  <script src="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/modules/moment.min.js"></script>
  <!--script src="/assets/js/stisla.js"></script-->
  <script src="', $RootPath, '/includes/CNCERP/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
  <script src="', $RootPath, '/includes/CNCERP/bootstrap-datepicker/locales/bootstrap-datepicker.zh-CN.min.js"></script>
  
  <!-- JS Libraies -->


  <!-- Page Specific JS File -->

  <!-- Template JS File -->
  <script src="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/js/scripts.js"></script>
  <script src="', $RootPath, '/css/', $_SESSION['Theme'], '/assets/js/custom.js"></script>
  
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
         $(".modal-body").html("<h3>查询中，请稍候……</h3>");
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
 


</body>

</html>';

?>

