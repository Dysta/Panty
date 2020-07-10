{extends file="$THEME/layout.tpl"}
{block name=title}Devenir VIP{/block}
{block name=body}
<table>
	<tr>
		<div class="caption">Devenir VIP !</div>
		<td class="text">
			Passer VIP coute {$VIP_TOKENS} points.<br><br>
				Être VIP vous permet de :<br>
				- Gagner {$VIP_SHOP_TOKENS} points boutique au lieu de {$SHOP_TOKENS} lors d'achat de points.<br>
				- Gagner {$VIP_VOTE_TOKENS} points boutique au lieu de {$VOTE_TOKENS} lors d'un vote.<br>
				- Obtenir une réduction de {$VIP_RED}% sur la boutique.

		<br /><br />
		<center>
			<a href="{$URL}/user/get_vip" class="btn btn-danger">Devenir VIP !</a>
		</center>
		</td>
	</tr>
</table>
<br/>{/block}