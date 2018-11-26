{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">{$LANG.supportticketsticketcreated}</h1>
		<p>{$LANG.supportticketsticketcreateddesc}</p>
	</div>
</section>
<section id="page">
  <div class="container">
    <div class="row">
        <div class="col-sm-10 col-sm-offset-1">

            <div class="alert alert-success text-center">
                <strong>
                    {$LANG.supportticketsticketcreated}
                    <a id="ticket-number" href="viewticket.php?tid={$tid}&amp;c={$c}" class="alert-link">#{$tid}</a>
                </strong>
            </div>

            <div class="row">
                <div class="col-xs-10 col-xs-offset-1">
                    <p>{$LANG.supportticketsticketcreateddesc}</p>
                </div>
            </div>

            <br />

            <p class="text-center">
                <a href="viewticket.php?tid={$tid}&amp;c={$c}" class="yesil-buton">
                    {$LANG.continue}
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </p>
        </div>
    </div>
  </div>
</section>
