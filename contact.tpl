	<section id="googleHarita">
		<div class="toolbarAdres">
			<div class="logo">
				<img src="templates/{$template}/assets/img/headlogo.png" alt="" />
				<div>Bilgisayar ve İnternet Hizmetleri A.Ş.</div>
			</div>
			<div>
				<i class="fa fa-coffee"></i>
				<a>4. Levent ofisimize kahve içmeye bekleriz.</a>
			</div>
			<div>
				<i class="fa fa-location-arrow"></i> 
				<a href="#">Sanayi Mh. Gümüşhane Cd. <span>No: 24/B Kağıthane / İSTANBUL</span></a>
			</div>
			<div>
				<i class="fa fa-phone"></i>
				<a href="tel:08500000000">0850 000 0 000</a>
			</div>
			<div>
				<i class="fa fa-envelope"></i>
				<a href="mailto:info@posistanbul.com">info@posistanbul.com</a>
			</div>
			<div>
				<i class="fa fa-send"></i>
				<a href="#" data-toggle="modal" data-target="#bizeMesajGonderin">Bize Mesaj Gönderin</a>
			</div>
		</div>
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1503.5247978847067!2d28.99325165818292!3d41.08976299482313!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cab688d9d8123b%3A0xa5bd4f33d88f6f3e!2zU2FuYXlpLCBCZXJla2V0IFNha2HEn8SxIE5vOjM1LCAzNDQxNSBLYcSfxLF0aGFuZS_EsHN0YW5idWwsIFTDvHJraXll!5e0!3m2!1str!2s!4v1478815524050" width="100%" height="700" frameborder="0" border="0" allowfullscreen></iframe>
	</section>

	<!-- bize mesaj gönderin -->
	<div class="modal fade" id="bizeMesajGonderin" tabindex="-1" role="dialog" aria-labelledby="bizeMesajGonderinLabel">
		<div class="modal-dialog" role="document">
			<div class="customModalContainer">
				<div class="modalHead">
					Bize Mesaj Gönderin
					<span style="float:right; cursor:pointer;" data-dismiss="modal" aria-label="Kapat">
						<i class="material-icons">close</i>
					</span>
				</div>
				<div class="modalDocument">
					{if $sent}
					    {include file="$template/includes/alert.tpl" type="success" msg=$LANG.contactsent textcenter=true}
					{/if}

					{if $errormessage}
					    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
					{/if}
					<form action="contact.php" role="form" method="post">
						<input type="hidden" name="action" value="send" />
						<input type="text" name="name" placeholder="Adınız" />
						<input type="text" name="email" placeholder="E-Posta Adresiniz">
						<input type="text" name="subject" placeholder="Konu" />
						<textarea name="message" placeholder="Mesajınız" rows="5"></textarea>
						<div class="text-center">{include file="$template/includes/captcha.tpl"}</div>
						<button type="submit">
							<i class="fa fa-send"></i> {$LANG.contactsend}
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>