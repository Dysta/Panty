{extends file="$THEME/layout.tpl"}
{block name=title}Gestion des news{/block}<br/>
{block name=body}
		<div id="contenu">
			<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<span>Gestion des news</span>Gestion des news
				</div>
				{if isset($news_added)}
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<p class="clean-message"><img src="{$URL_ASSETS}img/devtool/ok.png" class="devtool"/> 
						Votre news a &eacute;t&eacute; <b>publi&eacute;</b> avec succ&egrave;s.
					</p>
				{/if}
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<h1>● News publié</h1>
					<table width="94%" style="margin:8px 0px 8px 20px;">
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
		<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
		<h1>● Ajouter une news</h1>
		<form method="post" style="margin-left:10px;">
			<input type="text" name="title" placeholder="Titre news" style="color:black;"/>
			<br />
			<br />
			<textarea id="ckeditor" name="message" placeholder="Contenu news" ></textarea>
			<br />
			<br />
			Type : 
			<SELECT name="type" style="color:black;">
				<OPTION VALUE="0" style="color:black;">Global</OPTION>
				<OPTION VALUE="1" style="color:black;">Maintenance</OPTION>
				<OPTION VALUE="2" style="color:black;">Bug/R&eacute;solution de bug</OPTION>
				<OPTION VALUE="3" style="color:black;">D&eacute;veloppement</OPTION>
				<OPTION VALUE="4" style="color:black;">Boutique/Promotions</OPTION>
				<OPTION VALUE="5" style="color:black;">Cadeau/Bonus/Events</OPTION>
			</SELECT>
			<br />
			<br />
			<center><input class="submit" type="submit" value="Ajouter" name="news" value=""/></center>
		</form>
		<h2></h2><h3></h3>
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
		</div>
{/block}