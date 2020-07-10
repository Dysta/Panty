{extends file="$THEME/layout.tpl"}
{block name=title}Achat de points{/block}
{block name=body}	
<div id="contenu">
				<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<span>Achat de points</span>Achat de points 
				</div>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<!-- Début interieur page -->
				<p class="infos-message"><img src="{$URL_ASSETS}img/devtool/infos.png" class="devtool"/>
					<b>Tout achat</b> de points vous fera <b>gagner {$shop_tokens} points boutique</b>.
				</p>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{if $METHODE_PAYEMENT eq '2'}
				<div data-dedipass="{$PUBLIC_KEY_DEDIPASS}" data-dedipass-custom="" style="width:595px;margin-left:15px;"></div>
				{/if}
				{if $METHODE_PAYEMENT eq '1'}
				<div id="starpass_{$IDD}"></div>
				<script type="text/javascript" src="http://script.starpass.fr/script.php?idd={$IDD}&amp;verif_en_php=1&amp;datas=&amp;">
				</script>
				<noscript>
					<p class="error-message"><img src="{$URL_ASSETS}img/devtool/error.png" class="devtool"/>
						Veuillez <b>activer le Javascript de votre navigateur</b> pour afficher le script de Micro Paiement <a href="http://www.starpass.fr/">StarPass</a>.
					</p>
				</noscript>
				{/if}
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<!--Fin interieur page -->
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
</div>	
{/block}