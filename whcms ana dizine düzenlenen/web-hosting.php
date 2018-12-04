<?php
	/* ****** ***********************************  *
	** ****** Demir Telekomunikasyon			   *
	** ****** WHMCS 7 Oyunsunuculari.com Theme	   *
	** ****** v1.0.0 - Tüm hakları saklıdır.       *
	** ****** www.mesutcandemir.com.tr			   *
	** ****** R10.NET @mesutcandemir			   *
	** ****** *********************************** */

	use WHMCS\ClientArea;
	use WHMCS\Database\Capsule;

	define("CLIENTAREA", true);

	require_once 'init.php';

	$ClientArea = new ClientArea();
	$ClientArea -> setPageTitle("Multi Platform Web Hosting");
	$ClientArea -> addToBreadCrumb("index.php", Lang::trans("globalsystemname"));
	$ClientArea -> addToBreadCrumb("web-hosting.php", "İster Windows, İster Linux ihtiyacına uygun olanı seç.");

	$ClientArea -> initPage();

	// Eğer sadece müşteriler görecekse sayfayı
	//$ClientArea -> requireLogin();

	// Giriş Durumu
	if ( $ClientArea -> isLoggedIn() ) {
		// Giriş yapıldı
		$kayitAdi = Capsule::table("tblclients") -> where("id", "=", $ClientArea -> getUserID()) -> pluck("firstname");
		$ClientArea -> assign("clientname", $kayitAdi);
	}else{
		// Eğer giriş yapılmamış ise
		// kayıt adına ne yazılmasını isterseniz
		// standart olarak "Ziyaretçi" olarak geçer.
		$ClientArea -> assign("clientname", "Ziyaretçi");
	}

	// TPL dosyasını yükle
	// linux-hosting.tpl --> linux-hosting gibi düzenlenir
	$ClientArea -> setTemplate("web-hosting");

	$ClientArea -> output();
?>