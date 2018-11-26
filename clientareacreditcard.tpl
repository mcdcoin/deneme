{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Kredi Kartı Ekleyin</h1>
		<p>Hızlı ödeme yapabilmek için hesabınıza kredi kartı tanımlayın.</p>
	</div>
</section>
<section id="page">
  <div class="container">

    {if $successful}
        {include file="$template/includes/alert.tpl" type="success" msg=$LANG.changessavedsuccessfully textcenter=true}
    {/if}

    {if $errormessage}
        {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
    {/if}

    {if $remoteupdatecode}
    <div class="alert alert-info">
        {$remoteupdatecode}
    </div>
    {else}

    <section class="credit-card">
      <div class="left-menu">
        <ul>
          <li>
            <i class="fa fa {if $cardtype eq "American Express"}
                fa-cc-amex logo-amex
            {elseif $cardtype eq "Visa"}
                fa-cc-visa logo-visa
            {elseif $cardtype eq "MasterCard"}
                fa-cc-mastercard logo-mastercard
            {elseif $cardtype eq "Discover"}
                fa-cc-discover logo-discover
            {else}
                fa-credit-card
            {/if}"></i>
            <div class="contain">
              <div>
                {if $cardtype neq "American Express" && $cardtype neq "Visa" && $cardtype neq "MasterCard" && $cardtype neq "Discover"}
                    {$cardtype}
                {/if}
              </div>
              <div class="card-number">
                  {if $cardlastfour}xxxx xxxx xxxx {$cardlastfour}{else}{$LANG.creditcardnonestored}{/if}
              </div>
              <div class="card-start">
                  {if $cardstart}Başlangıç Tarihi: {$cardstart}{/if}
              </div>
              <div class="card-expiry">
                  {if $cardexp}Son Kullanma Tarihi: {$cardexp}{/if}
              </div>
            </div>
          </li>
        </ul>
        {if !$allowcustomerdelete && $cardtype}
        <form method="post" class="text-center" style="margin-top: 14px;" action="clientarea.php?action=creditcard">
          <input type="hidden" name="remove" value="1" />
          <button type="submit" class="kirmizi-buton">{$LANG.creditcarddelete}</button>
        </form>
        {/if}
      </div>

      <div class="right-content">
        <div class="mini-title">
          <h2>{$LANG.creditcardenternewcard}</h2>
          <p>Hesabınıza yeni kredi kartı veya da banka kartı tanımlayın.</p>
        </div>
        <div>
          <form id="frmNewCc" role="form" method="post" action="{$smarty.server.PHP_SELF}?action=creditcard">
            <div class="alert alert-danger text-center gateway-errors hidden"></div>
            <div class="form-group">
              <label>{$LANG.creditcardcardtype}</label>
              <select name="cctype" id="inputCardType" class="form-control">
                {foreach from=$acceptedcctypes item=fieldcardtype}
                <option {if $fieldcardtype eq $cardtype}selected{/if}>{$fieldcardtype}</option>
                {/foreach}
              </select>
            </div>
            <div class="form-group">
              <label>{$LANG.creditcardcardnumber}</label>
              <input type="tel" class="basic-input-control" id="inputCardNumber" name="ccnumber" autocomplete="off" />
            </div>
            {if $showccissuestart}
            <div class="form-group">
              <label>{$LANG.creditcardcardstart}</label>
              <select name="ccstartmonth" id="inputCardStart" class="form-control select-inline">
                  {foreach from=$months item=month}
                  <option{if $ccstartmonth eq $month} selected{/if}>{$month}</option>
                  {/foreach}
              </select>
              <select name="ccstartyear" class="form-control select-inline">
                  {foreach from=$startyears item=year}
                  <option{if $ccstartyear eq $year} selected{/if}>{$year}</option>
                  {/foreach}
              </select>
            </div>
            {/if}
            <div class="form-group">
              <label>{$LANG.creditcardcardexpires}</label>
              <select name="ccexpirymonth" id="inputCardExpiry" class="form-control select-inline">
                  {foreach from=$months item=month}
                  <option{if $ccstartmonth eq $month} selected{/if}>{$month}</option>
                  {/foreach}
              </select>
              <select name="ccexpiryyear" class="form-control select-inline">
                  {foreach from=$expiryyears item=year}
                  <option{if $ccstartyear eq $year} selected{/if}>{$year}</option>
                  {/foreach}
              </select>
            </div>
            {if $showccissuestart}
            <div class="form-group">
              <label>{$LANG.creditcardcardissuenum}</label>
              <input type="tel" class="basic-input-control" id="inputCardIssue" name="ccissuenum" autocomplete="off" />
            </div>
            {/if}
            <div class="form-group">
              <label>{$LANG.creditcardcvvnumber}</label>
              <input type="tel" class="basic-input-control" id="inputCardCVV" name="cardcvv" autocomplete="off" />
              <button type="button" class="btn btn-link" data-toggle="popover" data-content="<img src='{$BASE_PATH_IMG}/ccv.gif' width='210' />">
                  {$LANG.creditcardcvvwhere}
              </button>
            </div>
            <div class="text-center">
              <input class="yesil-buton" id="btnSubmitNewCard" type="submit" name="submit" value="{$LANG.clientareasavechanges}" />
              <input class="standartButon" type="reset" value="{$LANG.cancel}" />
            </div>
          </form>
        </div>
      </div>
    </section>
    {/if}
  </div>
</section>
