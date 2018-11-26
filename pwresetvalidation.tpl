<section id="navigator" class="girisYap">
	<div class="container">
		<h1>Yeni Parola</h1>
		<p>Parolanızı aşağıdaki kutucuklar ile yenileyin.</p>
	</div>
</section>
<section id="girisYap">
  <div class="container">
    <div id="girisTablo">
      <div class="giris" style="display: block; width: 100%; border: none;">


            {if $invalidlink}

                {include file="$template/includes/alert.tpl" type="danger" msg=$invalidlink textcenter=true}

            {elseif $success}

                {include file="$template/includes/alert.tpl" type="success" msg=$LANG.pwresetvalidationsuccess textcenter=true}

                <p class="text-center">
                    {$LANG.pwresetsuccessdesc|sprintf2:'<a href="clientarea.php">':'</a>'}
                </p>

            {else}

                {if $errormessage}
                    {include file="$template/includes/alert.tpl" type="danger" msg=$errormessage textcenter=true}
                {/if}

                <p>{$LANG.pwresetenternewpw}</p>

                <form class="using-password-strength" method="post" action="{$smarty.server.PHP_SELF}?action=pwreset">
                    <input type="hidden" name="key" id="key" value="{$key}" />

                    <div id="newPassword1" class="form-group has-feedback">
                        <label class="control-label" for="inputNewPassword1">{$LANG.newpassword}</label>
                        <input type="password" name="newpw" id="inputNewPassword1" class="basic-input-control" autocomplete="off" />
                        <span class="form-control-feedback glyphicon glyphicon-password"></span>
                    </div>

                    <div id="newPassword2" class="form-group has-feedback">
                        <label class="control-label" for="inputNewPassword2">{$LANG.confirmnewpassword}</label>
                        <input type="password" name="confirmpw" id="inputNewPassword2" class="basic-input-control" autocomplete="off" />
                        <span class="form-control-feedback glyphicon glyphicon-password"></span>
                        <div id="inputNewPassword2Msg"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">{$LANG.pwstrength}</label>
                        {include file="$template/includes/pwstrength.tpl"}
                    </div>

                    <div class="form-group">
                        <div class="text-center">
													<input type="hidden" name="submit" value="true">
													<input class="yesil-buton" type="submit" name="submit" value="{$LANG.clientareasavechanges}" />
													<input class="standartButon" type="reset" value="{$LANG.cancel}" />
                        </div>
                    </div>

                </form>

            {/if}
      </div>
    </div>
  </div>
</section>
