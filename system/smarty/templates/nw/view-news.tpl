{extends file="$THEME/layout.tpl"}
{block name=title}{$view_data.new_title}{/block}
{block name=body}

<div id="contenu">
			<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<img style="position:absolute;margin:19px 0px 0px -85px;"src="{$URL_ASSETS}img/devtool/new.png"/><span>News</span>News
				</div>
				
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<h1>● {$view_data.new_title}</h1>
					<p>
						{$view_data.new_content}
					</p>
					<h2>Posté par <b>{$view_data.new_author}</b></h2>
					<h3></h3>
				
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<p class="infos-message"><img src="{$URL_ASSETS}img/devtool/infos.png" class="devtool"/> 
						L'espace de commentaire <b>n'est pas</b> un lieu pour demander de l'aide. Si vous avez <b>besoin d'aide</b>, rendez-vous sur <b><a href="{$BOARD_URL}" target="_blank">le forum </a></b>
					</p>
					
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				
				{if isset($comment_added)}
					<p class="clean-message"><img src="{$URL_ASSETS}img/devtool/ok.png" class="devtool"/> 
						Votre commentaire a &eacute;t&eacute; <b>enregistr&eacute;</b> avec succ&egrave;s.
					</p>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/if}
				
				{if isset($smarty.session.logged)}
				<h1>● Ajouter un commentaire</h1>
				<p>
					<form action="" method="post" style="margin-left:10px;">
					<textarea name="message" style="min-width:595px;max-width:595px;" placeholder="Votre commentaire..."></textarea>
					<br /><br />
					<center>
						<input class="submit" name="add_comment" value="Commenter !" type="submit">
					</center>
					</form>	
				</p>
					<h2></h2>
					<h3></h3>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{else}
				<p class="error-message"><img src="{$URL_ASSETS}img/devtool/error.png" class="devtool"/> 
					<b>Connectez-vous</b> pour poster un commentaire
				</p>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/if}
				
				{foreach from=$view_data.comments_array item=comments}
				<h1>
					● {$comments.author} 
				</h1>
					<p>
						{$comments.content}
					</p>
					<h2>{if isset($smarty.session.logged) && $smarty.session.gmlvl>=3}<a href="{$URL}/news/delete_comment/{$comments.id}"><font color="#e36154">Supprimer le commentaire</font></a>{/if}</h2>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/foreach}
				
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
		</div>
{/block}