{extends file="$THEME/layout.tpl"}
{block name=title}Gestion des news{/block}<br/>
{block name=body}
<li class="news-row">
	<h2>Gestion des commentaires</h2>
	<div class="news-text">
		<table>
			<tbody>
				<tr>
					<td>
						<center>
							<b>News ID</b>
						</center>
					</td>
					<td width="10%">
						<center>
							<b>Auteur</b>
						</center>
					</td>
					<td width="60%">
						<center>
							<b>Contenu</b>
						</center>
					</td>
					<td width="10%">
						<center>
							<b>Action</b>
						</center>
					</td>
				</tr>
				{foreach from=$array_comments item=comments}
				<tr>
					<td>
						<center>
							<a href="{$URL}/news/view/{$comments.news_id}" title="Voir la news"><b>{$comments.news_id}</b></a>
						</center>
					</td>
					<td>
						<center>
							{$comments.author}
						</center>
					</td>
					<td>
						<center>
							{$comments.content}
						</center>
					</td>
					<td>
						<center>
							<center><a href="{$URL}/administration/delete_comment/{$comments.id}"><img src="{$URL_ASSETS_GLOBAL}devtool/delete.png"></a></center>
						</center>
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
</li>
<li class="news-row">
	<h2>Gestion des bugs</h2>
	<div class="news-text">
		<table>
			<tbody>
				<tr>
					<td>
						<center>
							<b>Importance</b>
						</center>
					</td>
					<td width="10%">
						<center>
							<b>Auteur</b>
						</center>
					</td>
					<td width="60%">
						<center>
							<b>Contenu</b>
						</center>
					</td>
					<td width="10%">
						<center>
							<b>Action</b>
						</center>
					</td>
				</tr>
				{foreach from=$array_bug item=bug}
				<tr>
					<td>
						<center>
							<center><img src="{$URL_ASSETS_GLOBAL}devtool/flag_{$bug.type}.png"></a></center>
						</center>
					</td>
				
					<td>
						<center>
							{$bug.author}
						</center>
					</td>
					<td>
						<center>
							{$bug.content}
						</center>
					</td>
					<td>
						<center>
							<center><a href="{$URL}/administration/delete_bug/{$bug.id}"><img src="{$URL_ASSETS_GLOBAL}devtool/delete.png"></a></center>
						</center>
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
</li>
{/block}