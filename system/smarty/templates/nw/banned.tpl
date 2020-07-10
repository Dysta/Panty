{extends file="$THEME/layout.tpl"}
{block name=title}Banni{/block}
{block name=body}
		<div id="contenu">
				<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<span>Banni</span>Banni
				</div>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<!-- Début interieur page -->
				<p class="error-message"><img src="{$URL_ASSETS}img/devtool/error.png" class="devtool"/> 
					Vous êtes banni. Si vous pensez qu'il s'agit d'une erreur, rendez-vous sur <a href="{$BOARD_URL}">notre forum</a>.
				</p>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<!--Fin interieur page -->
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
			</div>
{/block}