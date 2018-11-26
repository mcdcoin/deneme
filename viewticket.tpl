{include file="$template/clientarea-head.tpl"}
<section id="page" class="backgroundf7f7f7">
	<div class="container">
		<h1 class="clientareaPageTitle">{$LANG.supportticketsreply}</h1>
		<p>Destek bildirimini cevaplayın.</p>
	</div>
</section>
<section id="page">
  <div class="container">
    {if $invalidTicketId}

        {include file="$template/includes/alert.tpl" type="danger" title=$LANG.thereisaproblem msg=$LANG.supportticketinvalid textcenter=true}

    {else}

        {if $closedticket}
            {include file="$template/includes/alert.tpl" type="warning" msg=$LANG.supportticketclosedmsg textcenter=true}
        {/if}

        {if $errormessage}
            {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
        {/if}

    {/if}

    {if !$invalidTicketId}

    <div id="ticket">
      <div class="ticket-controller">
        <a href="#" class="standartButon"><i class="fa fa-reply"></i> <span>Geri Dön</span></a>
        <a role="button" data-toggle="collapse" href="#ticketreply" aria-expanded="false" aria-controls="ticketreply" class="standartButon"><i class="fa fa-pencil-square-o"></i> <span>Cevap Yaz</span></a>
      </div>
      <div class="collapse" id="ticketreply">
        <form class="ticket-reply" method="post" action="{$smarty.server.PHP_SELF}?tid={$tid}&amp;c={$c}&amp;postreply=true" enctype="multipart/form-data" role="form" id="frmReply">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>{$LANG.supportticketsclientname}</label>
                {if $loggedin}
                <input class="basic-input-control" type="text" id="inputName" value="{$clientname}" disabled="disabled" />{else}<input class="basic-input-control" type="text" name="replyname" id="inputName" value="{$replyname}" />
                {/if}
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>{$LANG.supportticketsclientemail}</label>
                {if $loggedin}
                <input class="basic-input-control" type="text" id="inputEmail" value="{$email}" disabled="disabled" />{else}<input class="basic-input-control" type="text" name="replyemail" id="inputEmail" value="{$replyemail}" />
                {/if}
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="inputMessage">{$LANG.contactmessage}</label>
            <textarea name="replymessage" id="inputMessage" rows="12" class="basic-input-control markdown-editor" data-auto-save-name="client_ticket_reply_{$tid}">{$replymessage}</textarea>
          </div>
          <div class="row form-group">
              <div class="col-sm-12">
                  <label for="inputAttachments">{$LANG.supportticketsticketattachments}</label>
              </div>
              <div class="col-sm-9">
                  <input type="file" name="attachments[]" id="inputAttachments" class="basic-input-control" />
                  <div id="fileUploadsContainer"></div>
              </div>
              <div class="col-sm-3">
                  <button type="button" class="yesil-buton btn-block" onclick="extraTicketAttachment()">
                      <i class="fa fa-plus"></i> {$LANG.addmore}
                  </button>
              </div>
              <div class="col-xs-12 ticket-attachments-message text-muted">
                  {$LANG.supportticketsallowedextensions}: {$allowedfiletypes}
              </div>
          </div>
          <div class="form-group text-center">
              <input class="yesil-buton" type="submit" name="save" value="{$LANG.supportticketsticketsubmit}" />
              <input class="standartButon" type="reset" value="{$LANG.cancel}" onclick="jQuery('#ticketReply').click()" />
          </div>
        </form>
      </div>
      <div class="ticket-main">
        <ul>
          {foreach from=$descreplies key=num item=reply}
          <li{if $reply.admin} class="staff"{/if}>
            <div class="ticket-each-detail">
              <div class="user-info">
                <div class="user-title">
                  <span>{$reply.name}</span>
                  <span class="smallfont">(
                      {if $reply.admin}
                          {$LANG.supportticketsstaff}
                      {elseif $reply.contactid}
                          {$LANG.supportticketscontact}
                      {elseif $reply.userid}
                          {$LANG.supportticketsclient}
                      {else}
                          {$reply.email}
                      {/if})
                  </span>
                </div>
                <div class="ticket-date">
                  {$reply.date}
                </div>
              </div>
            </div>
            <div class="ticket-message">
              {$reply.message}
              {if $reply.id && $reply.admin && $ratingenabled}
              <div class="clearfix">
                {if $reply.rating}
                <div class="rating-done">
                  {for $rating=1 to 5}
                  <span class="star{if (5 - $reply.rating) < $rating} active{/if}"></span>
                  {/for}
                  <div class="rated">{$LANG.ticketreatinggiven}</div>
                </div>
                {else}
                <div class="rating" ticketid="{$tid}" ticketkey="{$c}" ticketreplyid="{$reply.id}">
                  <span class="star" rate="5"></span>
                  <span class="star" rate="4"></span>
                  <span class="star" rate="3"></span>
                  <span class="star" rate="2"></span>
                  <span class="star" rate="1"></span>
                </div>
                {/if}
              </div>
              {/if}
            </div>
            {if $reply.attachments}
            <div class="attachments">
              <strong>{$LANG.supportticketsticketattachments} ({$reply.attachments|count})</strong>
              <ul>
                {foreach from=$reply.attachments key=num item=attachment}
                <li><i class="fa fa-file-o"></i> <a href="dl.php?type={if $reply.id}ar&id={$reply.id}{else}a&id={$id}{/if}&i={$num}">{$attachment}</a></li>
                {/foreach}
              </ul>
            </div>
            {/if}
          </li>
          {/foreach}
        </ul>
      </div>
    </div>
    {/if}

  </div>
</section>
