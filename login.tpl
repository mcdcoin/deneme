<section id="navigator" class="girisYap">
	<div class="container">
		<h1>Müşteri Paneli</h1>
		<p>Müşteri panelinize erişerek, hizmetlerinizi ve ürünlerinizi yönetebilirsiniz.</p>
	</div>
</section>

<section id="girisYap">
	<div class="container">

		<div id="girisTablo">
			<div class="giris">
				<h2>Giriş Yapın</h2>
				<p>Firmamıza kayıt oldunuz mu ? Eğer kayıt olduysanız buradan giriş yapabilirsiniz.</p>

				{if $incorrect}
			        {include file="$template/includes/alert.tpl" type="error" msg=$LANG.loginincorrect textcenter=true}
			    {elseif $verificationId && empty($transientDataName)}
			        {include file="$template/includes/alert.tpl" type="error" msg=$LANG.verificationKeyExpired textcenter=true}
			    {elseif $ssoredirect}
			        {include file="$template/includes/alert.tpl" type="info" msg=$LANG.sso.redirectafterlogin textcenter=true}
			    {/if}

				<div>
    				<form method="post" action="{$systemsslurl}dologin.php" role="form">
					<div class="form">
						<i class="fa fa-envelope"></i> 
						<input type="text" name="username" placeholder="{$LANG.enteremail}" autofocus="">
					</div>
					<div class="form">
						<i class="fa fa-key"></i> 
						<input type="password" name="password" placeholder="{$LANG.clientareapassword}">
					</div>
					<div class="checkbox">
						<label>
							<input type="checkbox" name="rememberme"> {$LANG.loginrememberme}
						</label>
					</div>
					<div class="buton">
						<a href="pwreset.php">{$LANG.forgotpw}</a>
						<button type="submit" id="login"><i class="fa fa-send"></i> {$LANG.loginbutton}</button>
					</div>
					</form>
				</div>
			</div>
			<div class="kaydol">
				<h2>Kaydol</h2>
				<p>Firmamızla çalışarak kaliteli, üst düzey ürünler ile pürüssüz hizmet almak isterseniz hesap oluşturabilirsiniz.</p>
				<p>Demir Telekomünikasyon İlkay Demir. <a href="#">hizmet sözleşmesi</a> ve <a href="#">gizlilik politika</a>larını kontrol etmenizi tavsiye ederiz.</p>
				<a href="register.php" class="customButon"><i class="fa fa-user-plus"></i> Yeni Hesap</a>
			</div>
		</div>

	</div>
</section>