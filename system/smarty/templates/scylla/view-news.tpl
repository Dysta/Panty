{extends file="$THEME/layout.tpl"}
{block name=title}{$view_data.new_title}{/block}
{block name=body}
{if isset($comment_added)}		  
	<table>
		<tr>
			<div class="caption"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/clean.png"> F&eacute;licitation !</div>
			<td class="text">
				Votre commentaire a &eacute;t&eacute; <b>enregistr&eacute;</b> avec succ&egrave;s.
			</td>
		</tr>
	</table>
{/if}

				<table>
					<tr>
						<td class="text">
							<div class="caption">{$view_data.new_title} - Par {$view_data.new_author}</div>
							{$view_data.new_content}
						</td>
					</tr>
				</table>
<hr />
{foreach from=$view_data.comments_array item=comments}			
				<table>
					<tr>
						<td class="text">
							<div class="caption">Par {$comments.author} {if isset($smarty.session.logged) && $smarty.session.gmlvl>=3}<a href="{$URL}/news/delete_comment/{$comments.id}"><img width="16" height="16" style="float: right;" src="{$URL_ASSETS_GLOBAL}devtool/delete.png" alt="Supprimer le commentaire"></a>{/if}</div>
							{$comments.content}
						</td>
					</tr>
				</table>
{/foreach}
<br />
{if isset($smarty.session.logged)}
	<table>
		<tr>
			<td class="text">
				<div class="caption">Ajouter un commentaire</div>
				<br />
				<center>
					<table style="width: 400px;" border="0">
						<form action="" method="post">
						<tr>
						<textarea name="message"></textarea>
						</tr>
					</table>
					<br />
					<center>
						<button type="submit" name="add_comment" class="btn btn-danger">Commenter !</button>
					</center>
					</form>
				</center>   
			</td>
		</tr>
	</table>
{/if}
{/block}