{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Kredi Kartı ile Ödeme</h1>
    <p>Ödemenizi kredi kartı ile gerçekleştirin.</p>
	</div>
</section>
<section id="page">
  <div class="container">
    {if $remotecode}

        <div id="frmRemoteCardProcess" class="text-center" align="center">

            {$remotecode}

            <iframe name="ccframe" class="auth3d-area" width="90%" height="600" scrolling="auto" src="about:blank"></iframe>

        </div>

        <script language="javascript">
            jQuery("#frmRemoteCardProcess").find("form:first").attr('target', 'ccframe');
            setTimeout("autoSubmitFormByContainer('frmRemoteCardProcess')", 1000);
        </script>

    {else}

        <form id="frmPayment" method="post" action="creditcard.php" class="form-horizontal" role="form">
            <input type="hidden" name="action" value="submit" />
            <input type="hidden" name="invoiceid" value="{$invoiceid}" />

            <div class="row">
                <div class="col-md-7">

                    {if $errormessage}
                        {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
                    {/if}

                    <div class="alert alert-danger text-center gateway-errors hidden"></div>

                    <div class="form-group">
                        <div class="col-sm-8 col-sm-offset-4">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="ccinfo" value="new" onclick="showNewCardInputFields()"{if $ccinfo eq "new" || !$cardOnFile} checked{/if} /> {$LANG.creditcardenternewcard}</label>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="ccinfo" value="useexisting" onclick="hideNewCardInputFields()" {if $cardOnFile && $ccinfo neq "new"}checked{elseif !$cardOnFile}disabled{/if} /> {$LANG.creditcarduseexisting}{if $cardOnFile} ({$existingCardType}-{$existingCardLastFour}){/if}
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group{if $userDetailsValidationError} hidden{/if}" id="billingAddressSummary">
                        <label for="cctype" class="col-sm-4 control-label">{$LANG.billingAddress}</label>
                        <div class="col-sm-6">
                            {if $companyname}{$companyname}{else}{$firstname} {$lastname}{/if} <button type="button" id="btnEditBillingAddress" onclick="editBillingAddress()" class="btn btn-default btn-sm"{if $cardOnFile} disabled="disabled"{/if}><i class="fa fa-edit"></i> {$LANG.change}</button><br />
                            {$address1}{if $address2}, {$address2}{/if}<br />
                            {$city}, {$state}, {$postcode}<br />
                            {$countryname}
                        </div>
                    </div>
                    <div class="form-group cc-billing-address{if !$userDetailsValidationError} hidden{/if}">
                        <label for="inputFirstName" class="col-sm-4 control-label">{$LANG.clientareafirstname}</label>
                        <div class="col-sm-6">
                            <input type="text" name="firstname" id="inputFirstName" value="{$firstname}" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group cc-billing-address{if !$userDetailsValidationError} hidden{/if}">
                        <label for="inputLastName" class="col-sm-4 control-label">{$LANG.clientarealastname}</label>
                        <div class="col-sm-6">
                            <input type="text" name="lastname" id="inputLastName" value="{$lastname}" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group cc-billing-address{if !$userDetailsValidationError} hidden{/if}">
                        <label for="inputAddress1" class="col-sm-4 control-label">{$LANG.clientareaaddress1}</label>
                        <div class="col-sm-6">
                            <input type="text" name="address1" id="inputAddress1" value="{$address1}" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group cc-billing-address{if !$userDetailsValidationError} hidden{/if}">
                        <label for="inputAddress2" class="col-sm-4 control-label">{$LANG.clientareaaddress2}</label>
                        <div class="col-sm-6">
                            <input type="text" name="address2" id="inputAddress2" value="{$address2}" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group cc-billing-address{if !$userDetailsValidationError} hidden{/if}">
                        <label for="inputCity" class="col-sm-4 control-label">{$LANG.clientareacity}</label>
                        <div class="col-sm-6">
                            <input type="text" name="city" id="inputCity" value="{$city}" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group cc-billing-address{if !$userDetailsValidationError} hidden{/if}">
                        <label for="inputState" class="col-sm-4 control-label">{$LANG.clientareastate}</label>
                        <div class="col-sm-6">
                            <input type="text" name="state" id="inputState" value="{$state}" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group cc-billing-address{if !$userDetailsValidationError} hidden{/if}">
                        <label for="inputPostcode" class="col-sm-4 control-label">{$LANG.clientareapostcode}</label>
                        <div class="col-sm-6">
                            <input type="text" name="postcode" id="inputPostcode" value="{$postcode}" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group cc-billing-address{if !$userDetailsValidationError} hidden{/if}">
                        <label for="inputCountry" class="col-sm-4 control-label">{$LANG.clientareacountry}</label>
                        <div class="col-sm-6">
                            {$countriesdropdown}
                        </div>
                    </div>
                    <div class="form-group cc-billing-address{if !$userDetailsValidationError} hidden{/if}">
                        <label for="inputPhone" class="col-sm-4 control-label">{$LANG.clientareaphonenumber}</label>
                        <div class="col-sm-6">
                            <input type="text" name="phonenumber" id="inputPhone" value="{$phonenumber}" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group cc-details{if !$addingNewCard} hidden{/if}">
                        <label for="cctype" class="col-sm-4 control-label">{$LANG.creditcardcardtype}</label>
                        <div class="col-sm-5">
                            <select name="cctype" id="cctype" class="form-control newccinfo">
                                {foreach from=$acceptedcctypes item=type}
                                    <option{if $cctype eq $type} selected{/if}>
                                        {$type}
                                    </option>
                                {/foreach}
                            </select>
                        </div>
                    </div>
                    <div class="form-group cc-details{if !$addingNewCard} hidden{/if}">
                        <label for="inputCardNumber" class="col-sm-4 control-label">{$LANG.creditcardcardnumber}</label>
                        <div class="col-sm-7">
                            <input type="tel" name="ccnumber" id="inputCardNumber" size="30" value="{if $ccnumber}{$ccnumber}{/if}" autocomplete="off" class="form-control newccinfo" />
                        </div>
                    </div>
                    {if $showccissuestart}
                        <div class="form-group cc-details{if !$addingNewCard} hidden{/if}">
                            <label for="inputCardStart" class="col-sm-4 control-label">{$LANG.creditcardcardstart}</label>
                            <div class="col-sm-8">
                                <select name="ccstartmonth" id="inputCardStart" class="form-control select-inline">
                                    {foreach from=$months item=month}
                                        <option{if $ccstartmonth eq $month} selected{/if}>{$month}</option>
                                    {/foreach}
                                </select>
                                <select name="ccstartyear" id="inputCardStartYear" class="form-control select-inline">
                                    {foreach from=$startyears item=year}
                                        <option{if $ccstartyear eq $year} selected{/if}>{$year}</option>
                                    {/foreach}
                                </select>
                            </div>
                        </div>
                    {/if}
                    <div class="form-group cc-details{if !$addingNewCard} hidden{/if}">
                        <label for="inputCardExpiry" class="col-sm-4 control-label">{$LANG.creditcardcardexpires}</label>
                        <div class="col-sm-8">
                            <select name="ccexpirymonth" id="inputCardExpiry" class="form-control select-inline">
                                {foreach from=$months item=month}
                                    <option{if $ccexpirymonth eq $month} selected{/if}>{$month}</option>
                                {/foreach}
                            </select>
                            <select name="ccexpiryyear" id="inputCardExpiryYear" class="form-control select-inline">
                                {foreach from=$expiryyears item=year}
                                    <option{if $ccexpiryyear eq $year} selected{/if}>{$year}</option>
                                {/foreach}
                            </select>
                        </div>
                    </div>
                    {if $showccissuestart}
                        <div class="form-group cc-details{if !$addingNewCard} hidden{/if}">
                            <label for="inputIssueNum" class="col-sm-4 control-label">{$LANG.creditcardcardissuenum}</label>
                            <div class="col-xs-2">
                                <input type="number" name="ccissuenum" id="inputIssueNum" value="{$ccissuenum}" class="form-control input-" />
                            </div>
                        </div>
                    {/if}
                    <div class="form-group">
                        <label for="cctype" class="col-sm-4 control-label">{$LANG.creditcardcvvnumber}</label>
                        <div class="col-sm-7">
                            <input type="number" name="cccvv" id="inputCardCvv" value="{$cccvv}" autocomplete="off" class="form-control input-inline input-inline-100" />
                            <button type="button" class="btn btn-link" data-toggle="popover" data-content="<img src='{$BASE_PATH_IMG}/ccv.gif' width='210' />">
                                {$LANG.creditcardcvvwhere}
                            </button>
                        </div>
                    </div>

                    {if $shownostore}
                        <div class="form-group cc-details{if !$addingNewCard} hidden{/if}">
                            <div class="col-sm-offset-4 col-sm-8">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="nostore" id="inputNoStore"> {$LANG.creditcardnostore}
                                    </label>
                                </div>
                            </div>
                        </div>
                    {/if}
                    <div class="form-group">
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary btn-lg" id="btnSubmit" value="{$LANG.submitpayment}">
                                <span class="pay-text">{$LANG.submitpayment}</span>
                                <span class="click-text hidden">{$LANG.pleasewait}</span>
                            </button>
                        </div>
                    </div>

                </div>
                <div class="col-md-5">

                  <div id="cc-odeme-ekrani">
                    <h2>{$LANG.invoicenumber}: {$invoiceid}</h2>
                    <ul>
                      <li class="title">
                        <div class="desc">
                          {$LANG.invoicesdescription}
                        </div>
                        <div class="amount">
                          {$LANG.invoicesamount}
                        </div>
                      </li>
                      {foreach $invoiceitems as $item}
                      <li>
                        <div class="desc">
                          {$item.description}
                        </div>
                        <div class="amount">
                          {$item.amount}
                        </div>
                      </li>
                      {/foreach}

                      {if $invoice.taxrate}
                      <li>
                        <div class="desc text-right">
                          {$invoice.taxrate}% {$invoice.taxname}
                        </div>
                        <div class="amount">
                          {$invoice.tax}
                        </div>
                      </li>
                      {/if}

                      {if $invoice.taxrate2}
                      <li>
                        <div class="desc text-right">
                          {$invoice.taxrate2}% {$invoice.taxname2}
                        </div>
                        <div class="amount">
                          {$invoice.tax2}
                        </div>
                      </li>
                      {/if}
                      <li>
                        <div class="desc text-right">
                          {$LANG.invoicescredit}
                        </div>
                        <div class="amount">
                          {$invoice.credit}
                        </div>
                      </li>
                      <li>
                        <div class="desc text-right">
                          {$LANG.invoicestotaldue}
                        </div>
                        <div class="amount">
                          {$invoice.total}
                        </div>
                      </li>
                      <li>
                        <div class="desc text-right">
                          {$LANG.paymentstodate}
                        </div>
                        <div class="amount">
                          {$invoice.amountpaid}
                        </div>
                      </li>
                      <li>
                        <div class="desc text-right">
                          {$LANG.balancedue}
                        </div>
                        <div class="amount">
                          {$balance}
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
            </div>

            <div class="alert alert-warning" role="alert">
                <i class="fa fa-lock"></i> &nbsp; {$LANG.creditcardsecuritynotice}
            </div>

        </form>

    {/if}
  </div>
</section>
