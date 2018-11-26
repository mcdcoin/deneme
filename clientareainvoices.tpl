{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Faturalarım</h1>
		<p>Satın aldığınız hizmetler için tarafınıza kesilen faturalar.</p>
	</div>
</section>
<section id="page">
  <div class="container">

    <div class="faturalarim">
      <ul id="faturaListeTablosu">
        <li class="title">
          <div>{$LANG.invoicestitle}</div>
          <div>{$LANG.invoicesdatecreated}</div>
          <div>{$LANG.invoicesdatedue}</div>
          <div>{$LANG.invoicestotal}</div>
          <div>{$LANG.invoicesstatus}</div>
          <div>&nbsp;</div>
        </li>
        {foreach key=num item=invoice from=$invoices}
        <li>
          <div><span class="mobil-hidden">{$LANG.invoicestitle}: </span>{$invoice.invoicenum}</div>
          <div><span class="mobil-hidden">{$LANG.invoicesdatecreated}: </span>{$invoice.datecreated}</div>
          <div><span class="mobil-hidden">{$LANG.invoicesdatedue}: </span>{$invoice.datedue}</div>
          <div><span class="mobil-hidden">{$LANG.invoicestotal}: </span>{$invoice.total}</div>
          <div><span class="mobil-hidden">{$LANG.invoicesstatus}: </span>{$invoice.status}</div>
          <div>
            <a href="viewinvoice.php?id={$invoice.id}" target="_blank" class="yesil-buton custom-btn-xs">
              Faturayı Göster
            </a>
          </div>
        </li>
        {/foreach}
      </ul>
    </div>

  </div>
</section>
