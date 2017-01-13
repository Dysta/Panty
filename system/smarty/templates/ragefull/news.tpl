{extends file="$THEME/layout.tpl"}
{block name=title}News{/block}
{block name=body}
{foreach from=$array_news item=news}
<li class="news-row">
	<h2>
		<a href="{$URL}/news/view/{$news.id}">{$news.title}</a>
		<img width="16" height="16" style="float: right;" src="{$URL_ASSETS_GLOBAL}devtool/news/{$news.type}.png">
		</h2> par <b>{$news.author}</b>
		<div class="news-text">
						{$news.content}
		</div>
	</li>
{/foreach}
{/block}