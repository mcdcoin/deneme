<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Makaleler</h1>
    <p>Satın aldığınız ürünler için makaleler.</p>
	</div>
</section>
<section id="page">
  <div class="container">
    <form role="form" method="post" action="{$WEB_ROOT}/knowledgebase.php?action=search">
      <div class="custom-inline-input-and-buton">
        <input type="text" name="search" class="basic-input-control" placeholder="{$LANG.kbsearchexplain}"><button type="submit" class="yesil-buton">{$LANG.search}</button>
      </div>
    </form>

    {if $kbcats}
    <div class="urun-tablo">
      <h2 style="font-size: 14pt;">{$LANG.knowledgebasecategories}</h2>
      <div class="content">
        <ul>
          {foreach from=$kbcats name=kbcats item=kbcat}
          <li class="yuzde50li">
            <a href="{if $seofriendlyurls}{$WEB_ROOT}/knowledgebase/{$kbcat.id}/{$kbcat.urlfriendlyname}{else}knowledgebase.php?action=displaycat&amp;catid={$kbcat.id}{/if}">
              <i class="fa fa-folder-open-o"></i> <strong>{$kbcat.name}</strong> ({$kbcat.numarticles})
            </a>
            <p>{$kbcat.description}</p>
          </li>
          {/foreach}
        </ul>
      </div>
    </div>
    {else}
        {include file="$template/includes/alert.tpl" type="info" msg=$LANG.knowledgebasenoarticles textcenter=true}
    {/if}

    {if $kbmostviews}
    <div class="urun-tablo">
      <h2 style="font-size: 14pt;">{$LANG.knowledgebasepopular}</h2>
      <div class="content">
        <ul>
          {foreach from=$kbmostviews item=kbarticle}
          <li class="yuzde100li">
            <a href="{if $seofriendlyurls}{$WEB_ROOT}/knowledgebase/{$kbarticle.id}/{$kbarticle.urlfriendlytitle}.html{else}knowledgebase.php?action=displayarticle&amp;id={$kbarticle.id}{/if}">
              <i class="fa fa-file-o"></i> <strong>{$kbarticle.title}</strong>
            </a>
            <p>{$kbarticle.article|truncate:100:"..."}</p>
          </li>
          {/foreach}
        </ul>
      </div>
    </div>
    {/if}

  </div>
</section>
