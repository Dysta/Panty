{extends file="$THEME/layout.tpl"}
{block name=title}Bugtracker{/block}<br/>
{block name=body}
{if isset($bug_added)}
			<table>
				<tr>
					<div class="caption"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/clean.png"> Félicitation !</div>
					<td class="text">
						Votre bug a &eacute;t&eacute; <b>enregistr&eacute;</b> avec succ&egrave;s.<br>
					</td>
				</tr>
			</table>
{/if}
{if isset($smarty.session.logged)}
<table>
	<tr>
		<div class="caption">Ajouter un bug</div>
		<td class="text">
				<table style="width: 400px;" border="0">
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
				</table>
		</td>
	</tr>
</table>
{/if}
<hr />
{foreach from=$array_bug item=bug}
				<table>
					<tr>
						<td class="text">
							<div class="caption">Par {$bug.author} {if isset($smarty.session.logged) && $smarty.session.gmlvl>=3}<a href="{$URL}/server/delete_bug/{$bug.id}"><img width="16" height="16" style="float: right;" src="{$URL_ASSETS_GLOBAL}devtool/delete.png" alt="Supprimer le commentaire"></a>{/if}<img width="16" height="16" style="float: right;" src="{$URL_ASSETS_GLOBAL}devtool/flag_{$bug.type}.png"></div>
							{$bug.content}
						</td>
					</tr>
				</table>
{/foreach}
{/block}