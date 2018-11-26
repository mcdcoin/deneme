{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Ürün Yönetimi</h1>
		<p>Satın aldığınız ürünü buradan yönetebilirsiniz.</p>
	</div>
</section>
<section id="page">
  <div class="container">

    {if $suspendreason}
    <div class="alert alert-danger">
      <div>
        <strong>{$LANG.suspendreason}:</strong> {$suspendreason}
      </div>
    </div>
    {/if}

    <div class="urun-detayi">
      <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#information" aria-controls="information" role="tab" data-toggle="tab">{$LANG.information}</a></li>
        {if $modulechangepassword}
        <li role="presentation"><a href="#serverchangepassword" aria-controls="serverchangepassword" role="tab" data-toggle="tab">{$LANG.serverchangepassword}</a></li>
        {/if}
        {if $downloads}
        <li role="presentation"><a href="#downloadstitle" aria-controls="downloadstitle" role="tab" data-toggle="tab">{$LANG.downloadstitle}</a></li>
        {/if}
        <li role="presentation"><a href="#hostingaddons" aria-controls="hostingaddons" role="tab" data-toggle="tab">{$LANG.clientareahostingaddons}</a></li>
        {if $packagesupgrade || $configoptionsupgrade || $showcancelbutton || $modulecustombuttons}
        <li role="presentation" class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.productmanagementactions}</a>
          <ul class="dropdown-menu">
          {foreach from=$modulecustombuttons key=label item=command}
            <li><a href="clientarea.php?action=productdetails&amp;id={$id}&amp;modop=custom&amp;a={$command}">{$label}</a></li>
          {/foreach}
          {if $packagesupgrade}
            <li><a href="upgrade.php?type=package&amp;id={$id}">{$LANG.upgradedowngradepackage}</a></li>
          {/if}
          {if $configoptionsupgrade}
            <li><a href="upgrade.php?type=configoptions&amp;id={$id}">{$LANG.upgradedowngradeconfigoptions}</a></li>
          {/if}
          {if $showcancelbutton}
            <li><a href="clientarea.php?action=cancel&amp;id={$id}">{$LANG.clientareacancelrequestbutton}</a></li>
          {/if}
          </ul>
        </li>
        {/if}
      </ul>

      <div class="tab-content">
        <h1>{$product} - <span class="hizmetAnaAdi">{$groupname}</span>{if $domain} ( <a href="http://{$domain}" target="_blank">{$domain}</a> ){/if}</h1>
        <div role="tabpanel" class="tab-pane fade in active" id="information">
          <div class="custom-row">
            <div class="left-info">
              <h2>{$LANG.information}</h2>
              <p>{$LANG.clientareaproductdetailsintro}</p>
              <div class="text-center">
                <a href="clientarea.php?action=products" class="yesil-buton custom-btn-xs">{$LANG.backtoserviceslist}</a>
              </div>
            </div>
            <div class="right-detail-info">
              <div class="row">
                <div class="col-md-6">
                  <p><h3>{$LANG.clientareahostingregdate}:</h3> {$regdate}</p>
                  {if $dedicatedip}
                  <p><h3>{$LANG.domainregisternsip}:</h3> {$dedicatedip}</p>
                  {/if}
                  <p><h3>{$LANG.recurringamount}:</h3> {$recurringamount}</p>
                  <p><h3>{$LANG.clientareahostingnextduedate}:</h3> {$nextduedate}</p>
                </div>
                <div class="col-md-6">
                  <p><h3>{$LANG.orderbillingcycle}:</h3> {$billingcycle}</p>
                  <p><h3>{$LANG.orderpaymentmethod}:</h3> {$paymentmethod}</p>
                  <p><h3>{$LANG.clientareastatus}:</h3> {$status}</p>
                  {if $firstpaymentamount neq $recurringamount}
                  <p><h3>{$LANG.firstpaymentamount}:</h3> {$firstpaymentamount}</p>
                  {/if}
                </div>
              </div>
            </div>
          </div>
        </div>
        <div role="tabpanel" class="tab-pane fade" id="serverchangepassword">
          <div class="custom-row">
            <div class="left-menu">
              <h2>{$LANG.serverchangepassword}</h2>
              <p>{$LANG.serverchangepasswordintro}</p>
            </div>
            <div class="right-detail-info">
              {if $username}
              <div class="alert">
                {$LANG.serverusername} / {$LANG.serverpassword}: {$username}{if $password} / {$password}{/if}
              </div>
              {/if}

              <form method="post" class="basic-controller" action="{$smarty.server.PHP_SELF}?action=productdetails#tab2">
                <input type="hidden" name="id" value="{$id}" />
                <input type="hidden" name="modulechangepassword" value="true" />
                <div class="tablo">
                  <div class="cell">
                    <div class="form-group">
                      <label>{$LANG.newpassword}</label>
                      <input type="password" class="basic-input-control" name="newpw" id="password" />
                    </div>
                  </div>
                  <div class="cell">
                    <div class="form-group">
                      <label>{$LANG.confirmnewpassword}</label>
                      <input type="password" class="basic-input-control" name="confirmpw" id="confirmpw" />
                    </div>
                  </div>
                </div>
                <div class="text-center">
                  <input class="yesil-buton custom-btn-xs" type="submit" name="submit" value="{$LANG.clientareasavechanges}" />
                  <input class="standartButon custom-btn-xs" type="reset" value="{$LANG.cancel}" />
                </div>

              </form>

            </div>
          </div>
        </div>
        <div role="tabpanel" class="tab-pane fade" id="downloadstitle">
          <div class="custom-row">
            <div class="left-menu">
              <h2>{$LANG.downloadstitle}</h2>
              <p>{$LANG.clientareahostingaddonsintro}</p>
            </div>
            <div class="right-detail-info">
              {foreach from=$downloads item=download}
              <p><h4>{$download.title} - <a href="{$download.link}">{$LANG.downloadname}</a></h4> {$download.description}</p>
              {foreachelse}
              <div class="alert alert-info">
                İndirebileceğiniz bir dosya bulunmuyor.
              </div>
              {/foreach}
            </div>
          </div>
        </div>
        <div role="tabpanel" class="tab-pane fade" id="hostingaddons">
          <div class="custom-row">
            <div class="left-menu">
              <h2>{$LANG.clientareahostingaddons}</h2>
              <p>{$LANG.yourclientareahostingaddons}</p>
            </div>
            <div class="right-detail-info">
              <table class="table table-striped table-framed table-centered table-responsive" width="100%">
              <thead>
                <tr>
                  <th>{$LANG.clientareaaddon}</th>
                  <th>{$LANG.clientareaaddonpricing}</th>
                  <th>{$LANG.clientareahostingnextduedate}</th>
                  <th>{$LANG.clientareastatus}</th>
                </tr>
              </thead>
              <tbody>
              {foreach key=num item=addon from=$addons}
                <tr>
                  <td>{$addon.name}</td>
                  <td class="textcenter">{$addon.pricing}</td>
                  <td class="textcenter">{$addon.nextduedate}</td>
                  <td class="textcenter"><span class="label {$addon.rawstatus}">{$addon.status}</span></td>
                </tr>
              {foreachelse}
                <tr>
                  <td class="textcenter" colspan="4">{$LANG.clientareanoaddons}</td>
                </tr>
              {/foreach}
              </tbody>
              </table>

            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="text-center">
      <a href="http://{$domain}" class="yesil-buton custom-btn-xs" target="_blank">{$LANG.visitwebsite}</a>
      {if $domainId}
      <a href="clientarea.php?action=domaindetails&id={$domainId}" class="standartButon custom-btn-xs" target="_blank">{$LANG.managedomain}</a>
      {/if}
      <a href="#" class="standartButon custom-btn-xs" onclick="popupWindow('whois.php?domain={$domain}','whois',650,420);return false;">{$LANG.whoisinfo}</a>
    </div>

    <div class="urun-tablo">
      <h2>Opsiyonlar</h2>
      <div class="content">
        <ul>
          {foreach from=$configurableoptions item=configoption}
            <li>
              <div>{$configoption.optionname}:</div> <div>{if $configoption.optiontype eq 3}{if $configoption.selectedqty}{$LANG.yes}{else}{$LANG.no}{/if}{elseif $configoption.optiontype eq 4}{$configoption.selectedqty} x {$configoption.selectedoption}{else}{$configoption.selectedoption}{/if}</div>
            </li>
          {/foreach}
        </ul>
      </div>
    </div>

		<div class="urun-tablo">
			<h2>Ek Seçenekler</h2>
			<div class="content">
				<ul>
					{foreach from=$productcustomfields item=customfield}
			      <li>
			        <div>{$customfield.name}:</div> <div>{$customfield.value}</div>
			      </li>
			    {/foreach}
				</ul>
			</div>
		</div>
    {if $lastupdate}
    <div class="urun-tablo">
      <h2>Kullanım Bilgileri</h2>
      <div class="content">
        <ul>
          <li class="yuzde50li">
            <div class="text-center">
              <p><h4>{$LANG.clientareadiskusage}:</h4> <span>{$diskusage}MB / {$disklimit}MB ({$diskpercent})</span></p>
              <div class="usagecontainer">
                <div class="used" style="width:{$diskpercent}"></div>
              </div>
            </div>
          </li>
          <li class="yuzde50li">
            <div class="text-center">
              <p><h4>{$LANG.clientareabwusage}:</h4> <span>{$bwusage}MB / {$bwlimit}MB ({$bwpercent})</span></p>
              <div class="usagecontainer">
                <div class="used" style="width:{$bwpercent}"></div>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
    {/if}

    {if $moduleclientarea}
      <div>
        {$moduleclientarea|replace:'modulebutton':'btn'}
      </div>
    {/if}
    {foreach $hookOutput as $output}
      <div>
        {$output}
      </div>
    {/foreach}

  </div>
</section>
