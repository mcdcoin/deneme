	<section id="slider">
		<div class="container">
			<div id="indexSlide" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<div class="image">
							<img src="templates/{$template}/assets/img/cloud-server.png" alt="+ Bulut Sunucular" />
						</div>
						<div class="slideContent">
							<h1>Bulut Sunucular</h1>
							<p>Cloud hosting, birden fazla sunucunun birbiri ile bağlanmasından oluşan bir servistir. Sunucuların aynı veri merkezi içinde olma zorunluluğu da yoktur, bir network ile birbirlerine bağlı olmaları yeterlidir. Hatta yurtdışındaki bazı firmalar sunucularını farklı kıtalardaki farklı veri merkezlerinden tutmaktadır.</p>
						</div>
					</div>
					<div class="item">
						<div class="image">
							<img src="templates/{$template}/assets/img/cloud-server.png" alt="+ Bulut Sunucular" />
						</div>
						<div class="slideContent">
							<h1>Bulut Sunucular</h1>
							<p>Cloud hosting, birden fazla sunucunun birbiri ile bağlanmasından oluşan bir servistir. Sunucuların aynı veri merkezi içinde olma zorunluluğu da yoktur, bir network ile birbirlerine bağlı olmaları yeterlidir. Hatta yurtdışındaki bazı firmalar sunucularını farklı kıtalardaki farklı veri merkezlerinden tutmaktadır.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="ilgiAlanlari">
		<div class="container">
			<div class="ilgiAlaniSecin">
				<ul class="nav-justified" role="tablist">
					<li role="presentation"><a href="#webhosting" aria-controls="webhosting" role="tab" data-toggle="tab">Web Hosting</a></li>
					<li role="presentation" class="active"><a href="#domains" aria-controls="domains" role="tab" data-toggle="tab">Alan Adı</a></li>
					<li role="presentation"><a href="#servers" aria-controls="servers" role="tab" data-toggle="tab">Sunucu Hizmetleri</a></li>
				</ul>
			</div>
			<div class="clear"></div>
			<div class="ilgiAlanlariField">
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane fade in active" id="domains">
						<h2 class="title">
							<strong>Alan Adıyla</strong>
							İnternetteki yerinizi alın
						</h2>
						<div class="subContain alanAdiSorgula">
							<div class="sorguKismi">
								<form method="post" action="cart.php?a=add&domain=register">
									<div class="domainName">
										<span>www.</span>
										<input type="text" name="domain" value=" örn. example.com" onfocus="if(this.value==' örn. example.com')this.value=''" onblur="if(this.value=='')this.value=' örn. example.com'" />
										<button type="submit">
											<i class="fa fa-search"></i> <span>Sorgula</span>
										</button>
									</div>
									<div class="domainTLD">
										<label><input type="radio" name="uzanti" value=".com" checked="checked" /> <span>.com</span></label>
										<label><input type="radio" name="uzanti" value=".net" /> <span>.net</span></label>
										<label><input type="radio" name="uzanti" value=".org" /> <span>.org</span></label>
										<label><input type="radio" name="uzanti" value=".biz" /> <span>.biz</span></label>
										<label><input type="radio" name="uzanti" value=".com.tr" /> <span>.com.tr</span></label>
										<label><input type="radio" name="uzanti" value=".net.tr" /> <span>.net.tr</span></label>
										<label><input type="radio" name="uzanti" value=".org.tr" /> <span>.org.tr</span></label>
										<label><input type="radio" name="uzanti" value=".ist" /> <span>.ist</span></label>
										<label><input type="radio" name="uzanti" value=".istanbul" /> <span>.istanbul</span></label>
										<label><input type="radio" name="uzanti" value=".co" /> <span>.co</span></label>
										<label><input type="radio" name="uzanti" value=".xyz" /> <span>.xyz</span></label>
									</div>
								</form>
							</div>
							<div class="ozellikKismi">
								<ul>
									<li><i class="fa fa-check"></i> Anında Aktivasyon</li>
									<li><i class="fa fa-check"></i> Ücretsiz DNS Tanımlama</li>
									<li><i class="fa fa-check"></i> Mobil Uyumlu Kontrol Paneli</li>
									<li><i class="fa fa-check"></i> Kredi Kartı ile Ödeme!</li>
								</ul>
							</div>
						</div>

						<div class="subContain alanAdiYonetimi">
							<div class="slideOzellikler">
								<div class="leftIcon">
									<a href="#alanAdiOzellikleri" role="button" data-slide="prev">
										<i class="fa fa-angle-left"></i>
									</a>
								</div>
								<div class="centerContain">
									<div id="alanAdiOzellikleri" class="carousel slide" data-ride="carousel">
										<div class="carousel-inner" role="listbox">
											<div class="item active">
												<ul class="nav-justified">
													<li>
														<a href="#">
															<i class="fa fa-user-secret"></i>
															<h3>WHOIS Gizleme</h3>
															<p>Alan adı sorgulamasında kişisel bilgilerinizin çıkmasını gizleyebilirsiniz.</p>
														</a>
													</li>
													<li>
														<a href="#">
															<i class="fa fa-lock"></i>
															<h3>Alan Adı Kilitleme</h3>
															<p>Alan adınızı kilitleyerek koruyabilir ve çalınma riskini ortadan kaldırabilirsiniz.</p>
														</a>
													</li>
													<li>
														<a href="#">
															<i class="fa fa-server"></i>
															<h3>Özel DNS Sunucusu</h3>
															<p>Kendi DNS sunucunuzu oluşturarak markanızın değerini arttırabilirsiniz.</p>
														</a>
													</li>
												</ul>
											</div>
											<div class="item">
												<ul class="nav-justified">
													<li>
														<a href="#">
															<i class="fa fa-user-secret"></i>
															<h3>WHOIS Gizleme</h3>
															<p>Alan adı sorgulamasında kişisel bilgilerinizin çıkmasını gizleyebilirsiniz.</p>
														</a>
													</li>
													<li>
														<a href="#">
															<i class="fa fa-lock"></i>
															<h3>Alan Adı Kilitleme</h3>
															<p>Alan adınızı kilitleyerek koruyabilir ve çalınma riskini ortadan kaldırabilirsiniz.</p>
														</a>
													</li>
													<li>
														<a href="#">
															<i class="fa fa-server"></i>
															<h3>Özel DNS Sunucusu</h3>
															<p>Kendi DNS sunucunuzu oluşturarak markanızın değerini arttırabilirsiniz.</p>
														</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="rightIcon">
									<a href="#alanAdiOzellikleri" role="button" data-slide="next">
										<i class="fa fa-angle-right"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="webhosting">

						<h2 class="title">
							<strong>Multi Platform</strong>
							Web Hosting
						</h2>

						<ul id="homeHosting" class="nav-justified">
							<li>
								<div class="hostPaket">
									<div class="title">
										<h3>BUDGET</h3>
										<div class="progress">
											<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 30%;"></div>
										</div>
									</div>

									<div class="desc">
										<ul>
											<li>
												<div>1 Web Sitesi Barındırma</div>
												<div>1 Sub-domain</div>
											</li>
											<li>
												<div>1 GB SSD Disk Alanı</div>
												<div>20 GB Aylık Trafik</div>
											</li>
											<li>
												<div>5 E-Posta Hesabı</div>
												<div>1 MySQL Veritabanı</div>
											</li>
											<li>
												<div>cPanel ya da Plesk Kontrol Paneli</div>
												<div>Limitlendirilmemiş Alt Özellikler</div>
											</li>
										</ul>
									</div>

									<div class="satinAlma">
										<div class="price">
											$ 5 USD + KDV
											<span>aylık ödeme</span>
										</div>
										<div class="text-center">
											<a href="#" class="siparisVer">
												<i class="fa fa-shopping-cart"></i>
												<span>Sipariş Ver</span>
											</a>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="hostPaket">
									<div class="title">
										<h3>UNLIMITED</h3>
										<div class="progress">
											<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;"></div>
										</div>
									</div>

									<div class="desc">
										<ul>
											<li>
												<div>10 Web Sitesi Barındırma</div>
												<div>Limitsiz Sub-domain</div>
											</li>
											<li>
												<div>Limitsiz SSD Disk Alanı</div>
												<div>Limitsiz Aylık Trafik</div>
											</li>
											<li>
												<div>Limitsiz E-Posta Hesabı</div>
												<div>Limitsiz MySQL Veritabanı</div>
											</li>
											<li>
												<div>cPanel ya da Plesk Kontrol Paneli</div>
												<div>Limitlendirilmemiş Alt Özellikler</div>
											</li>
										</ul>
									</div>

									<div class="satinAlma">
										<div class="price">
											$ 10 USD + KDV
											<span>aylık ödeme</span>
										</div>
										<div class="text-center">
											<a href="#" class="siparisVer">
												<i class="fa fa-shopping-cart"></i>
												<span>Sipariş Ver</span>
											</a>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="hostPaket">
									<div class="title">
										<h3>UNLIMITED +</h3>
										<div class="progress">
											<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
										</div>
									</div>

									<div class="desc">
										<ul>
											<li>
												<div>Limitsiz Web Sitesi Barındırma</div>
												<div>Limitsiz Sub-domain</div>
											</li>
											<li>
												<div>Limitsiz SSD Disk Alanı</div>
												<div>Limitsiz Aylık Trafik</div>
											</li>
											<li>
												<div>Limitsiz E-Posta Hesabı</div>
												<div>Limitsiz MySQL Veritabanı</div>
											</li>
											<li>
												<div>cPanel ya da Plesk Kontrol Paneli</div>
												<div>Limitlendirilmemiş Alt Özellikler</div>
											</li>
										</ul>
									</div>

									<div class="satinAlma">
										<div class="price">
											$ 25 USD + KDV
											<span>aylık ödeme</span>
										</div>
										<div class="text-center">
											<a href="#" class="siparisVer">
												<i class="fa fa-shopping-cart"></i>
												<span>Sipariş Ver</span>
											</a>
										</div>
									</div>
								</div>
							</li>
						</ul>

					</div>
					<div role="tabpanel" class="tab-pane fade" id="servers">
						<h2 class="title">
							<strong>SSD Diskli</strong>
							Sanal Sunucular
						</h2>
						<div class="servers">
							<ul class="sanalsunucular">
			          <li>
			            <div class="servername">
			              <div>VDS-TR-DELL-R210-1</div>
			              <img src="templates/{$template}/assets/img/hp-server.jpg" alt="">
			            </div>
			            <div class="cpu">
			              <div><img src="templates/{$template}/assets/img/cpu-icon-v2.png" alt=""></div>
			              <div>
			                <div>Intel Xeon E3-1260</div>
			                <div>1 Core</div>
			              </div>
			            </div>
			            <div class="bellek">
			              <div><img src="templates/{$template}/assets/img/ram-icon-v2.png" alt=""></div>
			              <div>
			                <div>1 GB DDR4</div>
			                <div>2333 MHz Bellek</div>
			              </div>
			            </div>
			            <div class="disk">
			              <div><img src="templates/{$template}/assets/img/hdd-v2.png" alt=""></div>
			              <div>
			                <div>50 GB</div>
			                <div>SSD Disk</div>
			              </div>
			            </div>
			            <div class="bandwith">
			              <div><img src="templates/{$template}/assets/img/bandwith-v2.png" alt=""></div>
			              <div>
			                <div>1GBit İnternet</div>
			                <div>Limitsiz Trafik</div>
			              </div>
			            </div>
			            <div class="fiyat">
			              <div><img src="templates/{$template}/assets/img/shopping-cart.png" alt=""></div>
			              <div>
			                <div>25.45 TL</div>
			                <div>+ KDV / aylık</div>
			              </div>
			            </div>
			            <div class="satinal">
			              <div class="selectos">
			                <ul>
			                  <li><a href="#"><i class="fa fa-linux"></i></a></li>
			                  <li><a href="#"><i class="fa fa-windows"></i></a></li>
			                </ul>
			              </div>
			              <a href="#" class="siparisVer">
			                <i class="fa fa-shopping-cart"></i>
			                <span>Satın Al</span>
			              </a>
			            </div>
			          </li>
			          <li>
			            <div class="servername">
			              <div>VDS-TR-DELL-R210-1</div>
			              <img src="templates/{$template}/assets/img/hp-server.jpg" alt="">
			            </div>
			            <div class="cpu">
			              <div><img src="templates/{$template}/assets/img/cpu-icon-v2.png" alt=""></div>
			              <div>
			                <div>Intel Xeon E3-1260</div>
			                <div>1 Core</div>
			              </div>
			            </div>
			            <div class="bellek">
			              <div><img src="templates/{$template}/assets/img/ram-icon-v2.png" alt=""></div>
			              <div>
			                <div>1 GB DDR4</div>
			                <div>2333 MHz Bellek</div>
			              </div>
			            </div>
			            <div class="disk">
			              <div><img src="templates/{$template}/assets/img/hdd-v2.png" alt=""></div>
			              <div>
			                <div>50 GB</div>
			                <div>SSD Disk</div>
			              </div>
			            </div>
			            <div class="bandwith">
			              <div><img src="templates/{$template}/assets/img/bandwith-v2.png" alt=""></div>
			              <div>
			                <div>1GBit İnternet</div>
			                <div>Limitsiz Trafik</div>
			              </div>
			            </div>
			            <div class="fiyat">
			              <div><img src="templates/{$template}/assets/img/shopping-cart.png" alt=""></div>
			              <div>
			                <div>25.45 TL</div>
			                <div>+ KDV / aylık</div>
			              </div>
			            </div>
			            <div class="satinal">
			              <div class="selectos">
			                <ul>
			                  <li><a href="#"><i class="fa fa-linux"></i></a></li>
			                  <li><a href="#"><i class="fa fa-windows"></i></a></li>
			                </ul>
			              </div>
			              <a href="#" class="siparisVer">
			                <i class="fa fa-shopping-cart"></i>
			                <span>Satın Al</span>
			              </a>
			            </div>
			          </li>
			          <li>
			            <div class="servername">
			              <div>VDS-TR-DELL-R210-1</div>
			              <img src="templates/{$template}/assets/img/hp-server.jpg" alt="">
			            </div>
			            <div class="cpu">
			              <div><img src="templates/{$template}/assets/img/cpu-icon-v2.png" alt=""></div>
			              <div>
			                <div>Intel Xeon E3-1260</div>
			                <div>1 Core</div>
			              </div>
			            </div>
			            <div class="bellek">
			              <div><img src="templates/{$template}/assets/img/ram-icon-v2.png" alt=""></div>
			              <div>
			                <div>1 GB DDR4</div>
			                <div>2333 MHz Bellek</div>
			              </div>
			            </div>
			            <div class="disk">
			              <div><img src="templates/{$template}/assets/img/hdd-v2.png" alt=""></div>
			              <div>
			                <div>50 GB</div>
			                <div>SSD Disk</div>
			              </div>
			            </div>
			            <div class="bandwith">
			              <div><img src="templates/{$template}/assets/img/bandwith-v2.png" alt=""></div>
			              <div>
			                <div>1GBit İnternet</div>
			                <div>Limitsiz Trafik</div>
			              </div>
			            </div>
			            <div class="fiyat">
			              <div><img src="templates/{$template}/assets/img/shopping-cart.png" alt=""></div>
			              <div>
			                <div>25.45 TL</div>
			                <div>+ KDV / aylık</div>
			              </div>
			            </div>
			            <div class="satinal">
			              <div class="selectos">
			                <ul>
			                  <li><a href="#"><i class="fa fa-linux"></i></a></li>
			                  <li><a href="#"><i class="fa fa-windows"></i></a></li>
			                </ul>
			              </div>
			              <a href="#" class="siparisVer">
			                <i class="fa fa-shopping-cart"></i>
			                <span>Satın Al</span>
			              </a>
			            </div>
			          </li>
			        </ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="nedenBiz">
		<div class="container">
			<div>
				<ul class="sekme nav-justified" role="tablist">
					<li role="presentation" class="active"><a href="#altyapi" aria-controls="altyapi" role="tab" data-toggle="tab">Altyapı</a></li>
					<li role="presentation"><a href="#ucretsiztasima" aria-controls="ucretsiztasima" role="tab" data-toggle="tab">Ücretsiz Taşıma</a></li>
					<li role="presentation"><a href="#destek" aria-controls="destek" role="tab" data-toggle="tab">Destek</a></li>
				</ul>

				<div class="tab-content">
					<div role="tabpanel" class="tab-pane fade in active" id="altyapi">
    					<h1>Güçlü Altyapı <strong>Yüksek Performans</strong></h1>

						<div class="text-center">
							<img src="templates/{$template}/assets/img/cloud-server2.png" class="width60" alt="" />
						</div>

						<p>Web siteleriniz, verimerkezinin bulunduğu lokasyonda Türk Telekom, Turk Telekom International, Superonline, Vodafone, TurkNet ve Grid Telekom’un fiber altyapılarına doğrudan bağlanabilmektedir. Bağlantı, birebir yedekli ve toplam 1,6 Tbit/s kapasiteli Brocade NetIron XMR 16000’ler ile gerçekleştirilir. yine birebir yedekli Brocade MLXe-16 aggregation router’lar üzerinden network omurgasına bağlanır. İnternet servislerinde yük dengelemesi için Brocade ServerIron ADX 1000 switch’ler kullanılmaktadır.</p>
					</div>
				    <div role="tabpanel" class="tab-pane fade" id="ucretsiztasima">
				    	<div class="ucretsizTasima">
				    		<div class="image">
				    			<img src="templates/{$template}/assets/img/tasima-kahve.png" alt="">
				    		</div>
				    		<div class="content">
				    			<h1>Ücretsiz <strong>Taşıma</strong></h1>
				    			<p>Sitenizin DNS tanımlamaları, hesapların oluşturulması işlemlerinde sitenizi taşımak sizi yorabilir ve keyfinizi kaçırabilir. Sitelerinizi aldığınız hostinge uzman ekibimiz ile taşıma işlemini gerçekleştirirken siz kahvenizi keyifle içebilirsiniz.</p>
				    		</div>
				    	</div>
				    </div>
				    <div role="tabpanel" class="tab-pane fade" id="destek">
				    	<ul class="nedenBizDestek nav-justified">
				    		<li>
				    			<i class="fa fa-wordpress"></i>
				    			<h2>WordPress ile Uyumlu</h2>
				    			<p>Yeni bir blog sitesi mi açmak istiyorsunuz tüm hostingler WordPress ile uyumlu.</p>
				    		</li>
				    		<li>
				    			<i class="fa fa-server"></i>
				    			<h2>Haftalık Yedekleme</h2>
				    			<p>Verileriniz her hafta düzenli olarak yedeklenir, veri kayıplarının önüne geçilir.</p>
				    		</li>
				    		<li>
				    			<i class="fa fa-send-o"></i>
				    			<h2>Ticket Desteği</h2>
				    			<p>Destek sistemimiz sayesinde e-posta aracılığıyla 7/24 ticket desteği alabilirsiniz.</p>
				    		</li>
				    	</ul>
				    	<ul class="nedenBizDestek nav-justified">
				    		<li>
				    			<i class="fa fa-wordpress"></i>
				    			<h2>WordPress ile Uyumlu</h2>
				    			<p>Yeni bir blog sitesi mi açmak istiyorsunuz tüm hostingler WordPress ile uyumlu.</p>
				    		</li>
				    		<li>
				    			<i class="fa fa-server"></i>
				    			<h2>Haftalık Yedekleme</h2>
				    			<p>Verileriniz her hafta düzenli olarak yedeklenir, veri kayıplarının önüne geçilir.</p>
				    		</li>
				    		<li>
				    			<i class="fa fa-send-o"></i>
				    			<h2>Ticket Desteği</h2>
				    			<p>Destek sistemimiz sayesinde e-posta aracılığıyla 7/24 ticket desteği alabilirsiniz.</p>
				    		</li>
				    	</ul>
				    </div>
				</div>
			</div>
		</div>
	</section>

	<section id="referanslar">
		<div id="title">
			<div class="container">
				<h2>Referanslar <span>bizi tercih edenler</span></h2>
				<div class="controller">
					<a href="#referansSlide" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
					<a href="#referansSlide" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
				</div>
			</div>
		</div>
		<div id="logolar">
			<div class="container">
				<div id="referansSlide" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="templates/{$template}/assets/img/dell-logo.png" alt="">
							<img src="templates/{$template}/assets/img/epson-logo.png" alt="">
							<img src="templates/{$template}/assets/img/intel-logo.png" alt="">
							<img src="templates/{$template}/assets/img/cpanel-logo.png" alt="">
							<img src="templates/{$template}/assets/img/juniper-logo.png" alt="">
						</div>
						<div class="item">
							<img src="templates/{$template}/assets/img/dell-logo.png" alt="">
							<img src="templates/{$template}/assets/img/epson-logo.png" alt="">
							<img src="templates/{$template}/assets/img/intel-logo.png" alt="">
							<img src="templates/{$template}/assets/img/cpanel-logo.png" alt="">
							<img src="templates/{$template}/assets/img/juniper-logo.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
