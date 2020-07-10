{extends file="$THEME/layout.tpl"}
{block name=title}Staff{/block}
{block name=body}
{foreach from=$array_staff item=staff}
<table>
	<tr>
		<div class="caption"><a href="{$URL}index.php/user/view_account/{$staff.id}">{$staff.pseudo}</a> - {$staff.rang}	<img alt="Statut" title="Statut" class="icon_li" src="{$URL_ASSETS_GLOBAL}ico/{$staff.logged}.png" style="float: right;"></div>
		<td class="text">				
			<br />
			<img alt="Mail" style="float: left;" title="Mail" class="icon_li" src="{$URL_ASSETS_GLOBAL}devtool/email.png"> Email : {$staff.mail}
			<br/>
		</td>
	</tr>
</table>
{/foreach}
<br/>
{/block}