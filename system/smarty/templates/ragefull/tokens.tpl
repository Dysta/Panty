{extends file="$THEME/layout.tpl"}
{block name=title}Achat de points{/block}
{block name=body}
<li class="news-row">
	<h2>Achat de points</h2>
	<div class="news-text">
	Tout achat de points vous fera gagner {$shop_tokens} points boutique. <br /><br />
	{if $METHODE_PAYEMENT eq '2'}
	<div data-dedipass="{$PUBLIC_KEY_DEDIPASS}" data-dedipass-custom=""></div>
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
	</div>
</li>	
{/block}