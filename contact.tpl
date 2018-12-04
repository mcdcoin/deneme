	<section id="googleHarita">
		<div class="toolbarAdres">
			<div class="logo">
				<img src="templates/{$template}/assets/img/headlogo.png" alt="" />
				<div>OyunSunuculari.com Demir Telekomünikasyon İlkay Demir.</div>
			</div>
			<div>
				<i class="fa fa-coffee"></i>
				<a>Lüleburgaz ofisimize kahve içmeye bekleriz.</a>
			</div>
			<div>
				<i class="fa fa-location-arrow"></i> 
				<a href="#">Siteler Mahallesi Karaca Sok. <span>No: 70/12 Lüleburgaz / Kırklareli</span></a>
			</div>
			<div>
				<i class="fa fa-phone"></i>
				<a href="tel:05417380312">0 541 738 0312</a>
			</div>
			<div>
				<i class="fa fa-envelope"></i>
				<a href="mailto:info@oyunsunuculari.com">info@oyunsunuculari.com</a>
			</div>
			<div>
				<i class="fa fa-send"></i>
				<a href="#" data-toggle="modal" data-target="#bizeMesajGonderin">Bize Mesaj Gönderin</a>
			</div>
		</div>
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d471.3718114126807!2d27.35817143697667!3d41.39527610668669!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b4a4ad6da38513%3A0xf12a91f0c5b6da28!2sSiteler+Mahallesi%2C+39750+L%C3%BCleburgaz%2FK%C4%B1rklareli!5e0!3m2!1str!2str!4v1543951515389" width="100%" height="700" frameborder="0" border="0" allowfullscreen></iframe>
		
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