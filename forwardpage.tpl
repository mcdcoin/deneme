<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Yönlendiriliyorsunuz</h1>
    <p>İşleme devam edebilmeniz için yönlendiriliyorsunuz.</p>
	</div>
</section>
<section id="page">
  <div class="container">

    {include file="$template/includes/alert.tpl" type="info" msg=$message textcenter=true}


    <div class="text-center">

        <img src="{$BASE_PATH_IMG}/loading.gif" alt="Loading" border="0" />

        <br /><br /><br />

        <div id="frmPayment" align="center">

            {$code}

            <form method="post" action="{if $invoiceid}viewinvoice.php?id={$invoiceid}{else}clientarea.php{/if}">
            </form>

        </div>

    </div>

    <script language="javascript">
        setTimeout("autoSubmitFormByContainer('frmPayment')", 5000);
    </script>

  </div>
</section>
