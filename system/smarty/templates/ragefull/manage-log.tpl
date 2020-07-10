{extends file="$THEME/layout.tpl"}
{block name=title}Gestion des logs{/block}<br/>
{block name=body}
<li class="news-row">
	<h2>Logs Achat Points</h2>
	<div class="news-text">
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
							<b>Date</b>
						</center>
					</td>
				</tr>
				{foreach from=$array_token_log item=token_log}
				<tr>
					<td>
						<center>
							<b>{$token_log.account}</b>
						</center>
					</td>
					<td>
						<center>
							{$token_log.date}
						</center>
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
</li>

<li class="news-row">
	<h2>Logs Boutique</h2>
	<div class="news-text">
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
							<b>Item</b>
						</center>
					</td>
					<td width="30%">
						<center>
							<b>Date</b>
						</center>
					</td>
				</tr>
				{foreach from=$array_shop_log item=shop_log}
				<tr>
					<td>
						<center>
							<b>{$shop_log.account}</b>
						</center>
					</td>
					<td>
						<center>
							<b>{$shop_log.item}</b>
						</center>
					</td>
					<td>
						<center>
							{$shop_log.date}
						</center>
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
</li>
{/block}