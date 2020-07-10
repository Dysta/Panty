{extends file="$THEME/layout.tpl"}
{block name=title}Achat de points{/block}
{block name=body}
<table>
	<tr>
		<div class="caption">Achat de points</div>
		{if $METHODE_PAYEMENT eq '1'}
		<td class="text">
			<div id="starpass_{$IDD}"></div>
		<td class="text">
			<script type="text/javascript" src="http://script.starpass.fr/script.php?idd={$IDD}&amp;verif_en_php=1&amp;datas=&amp;"></script>
			<noscript>Veuillez activer le Javascript de votre navigateur s'il vous pla&icirc;t.<br />
				<a href="http://www.starpass.fr/">Micro Paiement StarPass</a>
			</noscript>
		</td>
		{/if}
		{if $METHODE_PAYEMENT eq '2'}
		<div data-dedipass="{$PUBLIC_KEY_DEDIPASS}" data-dedipass-custom=""></div>
		{/if}
	</tr>
</table>
<br/>
{/block}