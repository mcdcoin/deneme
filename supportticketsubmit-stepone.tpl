{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Yeni Destek Bildirimi</h1>
		<p>{$LANG.supportticketsheader}</p>
	</div>
</section>
<section id="page">
  <div class="container">
    <div class="ticket-depertman-select">
      <ul>
        {foreach from=$departments key=num item=department}
        <li>
          <a href="{$smarty.server.PHP_SELF}?step=2&amp;deptid={$department.id}">
            <i class="fa fa-ticket"></i>
            <div>
              <h2>{$department.name}</h2>
              {if $department.description}
                  <p>{$department.description}</p>
              {/if}
            </div>
          </a>
        </li>
        {foreachelse}
            {include file="$template/includes/alert.tpl" type="info" msg=$LANG.nosupportdepartments textcenter=true}
        {/foreach}
      </ul>
    </div>
  </div>
</section>
