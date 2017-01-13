{extends file="$THEME/layout.tpl"}
{block name=title}Gestion des comptes{/block}<br/>
{block name=body}
<li class="news-row">
	<h2>Compte non banni</h2>
	<div class="news-text">
		<table width="94%">
			<tbody>
				<tr>
					<td width="40%">
						<center>
							<b>Nom de compte</b>
						</center>
					</td>
					<td width="25%">
						<center>
							<b>Pseudo</b>
						</center>
					</td>
					<td width="15%">
						<center>
							<b>Rang</b>
						</center>
					</td>
					<td width="25%">
						<center>
							<b>Action</b>
						</center>
					</td>
				</tr>
				{foreach from=$array_account_unban item=account_unban}
				<tr>
					<td>
						<center>
							<b>{$account_unban.account}</b>
						</center>
					</td>
					<td>
						<center>
							{$account_unban.pseudo}
						</center>
					</td>
					<td>
						<center>
							{$account_unban.rang}
						</center>
					</td>
					<td>
						<center>
							<a href="{$URL}/administration/manage_account/{$account_unban.id}"><img title="Modifier le compte" src="{$URL_ASSETS_GLOBAL}devtool/edit.png"></a>
						</center>
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
</li>
<li class="news-row">
	<h2>Compte banni</h2>
	<div class="news-text">
		<table width="94%">
			<tbody>
				<tr>
					<td width="40%">
						<center>
							<b>Nom de compte</b>
						</center>
					</td>
					<td width="25%">
						<center>
							<b>Pseudo</b>
						</center>
					</td>
					<td width="15%">
						<center>
							<b>Rang</b>
						</center>
					</td>
					<td width="25%">
						<center>
							<b>Action</b>
						</center>
					</td>
				</tr>
				{foreach from=$array_account_ban item=account_ban}
				<tr>
					<td>
						<center>
							<b>{$account_ban.account}</b>
						</center>
					</td>
					<td>
						<center>
							{$account_ban.pseudo}
						</center>
					</td>
					<td>
						<center>
							{$account_ban.rang}
						</center>
					</td>
					<td>
						<center>
							<a href="{$URL}/administration/manage_account/{$account_ban.id}"><img title="Modifier le compte" src="{$URL_ASSETS_GLOBAL}devtool/edit.png"></a>
						</center>
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
</li>
{/block}