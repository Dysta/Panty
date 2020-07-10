{extends file="$THEME/layout.tpl"}
{block name=title}News{/block}
{block name=body}
		<div id="contenu">
			<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<img style="position:absolute;margin:19px 0px 0px -85px;"src="{$URL_ASSETS}img/devtool/new.png"/><span>Bienvenue sur {$TITLE}</span>Bienvenue sur {$TITLE}
				</div>
				{foreach from=$array_news item=news}
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<h1>● <img width="16" height="16" style="float:right;margin-right:30px;margin-top:4px;" src="{$URL_ASSETS_GLOBAL}devtool/news/{$news.type}.png">{$news.title}</h1>
					<p>
						{$news.content}
					</p>
					<h2>Posté par <b>{$news.author}</b></h2>
					{if $USE_COMMENT eq 'TRUE'}
					<h3><a href="{$URL}/news/view/{$news.id}"><img src="{$URL_ASSETS}img/devtool/comment.png" class="devtool"/>Commentaire</a></h3>
					{else}
					<br />
					{/if}
				{/foreach}
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
		</div>
{/block}