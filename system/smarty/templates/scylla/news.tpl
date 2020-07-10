	{extends file="$THEME/layout.tpl"}
{block name=title}News{/block}
{block name=body}
{foreach from=$array_news item=news}
<table>
	<tr>
		<td class="text">
			<div class="caption">
				<img width="16" height="16" style="float:left;margin-right:5px;margin-top:1px" src="{$URL_ASSETS_GLOBAL}devtool/news/{$news.type}.png">
				<a href="{$URL}/news/view/{$news.id}">{$news.title}</a> - Par {$news.author}
			</div>
			<br />
			{$news.content}
			<hr />
		</td>
	</tr>
</table>
{/foreach}
{/block}