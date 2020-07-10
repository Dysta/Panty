{extends file="$THEME/layout.tpl"}
{block name=title}Profil{/block}<br/>

{block name=body}
	{if isset($badpassword)}
	      <li class="news-row"><h2><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</h2><div class="news-text">
          Le <b>mot de passe</b> entr&eacute; ne correspond pas avec le mot de passe du compte.<br>
          </div></li>
	{/if}
	
	{if isset($badconfirm)}
	      <li class="news-row"><h2><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</h2><div class="news-text">
          Les <b>mots de passe</b> entr&eacute;s ne sont pas les m&ecirc;mes.<br>
          </div></li>
	{/if}	
	
	{if isset($pass_changed)}
	      <li class="news-row"><h2><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/clean.png"> F&eacute;licitation !</h2><div class="news-text">
          Votre mot de passe a &eacute;t&eacute; <b>chang&eacute;</b> avec succ&egrave;s.<br>
          </div></li>
	{/if}	
	
	{if isset($message_changed)}
	      <li class="news-row"><h2><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/clean.png"> F&eacute;licitation !</h2><div class="news-text">
          Votre message personnel a &eacute;t&eacute; <b>chang&eacute;</b> avec succ&egrave;s.<br>
          </div></li>
	{/if}	

<li class="news-row">
	<h2>Mon compte</h2>
	<div class="news-text">
<center>
	<table style="width: 340px;" border="0">
			<tbody>
			<tr>
				<td style="width:150px">Nom de compte : </td>
				<td>{$user_data.account}</td>
			</tr>
			<tr>
				<td style="width:150px">Adresse mail : </td>
				<td>{$user_data.mail}</td>
			</tr>
			<tr>
				<td style="width:150px">Mon pseudo : </td>
				<td>{$user_data.pseudo}</td>
			</tr>

			<tr>
				<td style="width:150px">Nombre de vote : </td>
				<td style="width:150px">{$user_data.nb_votes}</td>
			</tr>
			
			<tr>
				<td style="width:150px">Points disponible : </td>
				<td style="width:150px">{$user_data.tokens}</td>
			</tr>

			<tr>
				<td style="width:150px">Derniere IP :</td>
				<td style="width:150px">{$user_data.last_ip}</td>
			</tr>
			
			<tr>
				<td style="width:150px">Derniere Connection :</td>
				<td style="width:150px">{$user_data.last_co}</td>
			</tr>
			
			<tr>
				<td style="width:150px">Question secr&egrave;te :</td>
				<td style="width:150px">{$user_data.question}</td>
			</tr>
			
			<tr>
				<td style="width:150px">Compte :</td>
				<td style="width:150px">{$user_data.player_lv}</td>
			</tr>
			
			<tr>
				<td style="width:150px">Connect&eacute; :</td>
				<td style="width:150px">{$user_data.connected}</td>
			</tr>		
			</tbody>
	</table>
	</center>
	</div>
</li>	

<li class="news-row">
	<h2>Mes personnages</h2>
	<div class="news-text">
<center>
	<table style="width: 500px;" border="0">
			<tbody>
							<tr>
								<td width="30"><img title="Race" alt="Race" src="{$URL_ASSETS_GLOBAL}ico/heads/0.png"></td>
								<td width="150"><b><center>Nom</center></b></td>
								<td width="30"><b><center>Sexe</center></b></td>
								<td width="50"><b><center>Level</center></b></td>
								<td width="120"><b><center>XP</center></b></td>
								<td width="30"><img title="Alignement" alt="Alignement" src="{$URL_ASSETS_GLOBAL}ico/heads/align/-1.png"></td>
								<td width="80"><center><b>Honneur</b></center></td>
							</tr>
							{foreach from=$chars_data item=player}
							<tr>
								<td width="30">
									<img src="{$URL_ASSETS_GLOBAL}ico/heads/{$player.class}_{$player.sexe}.png">
								</td>
								<td>
									<center>
										<a href="{$URL}/user/view_character/{$player.id}">{$player.name}</a>
									</center>
								</td>
								<td>
									<span>
										<center>
											<img class="icon_li" src="{$URL_ASSETS_GLOBAL}devtool/{$player.sexe}.png">
										</center>
									</span>
								</td>
								<td>
									<center>
										<b>{$player.level}</b>
									</center>
								</td>
								<td>
									<center>
										{$player.xp}
									</center>
								</td>
								<td>
									<img src="{$URL_ASSETS_GLOBAL}ico/heads/align/{$player.alignement}.png">
								</td>
								<td>
									<center>
										{$player.honor}
									</center>
								</td>
							</tr>
							{/foreach}
						</tbody>
	</table>
	</center>
	</div>
</li>

<li class="news-row">
	<h2>Changement de mot de passe</h2>
	<div class="news-text">
<center>
<table style="width: 400px;" border="0">
<form action="" method="post">
<tr>
<td style="width:250px">Ancien mot de passe :</td>
<td style="width:150px"><input class="input" name="oldpass" value="" type="password" required></td>
</tr>
<tr>
<td style="width:250px">Nouveau mot de passe :</td>
<td style="width:150px"><input class="input" name="pass" value="" type="password" required></td>
</tr>
<tr>
<td style="width:250px">Confirmer le nouveau mot de passe :</td>
<td style="width:150px"><input class="input" name="passconf" value="" type="password" required></td>
</tr>
</table>
<center>
<input class="input" name="change" value="Changer" type="submit">
</center>
</form>
</center>   
	</div>
</li>	
	
<li class="news-row">
	<h2>Gestion du message personnel</h2>
	<div class="news-text">
<center>
<table style="width: 400px;" border="0">
<form action="" method="post">
<tr>
<textarea name="message">
{$user_data.message}
</textarea>
</tr>
</table>
<br />
<center>
<input class="input" name="change_message" value="Changer" type="submit">
</center>
</form>
</center>   
	</div>
</li>	
{/block}
