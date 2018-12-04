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
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5bfd7d4b40105007f379d6e5/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
</html>
