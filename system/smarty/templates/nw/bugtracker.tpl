{extends file="$THEME/layout.tpl"}
{block name=title}Bugtracker{/block}
{block name=body}
		<div id="contenu">
			<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<span>Bugtracker</span>Bugtracker
				</div>
				{if isset($smarty.session.logged)}
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<p class="infos-message"><img src="{$URL_ASSETS}img/devtool/infos.png" class="devtool"/> 
						Le bugtracker <b>n'est pas</b> un lieu pour demander de l'aide. Si vous avez <b>besoin d'aide</b>, rendez-vous sur <b><a href="{$BOARD_URL}" target="_blank">le forum </a></b> !
					</p>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{if isset($bug_added)}
					<p class="clean-message"><img src="{$URL_ASSETS}img/devtool/ok.png" class="devtool"/> 
						Votre bug a &eacute;t&eacute; <b>enregistr&eacute;</b> avec succ&egrave;s.
					</p>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/if}
				<h1>● Reporter un bug</h1>
					<form action="" method="post" style="margin-left:10px;">
						<input type="text" name="title" placeholder="Titre du bug" style="color:black;"/>
						<br />
						<br />
						<textarea name="message" style="width:594px;color:black;resize:none;" placeholder="Description du bug. Soyez le plus précis possible." ></textarea>
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
						<center><input class="submit" type="submit" value="Ajouter" name="add_bug"/></center>
					</form>
					<h2></h2>
					<h3></h3>
				{else}
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<p class="infos-message"><img src="{$URL_ASSETS}img/devtool/infos.png" class="devtool"/> 
						Le bugtracker <b>n'est pas</b> un lieu pour demander de l'aide. Si vous avez <b>besoin d'aide</b>, rendez-vous sur <b><a href="{$BOARD_URL}" target="_blank">le forum </a></b> !
					</p>
					
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				
				<p class="error-message"><img src="{$URL_ASSETS}img/devtool/error.png" class="devtool"/> 
					<b>Connectez-vous</b> pour poster un bug !
				</p>
				{/if}
				{foreach from=$array_bug item=bug}
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<h1>● <img width="16" height="16" style="float:right;margin-right:30px;margin-top:4px;" src="{$URL_ASSETS_GLOBAL}devtool/flag_{$bug.type}.png">{$bug.title}</h1> 
					<p>
						{$bug.content}
					</p>
					<h2>Posté par <b>{$bug.author}</b></h2>
					<h3>{if isset($smarty.session.logged) && $smarty.session.gmlvl>=3}<a href="{$URL}/server/delete_bug/{$bug.id}"><font color="#e36154">Supprimer le bug</font></a>{/if}</h3>
				{/foreach}
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
		</div>
{/block}