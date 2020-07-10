{extends file="$THEME/layout.tpl"}
{block name=title}{$title}{/block}
{block name=body}
<div id="contenu">
				<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<span>{$title}</span>{$title} 
				</div>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<!-- Début interieur page -->
				<p class="infos-message"><img src="{$URL_ASSETS}img/devtool/infos.png" class="devtool"/>
					{$content}
				</p>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<center>
					<a href="{$URL}/news/index">Retour à la page d'accueil</a> 
					- 
					<a href="javascript:history.go(-1)">Retour à la page précédente</a>
				</center>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<!--Fin interieur page -->
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
</div>
{/block}