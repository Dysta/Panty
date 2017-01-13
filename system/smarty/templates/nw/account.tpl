{extends file="$THEME/layout.tpl"}
{block name=title}Profil{/block}<br/>
{block name=body}
<div id="contenu">
				<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<span>Espace personnel </span>Espace personnel 
				</div>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<!-- Début interieur page -->
				
				{if isset($message_changed)}
					<p class="clean-message"><img src="{$URL_ASSETS}img/devtool/ok.png" class="devtool"/> 
						Votre message personnel a &eacute;t&eacute; <b>chang&eacute;</b> avec succ&egrave;s.
					</p>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/if}
				
				{if isset($pass_changed)}
					<p class="clean-message"><img src="{$URL_ASSETS}img/devtool/ok.png" class="devtool"/> 
						Votre mot de passe a &eacute;t&eacute; <b>chang&eacute;</b> avec succ&egrave;s.
					</p>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/if}
				
				{if isset($badconfirm)}
					<p class="error-message"><img src="{$URL_ASSETS}img/devtool/error.png" class="devtool"/> 
						Les <b>mots de passe</b> entr&eacute;s ne sont pas les m&ecirc;mes.
					</p>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/if}

				{if isset($badpassword)}
					<p class="error-message"><img src="{$URL_ASSETS}img/devtool/error.png" class="devtool"/> 
						Le <b>mot de passe</b> entr&eacute; ne correspond pas avec le mot de passe du compte.
					</p>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/if}
				<h1>● Mon compte</h1>
					<table width="94%" style="margin:8px 0px 8px 20px;">
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
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<h1>● Mes personnages</h1>
					<table width="94%" style="margin:8px 0px 8px 20px;">
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
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<h1>● Changement de mot de passe</h1>
				<form action="" method="post">
					<table width="94%" style="margin:8px 0px 8px 20px;">
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
						<input class="submit" name="change" value="Changer" type="submit">
					</center>
				</form>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<h1>● Gestion du message personnel</h1>
				<center>
					<form action="" method="post">
						<textarea name="message" style="min-width:578px;max-width:578px;color=black;">
							{$user_data.message}
						</textarea>
						<br />
						<center>
							<input class="submit" name="change_message" value="Enregistrer" type="submit">
						</center>
					</form>
				</center>
				<h2></h2>
				<h3></h3>
				<!--Fin interieur page -->
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
</div>

{/block}
