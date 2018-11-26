<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Makaleler</h1>
    <p>Arama sonuçları aşağıda listelenmiştir.</p>
	</div>
</section>
<section id="page">
  <div class="container">
    <form role="form" method="post" action="{$WEB_ROOT}/knowledgebase.php?action=search">
      <div class="custom-inline-input-and-buton">
        <input type="text" name="search" class="basic-input-control" placeholder="{$LANG.kbsearchexplain}"{if $searchterm} value="{$searchterm}{/if} /"><button type="submit" class="yesil-buton">{$LANG.search}</button>
      </div>
    </form>

    {if $kbcats}
    <div class="urun-tablo">
      <h2 style="font-size: 14pt;">{$LANG.knowledgebasecategories}</h2>
      <div class="content">
        <ul>
          {foreach name=kbasecats from=$kbcats item=kbcat}
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
    {/if}

    {if $kbarticles || !$kbcats}
    <div class="urun-tablo">
      <h2 style="font-size: 14pt;">
        {if $tag}
        {$LANG.kbviewingarticlestagged} '{$tag}'
        {else}
        {$LANG.knowledgebasearticles}
        {/if}
      </h2>
      <div class="content">
        <ul>
          {foreach from=$kbarticles item=kbarticle}
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
