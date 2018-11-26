{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<div class="tablo">
			<div class="hucre">
				<h2 class="hesapHosgeldin">
					<span>Hoşgeldin,</span>
					{if !$clientsdetails.companyname}{$clientsdetails.firstname} <span class="uppercase">{$clientsdetails.lastname}</span>
					{else}{$clientsdetails.companyname}{/if}
				</h2>
				<div>
					<ul class="hesapOzeti">
						<li><strong>E-Posta Adresi:</strong> {$clientsdetails.email}</li>
						{if $clientsdetails.companyname}<li><strong>Adınız ve Soyadınız:</strong> {$clientsdetails.firstname} {$clientsdetails.lastname}</li>{else}<li><strong>Kayıt Tarihi:</strong> {$clientsdetails.datecreated}</li>{/if}
						<li><strong>Telefon Numarası:</strong> {$clientsdetails.phonenumber}</li>
						<li><strong>Adres:</strong> {$clientsdetails.address1} {$clientsdetails.address2}</li>
						<li>{$clientsdetails.state} / {$clientsdetails.city}</li>
					</ul>
				</div>
			</div>
			<div class="hucre">
				<h2 class="hesapHosgeldin">Hizmet Özeti</h2>
				<div>
					<ul class="hesapOzeti">
						<li><a href="clientarea.php?action=services"><strong>Aktif Toplam {$LANG.navservices}: </strong>{$clientsstats.productsnumactive}</a></li>
						{if $registerdomainenabled || $transferdomainenabled}
						<li><a href="clientarea.php?action=domains"><strong>Aktif Toplam {$LANG.navdomains}: </strong>{$clientsstats.numactivedomains}</a></li>
						{/if}
						{if $condlinks.affiliates && $clientsstats.isAffiliate}
						<li><a href="affiliates.php"><strong>Aktif Toplam {$LANG.affiliatessignups}: </strong>{$clientsstats.numaffiliatesignups}</a></li>
						{else}
						<li><a href="clientarea.php?action=quotes"><strong>Aktif Toplam {$LANG.quotes}: </strong>{$clientsstats.numquotes}</a></li>
						{/if}
						<li><a href="supporttickets.php"><strong>Aktif Toplam {$LANG.navtickets}: </strong>{$clientsstats.numactivetickets}</a></li>
						<li><a href="clientarea.php?action=invoices"><strong>Aktif Toplam {$LANG.navinvoices}: </strong>{$clientsstats.numunpaidinvoices}</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>

<section id="page">
	<div class="container">

		{if $announcements}
		<div class="alert alert-warning">
			<strong>{$LANG.ourlatestnews}:</strong> {$announcements.0.text|strip_tags|truncate:100:'...'} - <a href="announcements.php?id={$announcements.0.id}" class="btn">{$LANG.more}...</a>
		</div>
		{/if}

		{if $ccexpiringsoon}
		<div class="alert alert-danger">
			<strong>{$LANG.ccexpiringsoon}:</strong> {$LANG.ccexpiringsoondesc|sprintf2:'<a href="clientarea.php?action=creditcard" class="btn">':'</a>'}
		</div>
		{/if}

		{if $clientsstats.incredit}
		<div class="alert alert-success">
			<strong>{$LANG.availcreditbal}:</strong> {$LANG.availcreditbaldesc|sprintf2:$clientsstats.creditbalance}
		</div>
		{/if}

		{if $clientsstats.numoverdueinvoices>0}
		<div class="alert alert-danger">
			<strong>{$LANG.youhaveoverdueinvoices|sprintf2:$clientsstats.numoverdueinvoices}:</strong> {$LANG.overdueinvoicesdesc|sprintf2:'<a href="clientarea.php?action=masspay&all=true" class="btn">':'</a>'}
		</div>
		{/if}

		<!-- ticket listesi -->
		<h1 class="clientarea">
			<div class="baslik">
				{$LANG.supportticketsopentickets}
			</div>
			<div class="kisayollar">
				<a href="submitticket.php" class="yeniDT"><i class="fa fa-ticket"></i> <span>Yeni Destek Talebi</span></a>
			</div>
		</h1>
		<ul id="liste">
			<li class="title">
				<div class="date">
					<a href="supporttickets.php?orderby=date">{$LANG.supportticketsdate}</a></div>
				<div class="dept">
					<a href="supporttickets.php?orderby=dept">{$LANG.supportticketsdepartment}</a></div>
				<div class="subject">
					<a href="supporttickets.php?orderby=subject">{$LANG.supportticketssubject}</a></div>
				<div class="status">
					<a href="supporttickets.php?orderby=status">{$LANG.supportticketsstatus}</a></div>
				<div class="lastUpdate">
					<a href="supporttickets.php?orderby=lastreply">{$LANG.supportticketsticketlastupdated}</a></div>
				<div class="view">İşlem</div>
			</li>
			{foreach from=$tickets item=ticket}
				<li>
					<div class="date">{$ticket.date}</div>
					<div class="dept">{$ticket.department}</div>
					<div class="subject"><a href="viewticket.php?tid={$ticket.tid}&amp;c={$ticket.c}">{if $ticket.unread}<strong>{/if}#{$ticket.tid} - {$ticket.subject}{if $ticket.unread}</strong>{/if}</a></div>
					<div class="status">{$ticket.status}</div>
					<div class="lastUpdate">{$ticket.lastreply}</div>
					<div class="view"><a href="viewticket.php?tid={$ticket.tid}&c={$ticket.c}">{$LANG.supportticketsviewticket}</a></div>
				</li>
			{foreachelse}
				<li>
					<div class="text-center">{$LANG.supportticketsnoneopen}</div>
				</li>
			{/foreach}
		</ul>
		<!-- // ticket listesi -->

		<!-- son faturalar -->
		<h1 class="clientarea">{$LANG.invoicesdue}</h1>
		<ul id="liste">
			<li class="title">
				<div class="baslik">
					<a href="clientarea.php?action=invoices&orderby=id">{$LANG.invoicestitle}</a></div>
				<div class="faturaOlusturma">
					<a href="clientarea.php?action=invoices&orderby=date">{$LANG.invoicesdatecreated}</a></div>
				<div class="odemeTarihi">
					<a href="clientarea.php?action=invoices&orderby=duedate">{$LANG.invoicesdatedue}</a></div>
				<div class="faturaTutari">
					<a href="clientarea.php?action=invoices&orderby=total">{$LANG.invoicestotal}</a></div>
				<div class="faturaOdeme">
					<a href="clientarea.php?action=invoices&orderby=balance">{$LANG.invoicesbalance}</a></div>
				<div class="faturaDurumu">
					<a href="clientarea.php?action=invoices&orderby=status">{$LANG.invoicesstatus}</a></div>
				<div class="view">İşlem</div>
			</li>
			{foreach from=$invoices item=invoice}
				<li>
					<div class="baslik"><a href="viewinvoice.php?id={$invoice.id}" target="_blank">{$invoice.invoicenum}</a></div>
					<div class="faturaOlusturma">{$invoice.datecreated}</div>
					<div class="odemeTarihi">{$invoice.datedue}</div>
					<div class="faturaTutari">{$invoice.total}</div>
					<div class="faturaOdeme">{$invoice.balance}</div>
					<div class="faturaDurumu">{$invoice.statustext}</div>
					<div class="view"><a href="viewinvoice.php?id={$invoice.id}" target="_blank">{$LANG.invoicesview}</a></div>
				</li>
			{foreachelse}
				<li>
					<div class="text-center">{$LANG.invoicesnoneunpaid}</div>
				</li>
			{/foreach}
		</ul>
		<!-- // son faturalar -->
	</div>
</section>
