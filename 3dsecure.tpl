{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">3D Secure</h1>
		<p>Kredi &amp; Banka kartınızla bilgilerinizi hiç kimseye paylaşmadan güvenli bir şekilde ödeyin.</p>
	</div>
</section>
<section id="page">
  <div class="container">
    <div class="text-center">
        <div id="frmThreeDAuth" class="hidden">
            {$code}
        </div>
        <iframe name="3dauth" height="500" scrolling="auto" src="about:blank" class="submit-3d"></iframe>
        <br /><br />
    </div>
    <script language="javascript">
        jQuery("#frmThreeDAuth").find("form:first").attr('target', '3dauth');
        setTimeout("autoSubmitFormByContainer('frmThreeDAuth')", 1000);
    </script>
  </div>
</section>
