{extends file="$THEME/layout.tpl"}
{block name=title}News{/block}
{block name=body}
{if isset($bug_added)}
	      <li class="news-row"><h2><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/clean.png"> F&eacute;licitation !</h2><div class="news-text">
          Votre bug a &eacute;t&eacute; <b>enregistr&eacute;</b> avec succ&egrave;s.<br>
          </div></li>
{/if}
{if isset($smarty.session.logged)}
<li class="news-row">
	<h2>Ajouter un bug</h2>
	<div class="news-text">
		<form method="post">
			<input type="text" name="title" placeholder="Titre du bugs"/>
			<br />
			<br />
			<textarea name="message" style="width: 100%;" placeholder="Description du bug. Faite une description la plus précise possible"></textarea>
			<br />
			<br />
			Importance du bug :
				<SELECT name="type" style="color:black;">
					<OPTION VALUE="1" style="color:black;">Mineur</OPTION>
					<OPTION VALUE="2" style="color:black;">Moyenne</OPTION>
					<OPTION VALUE="3" style="color:black;">Majeur</OPTION>
				</SELECT>
			<br />
			<br />
			<input class="btn btn-warning" type="submit" value="Ajouter un bug" name="add_bug" value=""/>
		</form>
	</div>
</li>	
{/if}
{foreach from=$array_bug item=bug}
				<li class="news-row">
					<h2>{$bug.title}{if isset($smarty.session.logged) && $smarty.session.gmlvl>=3}<a href="{$URL}/server/delete_bug/{$bug.id}"><img width="16" height="16" style="float: right;" src="{$URL_ASSETS_GLOBAL}devtool/delete.png" alt="Supprimer le commentaire"></a>{/if}<img width="16" height="16" style="float: right;" src="{$URL_ASSETS_GLOBAL}devtool/flag_{$bug.type}.png"></h2> par <b>{$bug.author}</b>
					<div class="news-text">
						{$bug.content}
					</div>
				</li>
{/foreach}
{/block}