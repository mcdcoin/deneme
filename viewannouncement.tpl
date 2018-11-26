{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">Duyurular</h1>
		<p>Hizmetler, ürünler ve diğer işlemler için duyurular.</p>
	</div>
</section>
<section id="page">
  <div class="container">
    <div class="duyuruController">
      <div class="left">
        {if $facebookrecommend}
          {literal}
          <div id="fb-root">
          </div>
          <script>(function(d, s, id) {
              var js, fjs = d.getElementsByTagName(s)[0];
              if (d.getElementById(id)) {return;}
              js = d.createElement(s); js.id = id;
              js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
              fjs.parentNode.insertBefore(js, fjs);
              }(document, 'script', 'facebook-jssdk'));</script>
          {/literal}
          <span class="fb-like" data-href="{$systemurl}{if $seofriendlyurls}announcements/{$id}/{$urlfriendlytitle}.html{else}announcements.php?id={$id}{/if}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></span>
        {/if}
        {if $twittertweet}
          <a href="https://twitter.com/share" class="twitter-share-button" data-count="vertical" data-via="{$twitterusername}">Tweet</a><script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
        {/if}
        {if $googleplus1}
          <g:plusone annotation="inline"></g:plusone>
          {literal}<script type="text/javascript">
          (function() {
              var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
              po.src = 'https://apis.google.com/js/plusone.js';
              var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
          })();
          </script>{/literal}
        {/if}
      </div>
      <div class="right">
        <i class="fa fa-clock-o"></i> {$timestamp|date_format:"%A, %B %e, %Y"}
      </div>
    </div>
    <div class="duyuruContent">
      {$text}
    </div>

    {if $facebookcomments}
      <br />
      {literal}
      <div id="fb-root">
      </div>
      <script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) {return;}
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
          fjs.parentNode.insertBefore(js, fjs);
          }(document, 'script', 'facebook-jssdk'));</script>
      {/literal}
      <fb:comments href="{$systemurl}{if $seofriendlyurls}announcements/{$id}/{$urlfriendlytitle}.html{else}announcements.php?id={$id}{/if}" num_posts="5" width="100%"></fb:comments>
    {/if}

    <div class="text-center">
      <a href="{$WEB_ROOT}/announcements.php" class="standartButon">{$LANG.clientareabacklink}</a>
    </div>

  </div>
</section>
