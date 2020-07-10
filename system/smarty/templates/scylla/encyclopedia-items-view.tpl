{extends file="$THEME/layout.tpl"}
{block name=title}Vue d'objet{/block}
{block name=body}
<table>
	<tr>
		<div class="caption">Vue d'objet</div>
		<td class="text">
			<div style="margin:auto;width:587px;height:260px;background:url('{$URL_ASSETS}images/Bg_Item.png');">
				<b style="position:absolute;color:#ffffff;font-size:14px;margin-top: 10px; margin-left:10px;">{$item.name}</b>
				<b style="float:right;color:#ffffff;font-size:14px;margin-top: 10px; margin-right:10px;">Niv.{$item.level}</b>
				<b style="position:absolute;color:#ffffff;font-size:14px;margin-top: 42px; margin-left:210px;">{$item.prix}</b>
				<img style="position:absolute;margin-top: 65px; margin-left: 18px;" src="{$URL_ASSETS_GLOBAL}items/{$item.id}.png">
				<div style="position:absolute; margin-top:65px; margin-left:136px;height:123px; width:450px;overflow-y:scroll;overflow-x:hidden;">
					<p style="margin-top:5px; margin-left:3px;font-size:14px;">{$item_stats}</p>
				</div>
				<div style="position:absolute;color:#514a3c;font-size:14px;margin-top: 191px; margin-left:7px;height:65px; width:575px;">
					<u>
					{if $item.panoplie eq '-1'}Panoplie : Aucune{else}{$panoplie_name}{/if}
					</u><br />
				</div>
			</div>
			</div>
		</td>
	</tr>
</table>
<br/>
{if isset($drops)}
<table>
	<tr>
		<div class="caption">Liste de drop</div>
		<td class="text">
			<table>
				<tbody>
					<tr>
						<td width="40%">
							<b>
								<center>Monstre</center>
							</b>
						</td>
						<td width="20%">
							<b>
								<center>Seuil</center>
							</b>
						</td>
						<td width="40%">
							<center><b>Max</b></center>
						</td>
						<td width="40%">
							<center><b>Taux</b></center>
						</td>
					</tr>
					{foreach from=$drops item=data_drop}
					<tr>
						<td style="color:#000000;background-color:#e3b74e">
							<center>{$data_drop.mob_name}</center>
						</td>
						<td style="color:#000000;background-color:#e3b74e">
							<center>{$data_drop.seuil}</center>
						</td>
						<td style="color:#000000;background-color:#e3b74e">
							<center>{$data_drop.max}</center>
						</td>
						<td style="color:#000000;background-color:#e3b74e">
							<center>{$data_drop.taux}%</center>
						</td>
					</tr>
					{/foreach}
				</tbody>
			</table>
			{/if}
		</td>
	</tr>
</table>
<br/>{/block}