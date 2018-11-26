<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Dosya Merkezi</h1>
    <p>{$LANG.downloadsintrotext}</p>
	</div>
</section>
<section id="page">
  <div class="container">
    <form role="form" method="post" action="downloads.php?action=search">
      <div class="custom-inline-input-and-buton">
        <input type="text" name="search" class="basic-input-control" placeholder="{$LANG.downloadssearch}"><button type="submit" class="yesil-buton">{$LANG.search}</button>
      </div>
    </form>

    <div class="row">
        {if $dlcats}
            <div class="col-md-6">
              <div class="urun-tablo">
                <h2 style="font-size:14pt;">{$LANG.downloadscategories}</h2>
                <div class="content">
                  <ul>
                    {foreach from=$dlcats item=dlcat}
                    <li class="yuzde100li">
                      <div>
                        <a href="{if $seofriendlyurls}{$WEB_ROOT}/downloads/{$dlcat.id}/{$dlcat.urlfriendlyname}{else}downloads.php?action=displaycat&amp;catid={$dlcat.id}{/if}"><i class="fa fa-folder-open-o"></i>&nbsp;<strong>{$dlcat.name}</strong></a> ({$dlcat.numarticles})<br />
                        {$dlcat.description}
                      </div>
                    </li>
                    {/foreach}
                  </ul>
                </div>
              </div>
            </div>
        {/if}

        <div class="col-md-{if $dlcats}6{else}12{/if}">
          <div class="urun-tablo">
            <h2 style="font-size:14pt;">{$LANG.downloadsfiles}</h2>
            <div class="content">
              <ul>
                {if $downloads}
                {foreach from=$downloads item=download}
                <li class="yuzde100li">
                  <div>
                    <a href="{$download.link}">
                        <i class="fa fa-file-o"></i>
                        <strong>
                            {$download.title}
                            {if $download.clientsonly}
                                <i class="fa fa-lock"></i>
                            {/if}
                        </strong>
                    </a><br />
                    {$download.description}
                    <div><span class="text-muted">{$LANG.downloadsfilesize}: {$download.filesize}</span></div>
                  </div>
                </li>
                {/foreach}
                {else}
                <li>
                  <div class="alert alert-info">
                    {$LANG.downloadsnone}
                  </div>
                </li>
                {/if}
              </ul>
            </div>
          </div>
        </div>
    </div>

  </div>
</section>
