<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1>{$LANG.oops}!</h1>
    <p>{$LANG.subaccountpermissiondenied}</p>
	</div>
</section>
<section id="page">
  <div class="container">
    <div class="error-container">
        {if !empty($allowedpermissions)}
          <div class="text-center">
            <p>{$LANG.subaccountallowedperms}</p>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <div class="well text-left">
                        <ul>
                            {foreach from=$allowedpermissions item=permission}
                                <li>{$permission}</li>
                            {/foreach}
                        </ul>
                    </div>
                </div>
            </div>
          </div>
        {/if}
        <div class="text-center">
          <p>{$LANG.subaccountcontactmaster}</p>
          <div class="butonlar">
            <a href="javascript:histroy.go(-1)" class="standartButon">{$LANG.goback}</a>
            <a href="index.php" class="yesil-buton">{$LANG.returnhome}</a>
          </div>
        </div>
    </div>

  </div>
</section>
