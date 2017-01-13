{extends file="$THEME/layout.tpl"}
{block name=title}Gestion des items boutique{/block}<br/>
{block name=body}
		<div id="contenu">
			<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<span>Gestion de la boutique</span>Gestion de la boutique
				</div>
				{if isset($item_added)}
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<p class="clean-message"><img src="{$URL_ASSETS}img/devtool/ok.png" class="devtool"/> 
						Votre item a &eacute;t&eacute; <b>enregistr&eacute;</b> avec succ&egrave;s.
					</p>
				{/if}
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<h1>● Item en boutique</h1>
					<table width="94%" style="margin:8px 0px 8px 20px;">
			<tbody>
				<tr>
					<td width="40%">
						<center>
							<b>Item</b>
						</center>
					</td>
					<td width="20%">
						<center>
							<b>Niveau</b>
						</center>
					</td>
					<td width="20%">
						<center>
							<b>Prix</b>
						</center>
					</td>
					<td width="20%">
						<center>
							<b>Prix VIP</b>
						</center>
					</td>
					<td width="20%">
						<center>
							<b>Action</b>
						</center>
					</td>
				</tr>
				{foreach from=$array_items item=item}
				<tr>
					<td>
						<center>
							<b>{$item.name}</b>
						</center>
					</td>
					<td>
						<center>
							{$item.level}
						</center>
					</td>
					<td>
						<center>{$item.sold}</center>
					</td>	
					<td>
						<center>{$item.sold_vip}</center>
					</td>
					<td>
						<center>
							<center><a href="{$URL}/administration/delete_shop_items/{$item.id}"><img src="{$URL_ASSETS_GLOBAL}devtool/delete.png"></a></center>
						</center>
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
		<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
		<h1>● Ajouter un item</h1>
		<center>
		<form method="post" style="margin-left:10px;">
			<input type="text" name="id_item" placeholder="ID Item" style="color:black;"/>
			<br />
			<br />
			<input type="text" name="price_item" placeholder="Prix item" style="color:black;"/>
			<br />
			<br />
			<input class="submit" type="submit" value="Ajouter" name="news" value=""/>
		</form>
		</center>
		<h2></h2><h3></h3>
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
		</div>
{/block}