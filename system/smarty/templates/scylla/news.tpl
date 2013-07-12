{extends file="$THEME/layout.tpl"}
{block name=title}News{/block}
{block name=body}
{foreach from=$array_news item=news}
<table>
	<tr>
		<td class="avatar"><img src="{$URL_ASSETS}images/avatar.jpg" width="150" height="150"></td>
		<td class="text">
			{$news.content}
			<div class="caption">{$news.title} - Par {$news.author}</div>
		</td>
	</tr>
</table>
<br/>
{/foreach}
{/block}