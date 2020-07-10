{extends file="$THEME/layout.tpl"}
{block name=title}Administration{/block}<br/>
{block name=body}
<li class="news-row">
	<h2>Administration</h2>
	<div class="news-text">	
		<table>
			<tbody>
				<tr>
					<td>
						<center>
							<a href="{$URL}/administration/news"><input class="submit" type="submit" value="Gestion News" /></a>
						</center>
					</td>
					<td>
						<center>
							<a href="{$URL}/administration/shop_items"><input class="submit" type="submit" value="Gestion Boutique" /></a>
						</center>
					</td>
					<td>
						<center>
							<a href="{$URL}/administration/account"><input class="submit" type="submit" value="Gestion Comptes" /></a>
						</center>
					</td>
				</tr>
				<tr>
					<td>
						<center>
							<a href="{$URL}/administration/message"><input class="submit" type="submit" value="Gestion Message" /></a>
						</center>
					</td>
					<td>
						<center>
							<a href="{$URL}/administration/logs"><input class="submit" type="submit" value="Gestion Logs" /></a>
						</center>
					</td>
				</tr>
			<tbody>
		</table>
	</div>
</li>
{/block}