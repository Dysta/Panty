{extends file="$THEME/layout.tpl"}
{block name=title}Gestion des news{/block}<br/>
{block name=body}
<li class="news-row">
	<h2>Gestion des news</h2>
	<div class="news-text">
		<table>
			<tbody>
				<tr>
					<td width="60%">
						<center>
							<b>Titre</b>
						</center>
					</td>
					<td width="25%">
						<center>
							<b>Auteur</b>
						</center>
					</td>
					<td>
						<center>
							<b>Type</b>
						</center>
					</td>
					<td width="20%">
						<center>
							<b>Action</b>
						</center>
					</td>
				</tr>
				{foreach from=$array_news item=news}
				<tr>
					<td>
						<center>
							<b>{$news.title}</b>
						</center>
					</td>
					<td>
						<center>
							{$news.author}
						</center>
					</td>
					<td>
						<center><img src="{$URL_ASSETS_GLOBAL}devtool/news/{$news.type}.png"></center>
					</td>
					<td>
						<center>
							<center><a href="{$URL}/administration/delete_new/{$news.id}"><img src="{$URL_ASSETS_GLOBAL}devtool/delete.png"></a></center>
						</center>
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
</li>

<li class="news-row">
	<h2>Ajout de news</h2>
	<div class="news-text">
		<form method="post">
			<input type="text" name="title" placeholder="Titre news"/>
			<br />
			<br />
			<textarea name="message" style="width: 100%;" placeholder="Contenu news"></textarea>
			<br />
			<br />
			Type : 
			<SELECT name="type">
				<OPTION VALUE="0">Global</OPTION>
				<OPTION VALUE="1">Maintenance</OPTION>
				<OPTION VALUE="2">Bug/R&eacute;solution de bug</OPTION>
				<OPTION VALUE="3">D&eacute;veloppement</OPTION>
				<OPTION VALUE="4">Boutique/Promotions</OPTION>
				<OPTION VALUE="5">Cadeau/Bonus/Events</OPTION>
			</SELECT>
			<br />
			<br />
			<input class="btn btn-warning" type="submit" value="Ajouter" name="news" value=""/>
		</form>
	</div>
</li>
{/block}