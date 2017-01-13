{extends file="$THEME/layout.tpl"}
{block name=title}Vue d'objet{/block}
{block name=body}
		<div id="contenu">
				<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
					<div id="title">
						<span>Vue d'objet</span>Vue d'objet
					</div>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<div id="shop-ency">
						<b class="titre-obj">{$item.name}</b>
						<b class="lvl-obj">Nv.{$item.level}</b>
						<span class="pods-obj">{$item.pod}</span>
						<img width="90" height="90" style="position:absolute;margin-top: 65px; margin-left: 18px;" src="{$URL_ASSETS_GLOBAL}items/{$item.id}.png">
						<div id="effet" >
							<div class="effet">
								{$item_stats}
							</div> 
						</div>
						<div id="description">
							{if $item.panoplie eq '-1'}Panoplie : Aucune{else}{$panoplie_name}{/if}
						</div>
					</div>
					{if isset($drops)}
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<h1>● Liste de drop</h1>
					<table width="94%" style="margin:8px 0px 8px 20px;">
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
					</table>
				{/if}
					<h2></h2>
					<h3></h3>
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
		</div>
{/block}