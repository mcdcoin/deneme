{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">{$LANG.domaingeteppcode}</h1>
		<p>Alan adınızı transfer etmek için gerekli EPP kodu.</p>
	</div>
</section>
<section id="page">
  <div class="container">
    <p>
        {$LANG.domaingeteppcodeexplanation}
    </p>

    <br />

    {if $error}
        {include file="$template/includes/alert.tpl" type="error" msg=$LANG.domaingeteppcodefailure|cat:" $error"}
    {elseif $eppcode}
        {include file="$template/includes/alert.tpl" type="warning" msg=$LANG.domaingeteppcodeis|cat:" $eppcode"}
    {else}
        {include file="$template/includes/alert.tpl" type="warning" msg=$LANG.domaingeteppcodeemailconfirmation}
    {/if}
  </div>
</section>
