{extends file="$THEME/layout.tpl"}
{block name=title}Trailer{/block}
{block name=body}
<li class="news-row">
	<h2>Trailer du serveur</h2>
	<div class="news-text">
		<center>
			<iframe width="580" height="345" src="{$TRAILER_URL}" frameborder="0" allowfullscreen/></iframe>
		</center>
	</div>
</li>
{/block}