{extends file="$THEME/layout.tpl"}
{block name=title}{$title}{/block}
{block name=body}
<li class="news-row">
	<h2>{$title}</h2>
	<div class="news-text">
		{$content}
		<br /><br />
		<center><a href="{$VOTE_URL}">Voter quand même !</a></center>
	</div>
</li>
{/block}