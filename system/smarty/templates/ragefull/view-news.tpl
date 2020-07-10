{extends file="$THEME/layout.tpl"}
{block name=title}{$view_data.new_title}{/block}
{block name=body}
{if isset($comment_added)}
	      <li class="news-row"><h2><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/clean.png"> F&eacute;licitation !</h2><div class="news-text">
          Votre commentaire a &eacute;t&eacute; <b>enregistr&eacute;</b> avec succ&egrave;s.<br>
          </div></li>
{/if}

				<li class="news-row">
					<h2>{$view_data.new_title}</h2> par <b>{$view_data.new_author}</b>
					<div class="news-text">
						{$view_data.new_content}
					</div>
				</li>

{foreach from=$view_data.comments_array item=comments}
				<li class="news-row">
					Par <b>{$comments.author}</b> {if isset($smarty.session.logged) && $smarty.session.gmlvl>=3}<a href="{$URL}/news/delete_comment/{$comments.id}"><img width="16" height="16" style="float: right;" src="{$URL_ASSETS_GLOBAL}devtool/delete.png" alt="Supprimer le commentaire"></a>{/if}
					<div class="news-text">
						{$comments.content}
					</div>
				</li>
{/foreach}

{if isset($smarty.session.logged)}
<li class="news-row">
	<h2>Ajouter un commentaire</h2>
	<div class="news-text">
<center>
<table style="width: 400px;" border="0">
<form action="" method="post">
<tr>
<textarea name="message"></textarea>
</tr>
</table>
<br />
<center>
<input class="input" name="add_comment" value="Commenter !" type="submit">
</center>
</form>
</center>   
	</div>
</li>	
{/if}
{/block}