<section id="navigator" class="kaydolNavigator">
	<div class="container">
		<h1>Yeni Hesap</h1>
		<p>Firmamızdan hizmet alarak profesyonel hizmetin tadını çıkarın.</p>
	</div>
</section>

<section id="page" class="backgroundf7f7f7">
	<div class="container">
		
		{if $registrationDisabled}
		    {include file="$template/includes/alert.tpl" type="error" msg=$LANG.registerCreateAccount|cat:' <strong><a href="cart.php" class="alert-link">'|cat:$LANG.registerCreateAccountOrder|cat:'</a></strong>'}
		{/if}

		{if $errormessage}
		    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
		{/if}

		{if !$registrationDisabled}
			<form method="post" action="{$smarty.server.PHP_SELF}" role="form">
				<input type="hidden" name="register" value="true" />

				<div class="tableRegister">
					<div class="cell">
						<div class="form">
							<label>
								{$LANG.clientareafirstname}
								<input type="text" name="firstname" value="{$clientfirstname}" {if !in_array('firstname', $optionalFields)}required{/if} />
							</label>
						</div>
						<div class="form">
							<label>
								{$LANG.clientarealastname}
								<input type="text" name="lastname" value="{$clientlastname}" {if !in_array('lastname', $optionalFields)}required{/if} />
							</label>
						</div>
						<div class="form">
							<label>
								{$LANG.clientareacompanyname}
								<input type="text" name="companyname" value="{$clientcompanyname}" />
							</label>
						</div>
						<div class="form">
							<label>
								{$LANG.clientareaemail}
								<input type="email" name="email" value="{$clientemail}" />
							</label>
						</div>
						<div class="form">
							<label>
								{$LANG.clientareapassword}
								<input type="password" name="password" value="" />
							</label>
						</div>
						<div class="form">
							<label>
								{$LANG.clientareaconfirmpassword}
								<input type="password" name="password2" value="" />
							</label>
						</div>

						{if $securityquestions}
							<div class="form">
								<label>
									Gizli Sorunuz:
									<select name="securityqid">
			                            {foreach key=num item=question from=$securityquestions}
			                                <option value={$question.id}>{$question.question}</option>
			                            {/foreach}
			                        </select>
								</label>
							</div>
							<div class="form">
								<label>
									{$LANG.clientareasecurityanswer}
									<input type="password" name="securityqans" autocomplete="off" />
								</label>
							</div>
						{/if}
						{include file="$template/includes/captcha.tpl"}
					</div>
					<div class="cell">
						<div class="form">
							<label>
								{$LANG.clientareaaddress1}
								<input type="text" name="address1" value="{$clientaddress1}" {if !in_array('address1', $optionalFields)}required{/if} />
							</label>
						</div>
						<div class="form">
							<label>
								{$LANG.clientareaaddress2}
								<input type="text" name="address2" value="{$clientaddress2}" {if !in_array('address2', $optionalFields)}required{/if} />
							</label>
						</div>
						<div class="form">
							<label>
								{$LANG.clientareacity}
								<input type="text" name="city" value="{$clientcity}" {if !in_array('city', $optionalFields)}required{/if} />
							</label>
						</div>
						<div class="form">
							<label>
								{$LANG.clientareastate}
								<input type="text" name="state" value="{$clientstate}" {if !in_array('state', $optionalFields)}required{/if} />
							</label>
						</div>
						<div class="form">
							<label>
								{$LANG.clientareapostcode}
								<input type="text" name="postcode" value="{$clientpostcode}" {if !in_array('postcode', $optionalFields)}required{/if} />
							</label>
						</div>
						<div class="form">
							<label>
								{$LANG.clientareacountry}
								<select id="country" name="country">
			                        {foreach $clientcountries as $countryCode => $countryName}
			                            <option value="{$countryCode}"{if (!$clientcountry && $countryCode eq $defaultCountry) || ($countryCode eq $clientcountry)} selected="selected"{/if}>
			                                {$countryName}
			                            </option>
			                        {/foreach}
			                    </select>
							</label>
						</div>
						<div class="form">
							<label>
								{$LANG.clientareaphonenumber}
								<input type="tel" name="phonenumber" value="{$clientphonenumber}" {if !in_array('phonenumber', $optionalFields)}required{/if} />
							</label>
						</div>
						{if $customfields}
							{foreach from=$customfields key=num item=customfield}
								<div class="form">
									<label>
										{$customfield.name}
										{$customfield.input}
									</label>
								</div>
							{/foreach}
						{/if}
					</div>
				</div>

				{if $accepttos}
					<div class="backgroundfff padding14">
						<label>
							<input type="checkbox" name="accepttos" />
							{$LANG.ordertosagreement} <a href="{$tosurl}" target="_blank">{$LANG.ordertos}</a>
						</label>
					</div>
				{/if}

				<div class="backgroundfff padding14 text-center">
					<button type="submit" class="customButon"><i class="fa fa-send"></i> {$LANG.clientregistertitle}</button>
				</div>

			</form>
		{/if}

	</div>
</section>