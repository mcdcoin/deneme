{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Satış Ortaklığı</h1>
		<p>Satış ortaklığı ile kazanç sağlayın.</p>
	</div>
</section>
<section id="page">
  <div class="container">
    {if $inactive}
        {include file="$template/includes/alert.tpl" type="danger" msg=$LANG.affiliatesdisabled textcenter=true}
    {else}
    <ul id="affiliatesToolbar" class="nav-justified">
      <li>
        <i class="fa fa-users"></i>
        <div>
          <span>{$visitors}</span>
          <span>{$LANG.affiliatesclicks}</span>
        </div>
      </li>
      <li>
        <i class="fa fa-shopping-cart"></i>
        <div>
          <span>{$signups}</span>
          <span>{$LANG.affiliatessignups}</span>
        </div>
      </li>
      <li>
        <i class="fa fa-pie-chart"></i>
        <div>
          <span>{$conversionrate}%</span>
          <span>{$LANG.affiliatesconversionrate}</span>
        </div>
      </li>
    </ul>

    <div class="affiliatesReferal">
      <h2>{$LANG.affiliatesreferallink}</h2>
      <p><a href="{$referrallink}" target="_blank" class="btn">{$referrallink}</a></p>
    </div>

    <div class="affiliatesSummary">
      <h2>Satış Ortaklığı Özeti</h2>
      <ul>
        <li>
          <div class="title">
            {$LANG.affiliatescommissionspending}
          </div>
          <div class="content">
            {$pendingcommissions}
          </div>
        </li>
        <li>
          <div class="title">
            {$LANG.affiliatescommissionsavailable}
          </div>
          <div class="content">
            {$balance}
          </div>
        </li>
        <li>
          <div class="title">
            {$LANG.affiliateswithdrawn}
          </div>
          <div class="content">
            {$withdrawn}
          </div>
        </li>
      </ul>
      {if $withdrawrequestsent}
        <div class="alert alert-success">
          {$LANG.affiliateswithdrawalrequestsuccessful}
        </div>
      {else}
        <div class="text-center">
          <a href="{$smarty.server.PHP_SELF}?action=withdrawrequest" class="standartButon"{if !$withdrawlevel} disabled="true"{/if}>
              <i class="fa fa-bank"></i> {$LANG.affiliatesrequestwithdrawal}
          </a>
        </div>
        {if !$withdrawlevel}
        <div class="alert alert-info">
          {lang key="affiliateWithdrawalSummary" amountForWithdrawal=$affiliatePayoutMinimum}
        </div>
        {/if}
      {/if}
    </div>

    <div class="affiliatesSummary">
      {include file="$template/includes/subheader.tpl" title=$LANG.affiliatesreferals}
      {include file="$template/includes/tablelist.tpl" tableName="AffiliatesList"}
      <script type="text/javascript">
          jQuery(document).ready( function ()
          {
              var table = jQuery('#tableAffiliatesList').removeClass('hidden').DataTable();
              {if $orderby == 'regdate'}
                  table.order(0, '{$sort}');
              {elseif $orderby == 'product'}
                  table.order(1, '{$sort}');
              {elseif $orderby == 'amount'}
                  table.order(2, '{$sort}');
              {elseif $orderby == 'status'}
                  table.order(4, '{$sort}');
              {/if}
              table.draw();
              jQuery('#tableLoading').addClass('hidden');
          });
      </script>
      <div class="table-container clearfix">
          <table id="tableAffiliatesList" class="table table-list hidden">
              <thead>
                  <tr>
                      <th>{$LANG.affiliatessignupdate}</th>
                      <th>{$LANG.orderproduct}</th>
                      <th>{$LANG.affiliatesamount}</th>
                      <th>{$LANG.affiliatescommission}</th>
                      <th>{$LANG.affiliatesstatus}</th>
                  </tr>
              </thead>
              <tbody>
              {foreach from=$referrals item=referral}
                  <tr class="text-center">
                      <td><span class="hidden">{$referral.datets}</span>{$referral.date}</td>
                      <td>{$referral.service}</td>
                      <td data-order="{$referral.amountnum}">{$referral.amountdesc}</td>
                      <td data-order="{$referral.commissionnum}">{$referral.commission}</td>
                      <td><span class='label status status-{$referral.rawstatus|strtolower}'>{$referral.status}</span></td>
                  </tr>
              {/foreach}
              </tbody>
          </table>
          <div class="text-center" id="tableLoading">
              <p><i class="fa fa-spinner fa-spin"></i> {$LANG.loading}</p>
          </div>
      </div>

      {if $affiliatelinkscode}
          {include file="$template/includes/subheader.tpl" title=$LANG.affiliateslinktous}
          <div class="margin-bottom text-center">
              {$affiliatelinkscode}
          </div>
      {/if}
    </div>
    {/if}
  </div>
</section>
