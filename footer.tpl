	<footer>
		<div id="top">
			<div class="container">
				{include file="$template/tumhizmetler.tpl"}
			</div>
		</div>
		<div id="bottom">
			<div class="container">
				<ul class="solMenu">
					<li><a href="#">Gizlilik Sözleşmesi</a></li>
					<li><a href="#">Hizmet Sözleşmesi</a></li>
					<li><a href="#">Güncel Şirket Blogu</a></li>
				</ul>
				<ul class="sagMenu">
					<li>
						<a href="https://www.oyunsunuculari.com" target="_blank">
							<img src="templates/{$template}/assets/img/footerlogo.png" alt="Oyunsunuculari.com Demir Telekomünikasyon" />
						</a>
					</li>
				</ul>
			</div>
		</div>
	</footer>

	<script src="templates/{$template}/assets/js/bootstrap.js"></script>
	<script src="templates/{$template}/assets/js/icheck.min.js"></script>
	<script src="templates/{$template}/assets/js/custom.dropdownMenu.js"></script>
	<script src="templates/{$template}/assets/js/whmcs.js"></script>
	<script src="templates/{$template}/assets/js/main.js"></script>
	<script src="templates/{$template}/assets/js/scripts.min.js"></script>
	<script>
	$(document).ready(function(){
	  $('input').iCheck({
	    checkboxClass: 'icheckbox_square-blue',
	    radioClass: 'iradio_square-blue'
	  });
	});
	function openNav() {
      document.getElementById("headMenu").style.width = "300px";
    }
	function closeNav() {
      document.getElementById("headMenu").style.width = "0";
  }
	</script>
</body>
Şuraya Tawk.to Kodu Ekle
</html>
