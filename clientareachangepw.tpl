{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Parolayı Değiştir</h1>
		<p>Giriş parolanızı güncelleyin.</p>
	</div>
</section>
<section id="page">
  <div class="container">
    {if $successful}
    {include file="$template/includes/alert.tpl" type="success" msg=$LANG.changessavedsuccessfully textcenter=true}
    {/if}

    {if $errormessage}
    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
    {/if}

    <div class="changePw">
			<form method="post" action="{$smarty.server.PHP_SELF}?action=changepw">
        <ul>
          <li>
            <div class="title">
              {$LANG.existingpassword}
            </div>
            <div class="content">
							<input type="password" class="basic-input-control" name="existingpw" id="inputExistingPassword" autocomplete="off" />
            </div>
          </li>
          <li>
            <div class="title">
              {$LANG.newpassword}
            </div>
            <div class="content">
							<input type="password" class="basic-input-control" name="newpw" id="inputNewPassword1" autocomplete="off" />
              <div>
                {include file="$template/includes/pwstrength.tpl"}
              </div>
            </div>
          </li>
          <li>
            <div class="title">
              {$LANG.confirmnewpassword}
            </div>
            <div class="content">
							<input type="password" class="basic-input-control" name="confirmpw" id="inputNewPassword2" autocomplete="off" />
              <div id="inputNewPassword2Msg"></div>
            </div>
          </li>
          <li>
            <div class="text-center">
							<input type="hidden" name="submit" value="true">
							<button type="submit" class="yesil-buton">{$LANG.clientareasavechanges}</button>
							<button type="reset" class="standartButon">{$LANG.cancel}</button>
            </div>
          </li>
        </ul>
      </form>
    </div>
  </div>
</section>
