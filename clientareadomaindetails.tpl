{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Alan Adınızı Yönetin</h1>
		<p>Alan adınızı tamamen tüm bilgilerini ve ödeme işlemlerini buradan gerçekleştirebilirsiniz.</p>
	</div>
</section>
<section id="page">
	<div class="container">

		{if $systemStatus != 'Active'}
			<div class="alert alert-warning text-center" role="alert">
				{$LANG.domainCannotBeManagedUnlessActive}
			</div>
		{/if}

		{if $lockstatus eq "unlocked"}
			{capture name="domainUnlockedMsg"}<strong>{$LANG.domaincurrentlyunlocked}</strong><br />{$LANG.domaincurrentlyunlockedexp}{/capture}
			{include file="$template/includes/alert.tpl" type="error" msg=$smarty.capture.domainUnlockedMsg}
		{/if}

		{if $systemStatus == 'Active'
            and (
                $managementoptions.nameservers or
                $managementoptions.contacts or
                $managementoptions.locking or
                $renew)}
		<ul id="clientareaAlanAdiTabMenu" class="nav-justified" role="tablist">
			<li role="presentation" class="active"><a href="#overview" aria-controls="overview" role="tab" data-toggle="tab">Genel Bakış</a></li>
			{if $managementoptions.nameservers}
			<li role="presentation"><a href="#NameServers" aria-controls="NameServers" role="tab" data-toggle="tab">NS Adresleri</a></li>
			{/if}
			{if $managementoptions.contacts}
			<li role="presentation"><a href="clientarea.php?action=domaincontacts&domainid={$domainid}">İletişim Bilgileri</a></li>
			{/if}
			{if $managementoptions.locking}
			<li role="presentation"><a href="#changeRegLock" aria-controls="changeRegLock" role="tab" data-toggle="tab">Registrar Kilidi</a></li>
			{/if}
			{if $renew}
			<li role="presentation"><a href="#renewYourDomain" aria-controls="renewYourDomain" role="tab" data-toggle="tab">Otomatik Yenile</a></li>
			{/if}
			<li role="presentation"><a href="clientarea.php?action=domainregisterns&domainid={$domainid}">Özel Nameserverlar</a></li>
			<li role="presentation"><a href="clientarea.php?action=domaindns&domainid={$domainid}">DNS Yönetimi</a></li>
		</ul>
		{/if}

		<div id="clientareaAlanAdiTabMenu" class="tab-content">
			<div role="tabpanel" class="tab-pane fade in active" id="overview">
				<div id="domainOverview">
					<div class="row">
			            <div class="col-md-6">
			                <h4><strong>{$LANG.clientareahostingdomain}:</strong></h4> <a href="http://{$domain}" target="_blank">{$domain}</a>
			            </div>
			            <div class="col-md-6">
			                <h4><strong>{$LANG.firstpaymentamount}:</strong></h4> <span>{$firstpaymentamount}</span>
			            </div>
			        </div>
			        <div class="row">
			            <div class="col-md-6">
			                <h4><strong>{$LANG.clientareahostingregdate}:</strong></h4> <span>{$registrationdate}</span>
			            </div>
			            <div class="col-md-6">
			                <h4><strong>{$LANG.recurringamount}:</strong></h4> {$recurringamount} {$LANG.every} {$registrationperiod} {$LANG.orderyears}
			            </div>
			        </div>
			        <div class="row">
			            <div class="col-md-6">
			                <h4><strong>{$LANG.clientareahostingnextduedate}:</strong></h4> {$nextduedate}
			            </div>
			            <div class="col-md-6">
			                <h4><strong>{$LANG.orderpaymentmethod}:</strong></h4> {$paymentmethod}
			            </div>
			        </div>
			        <div class="row">
			            <div class="col-md-6">
			                <h4><strong>{$LANG.clientareastatus}:</strong></h4> {$status}
			            </div>
			        </div>
				</div>
			</div>
			<div role="tabpanel" class="tab-pane fade" id="whoisContact">
				<h3>{$LANG.domaincontactinfo}</h3>

				{include file="$template/includes/alert.tpl" type="info" msg=$LANG.whoisContactWarning}

				{if $successful}
				    {include file="$template/includes/alert.tpl" type="success" msg=$LANG.changessavedsuccessfully textcenter=true}
				{/if}

				{if $error}
				    {include file="$template/includes/alert.tpl" type="error" msg=$error textcenter=true}
				{/if}

				<form method="post" action="{$smarty.server.PHP_SELF}?action=domaincontacts">

				    <input type="hidden" name="sub" value="save" />
				    <input type="hidden" name="domainid" value="{$domainid}" />

				    <div class="row">

				        {foreach from=$contactdetails name=contactdetails key=contactdetail item=values}

				            <div class="col-md-6">

				                <h4>{$contactdetail} {$LANG.supportticketscontact}</h4>

				                <div class="radio">
				                    <label>
				                        <input type="radio" name="wc[{$contactdetail}]" id="{$contactdetail}1" value="contact" onclick="useDefaultWhois(this.id)" />
				                        {$LANG.domaincontactusexisting}
				                    </label>
				                </div>

				                <div class="row">
				                    <div class="col-xs-offset-1 col-xs-10">
				                        <div class="form-group">
				                            <label for="{$contactdetail}3">{$LANG.domaincontactchoose}</label>
				                            <select id="{$contactdetail}3" class="form-control {$contactdetail}defaultwhois" name="sel[{$contactdetail}]" disabled>
				                                <option value="u{$clientsdetails.userid}">{$LANG.domaincontactprimary}</option>
				                                {foreach key=num item=contact from=$contacts}
				                                    <option value="c{$contact.id}">{$contact.name}</option>
				                                {/foreach}
				                            </select>
				                        </div>
				                    </div>
				                </div>

				                <div class="radio">
				                    <label>
				                        <input type="radio" name="wc[{$contactdetail}]" id="{$contactdetail}2" value="custom" onclick="useCustomWhois(this.id)" checked />
				                        {$LANG.domaincontactusecustom}
				                    </label>
				                </div>

				                {foreach key=name item=value from=$values}
				                    <div class="form-group">
				                        <label>{$name}</label>
				                        <input type="text" name="contactdetails[{$contactdetail}][{$name}]" value="{$value}" class="form-control {$contactdetail}customwhois" />
				                    </div>
				                {/foreach}

				            </div>

				        {/foreach}

				    </div>

				    <br />

				    <p class="text-center">
				        <input type="submit" value="{$LANG.clientareasavechanges}" class="standartButon yesilButon" />
				        <input type="reset" value="{$LANG.clientareacancel}" class="standartButon" />
				    </p>

				</form>
			</div>
			<div role="tabpanel" class="tab-pane fade" id="changeRegLock">
				<h3>{$LANG.domainregistrarlock}</h3>

		        {if $subaction eq "savereglock"}
		            {if $updatesuccess}
		                {include file="$template/includes/alert.tpl" type="success" msg=$LANG.changessavedsuccessfully textcenter=true}
		            {elseif $error}
		                {include file="$template/includes/alert.tpl" type="error" msg=$error textcenter=true}
		            {/if}
		        {/if}

		        {include file="$template/includes/alert.tpl" type="info" msg=$LANG.domainlockingexp}

		        <br />

		        <h2 class="text-center">{$LANG.domainreglockstatus}: <span class="label label-{if $lockstatus == "locked"}success{else}danger{/if}">{if $lockstatus == "locked"}{$LANG.domainsautorenewenabled}{else}{$LANG.domainsautorenewdisabled}{/if}</span></h2>

		        <br />
		        <br />

		        <form method="post" action="{$smarty.server.PHP_SELF}?action=domaindetails#changeRegLock">
		            <input type="hidden" name="id" value="{$domainid}">
		            <input type="hidden" name="sub" value="savereglock" />
		            {if $lockstatus=="locked"}
		                <p class="text-center">
		                    <input type="submit" class="btn btn-lg btn-danger" value="{$LANG.domainreglockdisable}" />
		                </p>
		            {else}
		                <input type="hidden" name="autorenew" value="enable">
		                <p class="text-center">
		                    <input type="submit" class="btn btn-lg btn-success" name="reglock" value="{$LANG.domainreglockenable}" />
		                </p>
		            {/if}
		        </form>
			</div>

			<div role="tabpanel" class="tab-pane fade" id="NameServers">
				<h3>Nameservers</h3>

		        {if $nameservererror}
		            {include file="$template/includes/alert.tpl" type="error" msg=$nameservererror textcenter=true}
		        {/if}
		        {if $subaction eq "savens"}
		            {if $updatesuccess}
		                {include file="$template/includes/alert.tpl" type="success" msg=$LANG.changessavedsuccessfully textcenter=true}
		            {elseif $error}
		                {include file="$template/includes/alert.tpl" type="error" msg=$error textcenter=true}
		            {/if}
		        {/if}

		        {include file="$template/includes/alert.tpl" type="info" msg=$LANG.domainnsexp}

		        <form class="form-horizontal" role="form" method="post" action="{$smarty.server.PHP_SELF}?action=domaindetails">
		            <input type="hidden" name="id" value="{$domainid}" />
		            <input type="hidden" name="sub" value="savens" />
		            <div class="radio">
		                <label>
		                    <input type="radio" name="nschoice" value="default" onclick="disableFields('domnsinputs',true)"{if $defaultns} checked{/if} /> {$LANG.nschoicedefault}
		                </label>
		            </div>
		            <div class="radio">
		                <label>
		                    <input type="radio" name="nschoice" value="custom" onclick="disableFields('domnsinputs',false)"{if !$defaultns} checked{/if} /> {$LANG.nschoicecustom}
		                </label>
		            </div>
		            <br />
		            {for $num=1 to 5}
		                <div class="form-group">
		                    <label for="inputNs{$num}" class="col-sm-4 control-label">{$LANG.clientareanameserver} {$num}</label>
		                    <div class="col-sm-7">
		                        <input type="text" name="ns{$num}" class="form-control domnsinputs" id="inputNs{$num}" value="{$nameservers[$num].value}" />
		                    </div>
		                </div>
		            {/for}
		            <p class="text-center">
		                <input type="submit" class="btn btn-primary" value="{$LANG.changenameservers}" />
		            </p>
		        </form>
			</div>

			<div role="tabpanel" class="tab-pane fade" id="renewYourDomain">

		        {if $changeAutoRenewStatusSuccessful}
		            {include file="$template/includes/alert.tpl" type="success" msg=$LANG.changessavedsuccessfully textcenter=true}
		        {/if}

		        {include file="$template/includes/alert.tpl" type="info" msg=$LANG.domainrenewexp}

		        <br />

		        <h2 class="text-center">{$LANG.domainautorenewstatus}: <span class="label label-{if $autorenew}success{else}danger{/if}">{if $autorenew}{$LANG.domainsautorenewenabled}{else}{$LANG.domainsautorenewdisabled}{/if}</span></h2>

		        <br />
		        <br />

		        <form method="post" id="renewYourDomain" action="{$smarty.server.PHP_SELF}?action=domaindetails">
		            <input type="hidden" name="id" value="{$domainid}">
		            <input type="hidden" name="sub" value="autorenew" />
		            {if $autorenew}
		                <input type="hidden" name="autorenew" value="disable">
		                <p class="text-center">
		                    <input type="submit" class="btn btn-lg btn-danger" value="{$LANG.domainsautorenewdisable}" id="renewYourDomain" />
		                </p>
		            {else}
		                <input type="hidden" name="autorenew" value="enable">
		                <p class="text-center">
		                    <input type="submit" class="btn btn-lg btn-success" value="{$LANG.domainsautorenewenable}" id="renewYourDomain" />
		                </p>
		            {/if}
		        </form>
			</div>

		</div>

	</div>
</section>
