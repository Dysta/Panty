{extends file="$THEME/layout.tpl"}
{block name=title}Boutique : Confirmation{/block}
{block name=body}
{if isset($success)}
<li class="news-row">
	<h2><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/clean.png"> F&eacute;licitation !</h2>
	<div class="news-text">
		Vous devriez recevoir votre <b>commande</b> d'ici quelques instants !<br>
	</div>
</li>
{/if}
<li class="news-row">
	<h2>Boutique : Confirmation</h2>
	<div class="news-text">
		<center>Veuillez v&eacute;rifier les informations de la commande avant de continuer. Lisez bien les informations de cette page, elles peuvent vous &ecirc;tre utiles.</center>
		<br /><br />
		<div style="margin:auto;width:587px;height:260px;background:url('{$URL_ASSETS}images/Bg_Boutique2.png');">
			<b style="position:absolute;color:#ffffff;font-size:14px;margin-top: 10px; margin-left:10px;">{$item.name}</b>
			<b style="float:right;color:#ffffff;font-size:14px;margin-top: 10px; margin-right:10px;">Niv.{$item.level}</b>
			<span style="position:absolute;color:#514a3c;font-size:12px;margin-top: 40px; margin-left:5px;">{$item.pod} pods</span>
			<b style="position:absolute;color:#ffffff;font-size:14px;margin-top: 42px; margin-left:265px;">{$item.sold}</b>
			<img style="position:absolute;margin-top: 65px; margin-left: 18px;" src="{$URL_ASSETS_GLOBAL}items/{$item.id}.png">
			<div style="position:absolute; margin-top:65px; margin-left:136px;height:123px; width:450px;overflow-y:scroll;overflow-x:hidden;">
                <span style="margin-top:5px; margin-left:3px;font-size:14px;">{$item_stats}</span>
			</div>
			<div style="position:absolute;color:#514a3c;font-size:14px;margin-top: 191px; margin-left:7px;height:65px; width:575px;">
				<u>
				{if $item.panoplie eq '-1'}Panoplie : Aucune{else}{$panoplie_name}{/if}
				</u><br />
			</div>
		</div>
		<br />
		<span style="color: rgb(255, 0, 0)"><b>ATTENTION :</b> Vous devez imp&eacute;rativement avoir votre personnage connect&eacute; en jeu avant de valider la commande.</span><br>
		Aucun remboursement ne pourra avoir lieu en cas de perte si vous ne respectez pas cette indication.<br>
		Veuillez verifier maintenant que vous n'avez pas ete d&eacute;connect&eacute; du jeu avant de faire l'achat.<br><br>
		<center>
			<form method="post">
				<table>
					<tbody>
						<tr>
							<td></td>
							<td>
								<b>
									<center>Personnage</center>
								</b>
							</td>
							<td>
								<center><b>Niveau</b></center>
							</td>
						</tr>
						{foreach from=$character item=char}
						<tr>
							<td>
								<input type="radio" name="character" value="{$char.id}"> 
							</td>
							<td>
								<b>
									<center>{$char.name}</center>
								</b>
							</td>
							<td>
								{$char.level}
							</td>
						</tr>
						{/foreach}
					</tbody>
				</table>
				<center><input class="color_input" type="submit" name="" value="Confirmer l'achat !" type="submit"/></center>
			</form>
		</center>
	</div>
</li>
{/block}