{extends file="$THEME/layout.tpl"}
{block name=title}Gestion des comptes{/block}<br/>
{block name=body}
		<div id="contenu">
			<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<span>Gestion des comptes</span>Gestion des comptes
				</div>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<h1>● Compte non banni</h1>
					<table width="94%" style="margin:8px 0px 8px 20px;">
			<tbody>
				<tr>
					<td width="30%">
						<center>
							<b>Nom de compte</b>
						</center>
					</td>
					<td width="30%">
						<center>
							<b>Pseudo</b>
						</center>
					</td>
					<td width="15%">
						<center>
							<b>Rang</b>
						</center>
					</td>
					<td width="15%">
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
		<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
		<h1>● Compte banni</h1>
		<table width="94%" style="margin:8px 0px 8px 20px;">
			<tbody>
				<tr>
					<td width="30%">
						<center>
							<b>Nom de compte</b>
						</center>
					</td>
					<td width="30%">
						<center>
							<b>Pseudo</b>
						</center>
					</td>
					<td width="15%">
						<center>
							<b>Rang</b>
						</center>
					</td>
					<td width="15%">
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
		<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
		<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
		</div>
{/block}