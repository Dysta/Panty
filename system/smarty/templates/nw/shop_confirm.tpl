{extends file="$THEME/layout.tpl"}
{block name=title}Boutique : Confirmation{/block}
{block name=body}
<div id="contenu">
				<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
					<div id="title">
						<span>Boutique - Confirmation</span>Boutique - Confirmation
					</div>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<p class="error-message"><img src="{$URL_ASSETS}img/devtool/error.png" class="devtool"/> 
						<b>ATTENTION :</b> Vous devez <b>imp&eacute;rativement avoir votre personnage connect&eacute; en jeu</b> avant de valider la commande.<br>
						<b>Aucun remboursement</b> ne pourra avoir lieu <b>en cas de perte</b> si vous ne respectez pas cette indication.<br>
						<b>Veuillez verifier</b> maintenant que <b>vous n'avez pas ete d&eacute;connect&eacute;</b> du jeu <b>avant de faire l'achat.</b>
					</p>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					{if isset($success)}
						<p class="clean-message"><img src="{$URL_ASSETS}img/devtool/ok.png" class="devtool"/> 
							Vous devriez recevoir votre <b>commande</b> d'ici quelques instants !
						</p>
						<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					{/if}
					<h1>● Item choisi</h1>
					<div id="shop-item">
						<b class="titre-obj">{$item.name}</b>
						<b class="lvl-obj">Nv.{$item.level}</b>
						<span class="pods-obj">{$item.pod}</span>
						<b class="prix-obj">{$item.sold}</b>
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
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<h1>● Sélectionnez un personnage</h1>
						<center>
							<form method="post">
								<table >
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
												<center>{$char.level}</center>
											</td>
										</tr>
										{/foreach}
									</tbody>
								</table><h2></h2><h3></h3>
								<center><input class="submit" type="submit" name="" value="Confirmer l'achat !" type="submit"/></center>
							</form>
						</center>
						<h2></h2><h3></h3>
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
</div>
{/block}