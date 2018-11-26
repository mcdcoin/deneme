<section id="navigator" class="girisYap">
	<div class="container">
		<h1>Parolamı Unuttum</h1>
		<p>Eğer hesabınıza ait parolanızı unuttuysanız buradan parolanızı sıfırlayabilirsiniz.</p>
	</div>
</section>
<section id="girisYap">
  <div class="container">
    {if $loggedin}
      {php}
      $WEB_ROOT = $template->getVariable('WEB_ROOT')->value;
      header("Location: $WEB_ROOT/clientarea.php");
      {/php}
    {else}

    <div id="girisTablo">
      <div class="giris" style="display: block; width: 100%; border: none;">
        <h2>Parolamı Unuttum</h2>
        {if $success}
          {include file="$template/includes/alert.tpl" type="success" msg=$LANG.pwresetvalidationsent textcenter=true}
          <p>{$LANG.pwresetvalidationcheckemail}</p>
        {else}

          {if $errormessage}
            {include file="$template/includes/alert.tpl" type="error" msg=$errormessage textcenter=true}
          {/if}
          {if $securityquestion}

              <p>{$LANG.pwresetsecurityquestionrequired}</p>

              <form method="post" action="pwreset.php"  class="form-stacked">
                  <input type="hidden" name="action" value="reset" />
                  <input type="hidden" name="email" value="{$email}" />

                  <div class="form-group">
                      <label for="inputAnswer">{$securityquestion}</label>
                      <input type="text" name="answer" class="basic-input-control" id="inputAnswer" autofocus>
                  </div>

                  <div class="form-group text-center">
                      <button type="submit" class="yesil-buton">{$LANG.pwresetsubmit}</button>
                  </div>

              </form>

          {else}

              <p>{$LANG.pwresetemailneeded}</p>

              <form method="post" action="{$systemsslurl}pwreset.php" role="form">
                  <input type="hidden" name="action" value="reset" />

                  <div class="form-group">
                      <label for="inputEmail">{$LANG.loginemail}</label>
                      <input type="email" name="email" class="basic-input-control" id="inputEmail" placeholder="{$LANG.enteremail}" autofocus>
                  </div>

                  <div class="form-group text-center">
										<input type="hidden" name="submit" value="true">
										<button type="submit" class="yesil-buton">{$LANG.pwresetsubmit}</button>
                  </div>

              </form>

          {/if}
        {/if}
      </div>
    </div>
    {/if}
  </div>
</section>
