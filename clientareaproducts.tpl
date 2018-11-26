{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Ürünlerim</h1>
		<p>Satın aldığınız ürünleri buradan görebilir ve yönetebilirsiniz.</p>
	</div>
</section>
<section id="page">
  <div class="container">
    <div class="hizmetlerim">
			<div class="table">
				<div class="cell">
					<p>{$numitems} {$LANG.recordsfound}, {$LANG.page} {$pagenumber} {$LANG.pageof} {$totalpages}</p>
				</div>
				<div class="cell text-right">
					<form method="post" class="form-inline" action="clientarea.php?action=products">
						<div class="form-group">
							<input type="text" class="basic-input-control" name="q" value="{if $q}{$q}{else}{$LANG.searchenterdomain}{/if}" onfocus="if(this.value=='{$LANG.searchenterdomain}')this.value=''" />
						</div>
						<div class="form-group">
							<button type="submit" class="customButon custom-btn-xs btn-block" style="padding: 10px 16px;">{$LANG.searchfilter}</button>
						</div>
			    </form>
				</div>
			</div>
      <ul id="hizmetlerListeTablosu">
        <li class="title">
          <div>{$LANG.orderproduct}</div>
          <div>{$LANG.clientareaaddonpricing}</div>
          <div>{$LANG.clientareahostingnextduedate}</div>
          <div>{$LANG.clientareastatus}</div>
          <div>&nbsp;</div>
        </li>
				{foreach from=$services item=service}
        <li>
          <div>
            <div class="mobil-hidden">
              {$LANG.orderproduct}
            </div>
            <div>
              <strong>{$service.product}</strong>{if $service.domain}<br /><a href="http://{$service.domain}" target="_blank">{$service.domain}</a>{/if}
            </div>
          </div>
          <div>
            <div class="mobil-hidden">
              {$LANG.clientareaaddonpricing}
            </div>
            <div>{$service.amount}<br />{$service.billingcycle}</div></div>
          <div>
            <div class="mobil-hidden">
              {$LANG.clientareahostingnextduedate}
            </div>
            <div><span class="hidden">{$service.normalisedNextDueDate}</span> {$service.nextduedate}</div>
          </div>
          <div>
            <div class="mobil-hidden">
              {$LANG.clientareastatus}
            </div>
            <div><span class="label durum-{$service.status|strtolower}">{$service.statustext}</span></div>
          </div>
          <div>
            <a href="clientarea.php?action=productdetails&amp;id={$service.id}" class="yesil-buton custom-btn-xs">
                {$LANG.manageproduct}
            </a>
          </div>
        </li>
        {/foreach}
      </ul>
    </div>
		<div class="clearfix"></div>
		<div class="pager">
			<ul>
				<li{if !$prevpage} class="disabled"{/if}><a href="{if $prevpage}clientarea.php?action=products{if $q}&q={$q}{/if}&amp;page={$prevpage}{else}javascript:return false;{/if}">{$LANG.previouspage}</a></li>
				<li{if !$nextpage} class="disabled"{/if}><a href="{if $nextpage}clientarea.php?action=products{if $q}&q={$q}{/if}&amp;page={$nextpage}{else}javascript:return false;{/if}">{$LANG.nextpage}</a></li>
			</ul>
		</div>
  </div>
</section>
