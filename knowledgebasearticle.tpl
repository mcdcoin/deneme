<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">{$kbarticle.title}</h1>
    <p>{$kbarticle.title} makale başlığını incelemektesiniz.</p>
	</div>
</section>
<section id="page">
  <div class="container">

    {if $kbarticle.voted}
        {include file="$template/includes/alert.tpl" type="success" msg="{lang key="knowledgebaseArticleRatingThanks"}" textcenter=true}
    {/if}

    <blockquote class="article-text">
        {$kbarticle.text}
    </blockquote>

    <div class="hidden-print">
      <div class="urun-tablo">
        <h2 style="font-size: 14pt;">{if $kbarticle.voted}{$LANG.knowledgebaserating}{else}{$LANG.knowledgebasehelpful}{/if}</h2>
        <div class="content padding12">
          <div class="text-center">
            {if $kbarticle.voted}
                {$kbarticle.useful} {$LANG.knowledgebaseratingtext} ({$kbarticle.votes} {$LANG.knowledgebasevotes})
            {else}
                <form action="{if $seofriendlyurls}{$WEB_ROOT}/knowledgebase/{$kbarticle.id}/{$kbarticle.urlfriendlytitle}.html{else}knowledgebase.php?action=displayarticle&amp;id={$kbarticle.id}{/if}" method="post">
                    <input type="hidden" name="useful" value="vote">
                    <button type="submit" name="vote" value="yes" class="yesil-buton custom-btn-xs">{$LANG.knowledgebaseyes} <i class="fa fa-thumbs-o-up"></i></button>
                    <button type="submit" name="vote" value="no" class="standartButon custom-btn-xs"><i class="fa fa-thumbs-o-down"></i> {$LANG.knowledgebaseno}</button>
                </form>
            {/if}
            <a href="#" class="standartButon" onclick="window.print();return false">{$LANG.knowledgebaseprint} <i class="fa fa-print"></i></a>
          </div>
        </div>
      </div>
    </div>
    {if $kbarticles}
    <div class="urun-tablo">
      <h2 style="font-size: 14pt;">{$LANG.knowledgebasealsoread}</h2>
      <div class="content">
        <ul>
          {foreach key=num item=kbarticle from=$kbarticles}
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
