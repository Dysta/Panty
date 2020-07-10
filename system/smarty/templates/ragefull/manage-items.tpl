{extends file="$THEME/layout.tpl"}
{block name=title}Gestion des items boutique{/block}<br/>
{block name=body}
<li class="news-row">
	<h2>Gestion des items boutique</h2>
	<div class="news-text">
		<table>
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
	</div>
</li>

<li class="news-row">
	<h2>Ajout d'item boutique</h2>
	<div class="news-text">
		<form method="post">
			<input type="text" name="id_item" placeholder="ID Item"/>
			<br />
			<br />
			<input type="text" name="price_item" placeholder="Prix item"/>
			<br />
			<br />
			<input class="btn btn-warning" type="submit" value="Ajouter" name="news" value=""/>
		</form>
	</div>
</li>
{/block}