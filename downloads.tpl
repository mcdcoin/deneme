<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Dosya Merkezi</h1>
    <p>{$LANG.downloadsintrotext}</p>
	</div>
</section>
<section id="page">
  <div class="container">
    {if empty($dlcats) }
        {include file="$template/includes/alert.tpl" type="info" msg=$LANG.downloadsnone textcenter=true}
    {else}
        <form role="form" method="post" action="downloads.php?action=search">
          <div class="custom-inline-input-and-buton">
            <input type="text" name="search" class="basic-input-control" placeholder="{$LANG.downloadssearch}"><button type="submit" class="yesil-buton">{$LANG.search}</button>
          </div>
        </form>

        <div class="row">
            <div class="col-md-6">
							<div class="urun-tablo">
								<h2 style="font-size:14pt;">{$LANG.downloadscategories}</h2>
								<div class="content">
									<ul>
										{foreach from=$dlcats item=dlcat}
										<li class="yuzde100li">
											<div>
												<a href="{if $seofriendlyurls}{$WEB_ROOT}/downloads/{$dlcat.id}/{$dlcat.urlfriendlyname}{else}downloads.php?action=displaycat&amp;catid={$dlcat.id}{/if}">
														<i class="fa fa-folder-open-o"></i>
														<strong>{$dlcat.name}</strong>
												</a>
												({$dlcat.numarticles})
												<br />
												{$dlcat.description}
											</div>
										</li>
										{foreachelse}
										<li class="yuzde100li">
											<div class="text-center">
												{$LANG.downloadsnone}
											</div>
										</li>
										{/foreach}
									</ul>
								</div>
							</div>
            </div>
            <div class="col-md-6">
							<div class="urun-tablo">
								<h2 style="font-size:14pt;">{$LANG.downloadspopular}</h2>
								<div class="content">
									<ul>
										{foreach from=$mostdownloads item=download}
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
										{foreachelse}
										<li class="yuzde100li">
											<div class="text-center">
												{$LANG.downloadsnone}
											</div>
										</li>
										{/foreach}
									</ul>
								</div>
							</div>
            </div>
        </div>
    {/if}

  </div>
</section>
