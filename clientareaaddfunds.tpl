{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
    <h1 class="clientareaPageTitle">Kredi Ekle</h1>
		<p>Hesabınıza yeni kredi ekleyin ve alışverişlerinizde hızlı ödeme yapın.</p>
	</div>
</section>
<section id="page">
  <div class="container">
    {if $addfundsdisabled}
        {include file="$template/includes/alert.tpl" type="error" msg=$LANG.clientareaaddfundsdisabled textcenter=true}
    {elseif $notallowed}
        {include file="$template/includes/alert.tpl" type="error" msg=$LANG.clientareaaddfundsnotallowed textcenter=true}
    {elseif $errormessage}
        {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage textcenter=true}
    {/if}

    {if !$addfundsdisabled}

    <div class="affiliatesSummary">
      <h2>Kredi Bilgileri</h2>
      <ul>
        <li>
          <div class="title">
            {$LANG.addfundsminimum}
          </div>
          <div class="content">
            {$minimumamount}
          </div>
        </li>
        <li>
          <div class="title">
            {$LANG.addfundsmaximum}
          </div>
          <div class="content">
            {$maximumamount}
          </div>
        </li>
        <li>
          <div class="title">
            {$LANG.addfundsmaximumbalance}
          </div>
          <div class="content">
            {$maximumbalance}
          </div>
        </li>
      </ul>
    </div>

    <div class="addFunds" style="margin-top: 14px;">
      <div class="col-sm-6 col-sm-offset-3">
        <div class="panel panel-default">
          <div class="panel-body">
            <form method="post" action="{$smarty.server.PHP_SELF}?action=addfunds">
              <fieldset>
                <div class="form-group">
                    <label for="amount" class="control-label">{$LANG.addfundsamount}:</label>
                    <input type="text" name="amount" id="amount"
                           value="{$amount}" class="form-control" required />
                </div>
                <div class="form-group">
                    <label for="paymentmethod" class="control-label">{$LANG.orderpaymentmethod}:</label><br/>
                    <select name="paymentmethod" id="paymentmethod" class="form-control">
                        {foreach from=$gateways item=gateway}
                            <option value="{$gateway.sysname}">{$gateway.name}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" value="{$LANG.addfunds}" class="btn btn-primary btn-block" />
                </div>
              </fieldset>
            </form>
          </div>
          <div class="panel-footer">
              {$LANG.addfundsnonrefundable}
          </div>
        </div>
      </div>
    </div>
    {/if}
  </div>
</section>
