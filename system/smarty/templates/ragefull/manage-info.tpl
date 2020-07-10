{extends file="$THEME/layout.tpl"}
{block name=title}Profil{/block}<br/>
{block name=body}
{if isset($gm_changed)}
<li class="news-row">
	<h2>
		<img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/clean.png"> F&eacute;licitation !</h2>
		<div class="news-text">
          Le GM a &eacute;t&eacute; <b>chang&eacute;</b> avec succ&egrave;s.<br />
		</div>
	</li>
{/if}
	<li class="news-row">
		<h2>Compte de {$user_data.pseudo}</h2>
		<div class="news-text">
			<center>
			{if $user_data.banni eq '1'}
				<a href="{$URL}/administration/unban_account/{$user_data.id}">
					<input class="submit" type="submit" value="Débannir le compte" />
				</a>
			{else}
				<a href="{$URL}/administration/ban_account/{$user_data.id}">
					<input class="submit" type="submit" value="Bannir le compte" />
				</a>
			{/if}
				<a href="{$URL}/administration/delete_account/{$user_data.id}">
					<input class="submit" type="submit" value="Supprimer le compte" />
				</a>
			</center>
		</div>
	</li>
	<li class="news-row">
		<h2>Changer le GM</h2>
		<div class="news-text">
			<center>
				<form method="post" style="margin-left:10px;">
					<input type="number" min="0" max="5" name="new_gm" value="{$user_data.gm}" style="color:black;"/>
					<br />
					<br />
					<input class="submit" type="submit" value="Changer" name="change_gm" value=""/>
				</form>
			</center>
		</div>
	</li>
	<li class="news-row">
		<h2>Information général</h2>
		<div class="news-text">
			<center>
				<table style="width: 400px;" border="0">
					<tbody>
						<tr>
							<td style="width:200px">Nom de compte : </td>
							<td style="width:200px">{$user_data.account}</td>
						</tr>
						<tr>
							<td style="width:200px">Pseudo : </td>
							<td style="width:200px">{$user_data.pseudo}</td>
						</tr>
						<tr>
							<td style="width:200px">Rang : </td>
							<td style="width:200px">{$user_data.level}</td>
						</tr>
						<tr>
							<td style="width:200px">Statut : </td>
							<td style="width:200px">{if $user_data.banni eq '1'}Banni{else}Non banni{/if}</td>
						</tr>
						<tr>
							<td style="width:200px">Nombre de vote : </td>
							<td style="width:200px">{$user_data.nb_votes}</td>
						</tr>

						<tr>
							<td style="width:200px">Points disponible : </td>
							<td style="width:200px">{$user_data.tokens}</td>
						</tr>

						<tr>
							<td style="width:200px">Derniere Connection :</td>
							<td style="width:200px;">{$user_data.last_co}</td>
						</tr>	
					</tbody>
				</table>
			</center>
		</div>
	</li>
	<li class="news-row">
		<h2>Personnages</h2>
		<div class="news-text">
			<table width="94%">
				<tbody>
					<tr>
						<td width="30">
							<img title="Race" alt="Race" src="{$URL_ASSETS_GLOBAL}ico/heads/0.png">
							</td>
							<td width="150">
								<b>
									<center>Nom</center>
								</b>
							</td>
							<td width="30">
								<b>
									<center>Sexe</center>
								</b>
							</td>
							<td width="50">
								<b>
									<center>Level</center>
								</b>
							</td>
							<td width="120">
								<b>
									<center>XP</center>
								</b>
							</td>
							<td width="30">
								<img title="Alignement" alt="Alignement" src="{$URL_ASSETS_GLOBAL}ico/heads/align/-1.png">
								</td>
								<td width="80">
									<center>
										<b>Honneur</b>
									</center>
								</td>
								<td width="10">
									<center>
										<b>Supprimer</b>
									</center>
								</td>
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
											<td>
												<center>
													<a href="{$URL}/administration/delete_character/{$player.id}">
														<img title="Supprimer le personnage" src="{$URL_ASSETS_GLOBAL}devtool/delete.png">
													</a>
												</center>
											</td>
							</tr>
							{/foreach}
				</tbody>
									</table>
								</div>
							</li>
{/block}