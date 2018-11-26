{foreach from=$customfields item=customfield}
    <div class="form-group">
        <label for="customfield{$customfield.id}">{$customfield.name}</label>
        {$customfield.input}
        {if $customfield.description}
            <p class="help-block">{$customfield.description}</p>
        {/if}
    </div>
{/foreach}
<script type="text/javascript">
$(document).ready(function(){
  {foreach from=$customfields item=customfield}
  $("#customfield{$customfield.id}").removeClass("form-control");
  $("#customfield{$customfield.id}").addClass("basic-input-control");
  {/foreach}
});
</script>
