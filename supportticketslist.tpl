{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Destek Masası</h1>
		<p>Ürünleriniz ve diğer işlemleriniz için destek bildirimleriniz ve yeni destek talebi.</p>
	</div>
</section>
<section id="page">
  <div class="container">

    <div id="alanAdiListesiKisayollari">
      <a href="submitticket.php"><i class="fa fa-ticket"></i> <span>Yeni Destek Talebi</span></a>
    </div>

    <ul id="destekListeTablosu">
      <li class="title">
        <div>{$LANG.supportticketssubject}</div>
        <div>{$LANG.supportticketsdepartment}</div>
        <div>{$LANG.supportticketsstatus}</div>
        <div>{$LANG.supportticketsticketlastupdated}</div>
      </li>
      {foreach from=$tickets item=ticket}
      <li>
        <div><a href="viewticket.php?tid={$ticket.tid}&amp;c={$ticket.c}">{if $ticket.unread}<strong>{/if}#{$ticket.tid} - {$ticket.subject}{if $ticket.unread}</strong>{/if}</a></div>
        <div>{$ticket.department}</div>
        <div><span class="label {if is_null($ticket.statusColor)}durum-{$ticket.statusClass}"{else}durum-custom" style="border-color: {$ticket.statusColor}; color: {$ticket.statusColor}"{/if}>{$ticket.status|strip_tags}</span></div>
        <div><span class="hidden">{$ticket.normalisedLastReply}</span>{$ticket.lastreply}</div>
      </li>
      {/foreach}
    </ul>

  </div>
</section>
