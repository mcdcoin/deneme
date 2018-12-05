<!DOCTYPE html>
<html lang="tr">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no" />
  <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
	<link rel="stylesheet" type="text/css" href="templates/{$template}/assets/css/bootstrap.css" />
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|Source+Sans+Pro:200,300,400,600,700|Titillium+Web:200,300,400,600,700|Ubuntu:300,400,500,700" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
	<link rel="stylesheet" type="text/css" href="templates/{$template}/assets/css/square/blue.css">
	<link rel="stylesheet" type="text/css" href="templates/{$template}/assets/css/main.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://use.fontawesome.com/fea3f3bf20.js"></script>
	<script type="text/javascript">
	    var csrfToken = '{$token}',
	        markdownGuide = '{lang key="markdown.title"}',
	        locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
	        saved = '{lang key="markdown.saved"}',
	        saving = '{lang key="markdown.saving"}';
	</script>
</head>
<body>
{$headeroutput}

	<section id="topMenu">
		<div class="container">
			<ul class="solMenu">
				<li><a href="{$WEB_ROOT}/hakkimizda.php">Hakkımızda</a></li>
				<li><a href="#">Blog</a></li>
				<li><a href="{$WEB_ROOT}/contact.php">İletişim</a></li>
			</ul>
			<ul class="sagMenu">
				<li><a href="tel:+905417380312"><i class="fa fa-phone"></i> 0 541 738 03 12</a></li>
				<li><a href="{$WEB_ROOT}/submitticket.php"><i class="fa fa-comments"></i> Hızlı Destek</a></li>
				<li><a href="{$WEB_ROOT}/cart.php?a=view"><i class="fa fa-shopping-cart"></i> Sepet{if !$cartitemcount == 0} ({$cartitemcount}){/if}</a></li>
				{if $loggedin}
				<li><a href="{$WEB_ROOT}/clientarea.php"><i class="fa fa-user"></i> Müşteri Paneli</a></li>
				<li><a href="{$WEB_ROOT}/logout.php"><i class="fa fa-sign-out"></i> Çıkış Yap</a></li>
				{else}
				<li><a href="{$WEB_ROOT}/login.php"><i class="fa fa-sign-in"></i> Müşteri Girişi</a></li>
				<li><a href="{$WEB_ROOT}/register.php"><i class="fa fa-user-plus"></i> Yeni Müşteri</a></li>
				{/if}
			</ul>
		</div>
		<div class="clear"></div>
	</section>

	<header>
		<div class="container">
			<a href="{$WEB_ROOT}/index.php">
				<img src="templates/{$template}/assets/img/headlogo.png" alt="" class="headlogo" />
			</a>
			<ul class="mobilMenu">
				<li><a href="#" onclick="openNav()"><i class="fa fa-bars"></i></a></li>
			</ul>
			<ul class="menu">
				<li>
					<a href="#">Alan Adı</a>
					<div class="dropdownMenu">
						<div class="container">
							<div class="alanAdiSorgula">
								<div class="sorguKismi">
									<div class="domainName">
										<form method="post" action="cart.php?a=add&domain=register">
											<span>www.</span>
											<input type="text" name="domain" value=" örn. example.com" onfocus="if(this.value==' örn. example.com')this.value=''" onblur="if(this.value=='')this.value=' örn. example.com'" />
											<button type="submit">
												<i class="fa fa-search"></i> <span>Sorgula</span>
											</button>
										</form>
									</div>
									<div class="domainDiscount">
										<i class="fa fa-credit-card-alt"></i>
										Kredi kartı ile alan adı alın, hemen kullanmaya başlayın !
									</div>
								</div>
								<div class="ozellikKismi">
									<ul>
										<li><a href="cart.php?a=add&domain=register">Alan Adı Kaydet</a></li>
										<li><a href="cart.php?a=add&domain=transfer">Alan Adı Transfer</a></li>
										<li><a href="cart.php?a=add&domain=register">.tr Uzantılı Alan Adı</a></li>
										<li><a href="cart.php?a=add&domain=register">.ist - .istanbul Uzantılı Alan Adı</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<a href="#">Hosting</a>
					<div class="dropdownMenu">
						<div class="container">
							<div class="hostingMenu">
								<div class="miniSirket">
									<ul>
										<li><a href="kurumsal.php">Kurumsal</a></li>
										<li><a href="altyapi.php">Altyapı</a></li>
										<li><a href="kurumsal.php">Gizlilik Sözleşmesi</a></li>
										<li><a href="tel:+908500000000">Ara: 0850 000 0 000</a></li>
										<li><a href="contact.php">İletişim</a></li>
									</ul>
								</div>
								<div class="menu">
									<ul class="dmMenu">
										<li class="title"><i class="fa fa-linux"></i> <span>Linux Hosting</span></li>
										<li><a href="{$WEB_ROOT}/web-hosting.php">Linux Web Hosting</a></li>
										<li><a href="{$WEB_ROOT}/web-hosting.php">Limitsiz cPanel Hosting</a></li>
										<li><a href="{$WEB_ROOT}/aplikasyon-hosting.php">Linux Aplikasyon Hosting</a></li>
										<li><a href="{$WEB_ROOT}/bayi-hosting.php">Linux Bayi Hosting</a></li>
									</ul>
									<ul class="dmMenu">
										<li class="title"><i class="fa fa-windows"></i> <span>Windows Hosting</span></li>
										<li><a href="{$WEB_ROOT}/web-hosting.php">Windows Web Hosting</a></li>
										<li><a href="{$WEB_ROOT}/web-hosting.php">Limitsiz MaestroPanel Hosting</a></li>
										<li><a href="{$WEB_ROOT}/aplikasyon-hosting.php">Windows Aplikasyon Hosting</a></li>
										<li><a href="{$WEB_ROOT}/bayi-hosting.php#windowsbayi">Windows Bayi Hosting</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<a href="#">Sunucu</a>
					<div class="dropdownMenu">
						<div class="container">
							<div class="hostingMenu">
								<div class="miniSirket">
									<ul>
										<li><a href="kurumsal.php">Kurumsal</a></li>
										<li><a href="altyapi.php">Altyapı</a></li>
										<li><a href="kurumsal.php">Gizlilik Sözleşmesi</a></li>
										<li><a href="tel:+908500000000">Ara: 0 541 738 03 12</a></li>
										<li><a href="contact.php">İletişim</a></li>
									</ul>
								</div>
								<div class="menu">
									<ul class="dmMenu">
										<li class="title">Türkiye Lokasyon Sunucular</li>
										<li><a href="{$WEB_ROOT}/kiralik-sunucu.php">Dedicated Sunucu</a></li>
										<li><a href="{$WEB_ROOT}/sanal-sunucu.php">Linux Sanal Sunucu</a></li>
										<li><a href="{$WEB_ROOT}/sanal-sunucu.php">Windows Sanal Sunucu</a></li>
										<li><a href="{$WEB_ROOT}/sunucu-barindirma.php">Sunucu Barındırma</a></li>
									</ul>
									<ul class="dmMenu">
										<li class="title">Avrupa Lokasyon Sunucular</li>
										<li><a href="{$WEB_ROOT}/kiralik-sunucu.php">Dedicated Sunucu</a></li>
										<li><a href="{$WEB_ROOT}/sanal-sunucu.php">Linux Sanal Sunucu</a></li>
										<li><a href="{$WEB_ROOT}/sanal-sunucu.php">Windows Sanal Sunucu</a></li>
										<li><a href="{$WEB_ROOT}/sunucu-barindirma.php">Sunucu Barındırma</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<a href="#">Tüm Hizmetler</a>
					<div class="dropdownMenu">
						<div class="container">
							{include file="$template/tumhizmetler.tpl"}
						</div>
					</div>
				</li>
				<li><a href="#">Hakkımızda</a></li>
				{if $adminMasqueradingAsClient || $adminLoggedIn}
				<li>
					<a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-logged-in-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}">
						<i class="fa fa-sign-out"></i>
					</a>
				</li>
				{/if}
			</ul>
		</div>
	</header>

	<!-- responsive side menu -->
	<div id="headMenu" class="sidenav">
		<a href="javascript:void(0)" class="kapat" onclick="closeNav()">
			<i class="fa fa-times"></i>
		</a>

		<div class="logo">
			<a href="{$WEB_ROOT}/index.php">
				<img src="templates/{$template}/assets/img/sidelogo.png" alt="+ OyunSunuculari" />
			</a>
		</div>

		<div class="ikon-menu">
			<ul>
				<li>
					<a href="{$WEB_ROOT}/login.php"><i class="fa fa-sign-in"></i> Müşteri Girişi</a>
				</li>
				<li>
					<a href="{$WEB_ROOT}/register.php"><i class="fa fa-user-plus"></i> Yeni Müşteri Kaydı</a>
				</li>
				<li>
					<a href="{$WEB_ROOT}/cart.php?a=view"><i class="fa fa-shopping-cart"></i> Alışveriş Sepeti</a>
				</li>
			</ul>
		</div>

		<div class="menu">
			<ul>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Alan Adı</a>
					<ul class="dropdown-menu">
						<li><a href="cart.php?a=add&domain=register">Alan Adı Kaydet</a></li>
						<li><a href="cart.php?a=add&domain=transfer">Alan Adı Transfer</a></li>
						<li><a href="cart.php?a=add&domain=register">.tr Uzantılı Alan Adı</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hosting</a>
					<ul class="dropdown-menu">
						<li><a href="web-hosting.php">Limitsiz cPanel Hosting</a></li>
						<li><a href="web-hosting.php">Linux Web Hosting</a></li>
						<li><a href="web-hosting.php">Windows Web Hosting</a></li>
						<li><a href="bayi-hosting.php">Linux Bayi Hosting</a></li>
						<li><a href="bayi-hosting.php#windowsbayi">Windows Bayi Hosting</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sunucu Hizmetleri</a>
					<ul class="dropdown-menu">
						<li><a href="kiralik-sunucu.php">Dedicated Sunucu</a></li>
						<li><a href="sanal-sunucu.php">Linux Sanal Sunucu</a></li>
						<li><a href="sanal-sunucu.php">Windows Sanal Sunucu</a></li>
						<li><a href="sunucu-barindirma.php">Sunucu Barındırma</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Aplikasyon Hosting</a>
					<ul class="dropdown-menu">
						<li><a href="aplikasyon-hosting.php">Linux Aplikasyon Hosting</a></li>
						<li><a href="aplikasyon-hosting.php">Windows Aplikasyon Hosting</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Diğer Hizmetler</a>
					<ul class="dropdown-menu">
						<li><a href="ssl-sertifikalari.php">SSL Sertifikaları</a></li>
						<li><a href="sunucu-lisanslari.php">Sunucu Lisansları</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Kurumsal</a>
					<ul class="dropdown-menu">
						<li><a href="hakkimizda.php">Hakkımızda</a></li>
						<li><a href="altyapi.php">Altyapı</a></li>
						<li><a href="ticari-bilgiler.php">Ticari Bilgiler</a></li>
						<li><a href="kariyer.php">OyunSunucuları'nda Kariyer</a></li>
						<li><a href="banka-hesap-bilgileri.php">Banka Hesap Bilgileri</a></li>
					</ul>
				</li>
				<li><a href="contact.php">İletişim</a></li>
				{if $adminMasqueradingAsClient || $adminLoggedIn}
				<li>
					<a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-logged-in-admin" data-toggle="tooltip" data-placement="top" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}">
						<i class="fa fa-sign-out"></i>
					</a>
				</li>
				{/if}
			</ul>
		</div>
	</div>
