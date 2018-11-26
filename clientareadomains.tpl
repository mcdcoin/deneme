{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Alan Adları Yönetimi</h1>
		<p>Hesabınıza bağlı alan adlarını buradan yönetebilirsiniz.</p>
	</div>
</section>
<section id="page">
	<div class="container">

		<div id="alanAdiListesiKisayollari">
			<a href="cart.php?a=add&domain=register">
				<i class="fa fa-plus"></i>
				<span>Yeni Alan Adı Kaydı</span>
			</a>
			<a href="cart.php?a=add&domain=transfer">
				<i class="fa fa-exchange"></i>
				<span>Yeni Alan Adı Transferi</span>
			</a>
		</div>

		<!-- alan adı listesi -->
		<form id="domainForm" method="POST" action="clientarea.php?action=bulkdomain">
		<input type="hidden" name="update" id="bulkaction">
		<ul id="alanAdiListeTablosu">
			<li class="title">
				<div class="alanadi">{$LANG.orderdomain}</div>
				<div class="kayitTarihi">{$LANG.regdate}</div>
				<div class="yenilemeTarihi">{$LANG.nextdue}</div>
				<div class="otoYenileme">{$LANG.domainsautorenew}</div>
				<div class="status">{$LANG.domainstatus}</div>
				<div class="islemKutusu">&nbsp;</div>
			</li>
			{foreach key=num item=domain from=$domains}
			<li>
				<div class="alanadi"><span class="desktopHidden">{$LANG.orderdomain}: </span><a href="http://{$domain.domain}" target="_blank">{$domain.domain}</a></div>
				<div class="kayitTarihi"><span class="desktopHidden">{$LANG.regdate}: </span>{$domain.registrationdate}</div>
				<div class="yenilemeTarihi"><span class="desktopHidden">{$LANG.nextdue}: </span>{$domain.nextduedate}</div>
				<div class="otoYenileme">
					<span class="desktopHidden">{$LANG.domainsautorenew}: </span>
					{if $domain.autorenew}
						<i class="fa fa-check"></i>
						{$LANG.domainsautorenewenabled}
					{else}
						<i class="fa fa-times"></i>
						{$LANG.domainsautorenewdisabled}
					{/if}
				</div>
				<div class="status"><span class="desktopHidden">{$LANG.domainstatus}: </span>{$domain.statustext}</div>
				<div class="islemKutusu">
					<div class="btn-group btn-group-sm" style="width:60px;">
						<a href="clientarea.php?action=domaindetails&id={$domain.id}" class="btn btn-default"><i class="fa fa-wrench"></i></a>

						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							<span class="caret"></span>
							<span class="sr-only">Toggle Dropdown</span>
						</button>

						<ul id="conflex-dropdown-menu" class="dropdown-menu dropdown-menu-right" role="menu">
						{if $domain.status eq 'Active'}
							<li><a href="clientarea.php?action=domaindetails&id={$domain.id}#NameServers"><i class="glyphicon glyphicon-globe"></i> {$LANG.domainmanagens}</a></li>
							<li><a href="clientarea.php?action=domaincontacts&domainid={$domain.id}"><i class="glyphicon glyphicon-user"></i> {$LANG.domaincontactinfoedit}</a></li>
							<li><a href="clientarea.php?action=domaindetails&id={$domain.id}#renewYourDomain"><i class="glyphicon glyphicon-globe"></i> {$LANG.domainautorenewstatus}</a></li>
							<li class="divider"></li>
						{/if}
							<li><a href="clientarea.php?action=domaindetails&id={$domain.id}"><i class="glyphicon glyphicon-pencil"></i> {$LANG.managedomain}</a></li>
						</ul>
					</div>
				</div>
			</li>
			{/foreach}
		</ul>
		</form>
		<!-- // alan adı listesi -->

		<div class="clearfix"></div>
		<div class="pager">
			<ul>
				<li{if !$prevpage} class="disabled"{/if}><a href="{if $prevpage}clientarea.php?action=domains{if $q}&q={$q}{/if}&amp;page={$prevpage}{else}javascript:return false;{/if}">{$LANG.previouspage}</a></li>
				<li{if !$nextpage} class="disabled"{/if}><a href="{if $nextpage}clientarea.php?action=domains{if $q}&q={$q}{/if}&amp;page={$nextpage}{else}javascript:return false;{/if}">{$LANG.nextpage}</a></li>
			</ul>
		</div>

	</div>
</section>
