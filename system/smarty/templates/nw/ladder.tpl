{extends file="$THEME/layout.tpl"}
{block name=title}Ladder{/block}<br/>
{block name=body}
<div id="contenu">
				<img src="{$URL_ASSETS}img/global/topContenu.png"/> <div id="title"><span>Classement général</span>Classement général</div>
				<div class="item">
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<center>
						<a class="block" href="{$URL}/server/ladder_pvm">Ladder PVM</a>
						<a class="block" href="{$URL}/server/ladder_pvp">Ladder PVP</a>
						<a class="block" href="{$URL}/server/ladder_guilde">Ladder Guilde</a>
						<a class="block" href="{$URL}/server/ladder_vote">Ladder Vote</a>
					</center>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<p class="infos-message"><img src="{$URL_ASSETS}img/devtool/infos.png" class="devtool"/> 
						Pour un classement complet, cliquez sur les boutons ci-dessus !
					</p>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<h1>● Top 3 PVM</h1>
						<center>
							<table id="ladder">
								<tr>
									<td width="10" class="impair"></td>
									<td width="30" class="impair"><img title="Race" alt="Race" src="{$URL_ASSETS}img/persos/race/heads/none.png"></td>
									<td width="150" class="impair"><b><center>Nom</center></b></td>
									<td width="50" class="impair"><b><center>Level</center></b></td>
									<td width="30" class="impair"><b><center>Sexe</center></b></td>
									<td width="120" class="impair"><b><center>XP</center></b></td>
									<td width="30" class="impair"><img title="Alignement" alt="Alignement" src="{$URL_ASSETS}img/persos/align/icones/none.png"></td>
								</tr>
								{foreach from=$array_perso_pvm3 item=player}
								<tr>
									<td><center>{$player.pos}</center></td>
									<td><center><img src="{$URL_ASSETS_GLOBAL}ico/heads/{$player.class}_{$player.sexe}.png"></center></td>
									<td><center><a href="{$URL}/user/view_account/{$player.account}">{$player.name}</a></center></td>
									<td><center>{$player.level}</center></td>
									<td><center><img class="icon_li" src="{$URL_ASSETS_GLOBAL}devtool/{$player.sexe}.png"></center></td>
									<td><center>{$player.xp}</center></td>
									<td><center><img src="{$URL_ASSETS_GLOBAL}ico/heads/align/{$player.alignement}.png"></center></td>
								</tr>
								{/foreach}
							</table>
						</center>
						<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
						<h1>● Top 3 PVP</h1>
						<center>
							<table id="ladder">
								<tr>
									<td width="10" class="impair"></td>
									<td width="30" class="impair"><img title="Race" alt="Race" src="{$URL_ASSETS}img/persos/race/heads/none.png"></td>
									<td width="150" class="impair"><b><center>Nom</center></b></td>
									<td width="50" class="impair"><b><center>Level</center></b></td>
									<td width="30" class="impair"><b><center>Sexe</center></b></td>
									<td width="80" class="impair"><center><b>Honneur</b></center></td>
									<td width="30" class="impair"><img title="Alignement" alt="Alignement" src="{$URL_ASSETS}img/persos/align/icones/none.png"></td>
								</tr>
								{foreach from=$array_perso_pvp3 item=player}
								<tr>
									<td><center>{$player.pos}</center></td>
									<td><center><img src="{$URL_ASSETS_GLOBAL}ico/heads/{$player.class}_{$player.sexe}.png"></center></td>
									<td><center><a href="{$URL}/user/view_account/{$player.account}">{$player.name}</a></center></td>
									<td><center>{$player.level}</center></td>
									<td><center><img class="icon_li" src="{$URL_ASSETS_GLOBAL}devtool/{$player.sexe}.png"></center></td>
									<td><center>{$player.honor}</center></td>
									<td><center><img src="{$URL_ASSETS_GLOBAL}ico/heads/align/{$player.alignement}.png"></center></td>
								</tr>
								{/foreach}
							</table>
						</center>
						<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
						<h1>● Top 3 Guilde</h1>
						<center>
							<table id="ladder">
								<tr>
									<td width="10" class="impair"></td>
									<td width="150" class="impair"><b><center>Nom</center></b></td>
									<td width="50" class="impair"><b><center>Level</center></b></td>
									<td width="30" class="impair"><b><center>Experience</center></b></td>
								</tr>
								{foreach from=$array_guilde3 item=guilde}
								<tr>
									<td><center>{$guilde.pos}</center></td>
									<td><center>{$guilde.name}</a></center></td>
									<td><center>{$guilde.lvl}</center></td>
									<td><center>{$guilde.xp}</center></td>
								</tr>
								{/foreach}
							</table>
						</center>
						<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
						<h1>● Top 3 Vote</h1>
						<center>
							<table id="ladder">
								<tr>
									<td width="10" class="impair"></td>
									<td width="150" class="impair"><b><center>Pseudo</center></b></td>
									<td width="50" class="impair"><b><center>Vote</center></b></td>
								</tr>
								{foreach from=$array_vote3 item=vote}
								<tr>
									<td><center>{$vote.pos}</center></td>
									<td><a href="{$URL}/user/view_account/{$vote.id}"><center>{$vote.pseudo}</center></a></td>
									<td><center>{$vote.votes}</center></td>
								</tr>
								{/foreach}
							</table>
						</center>
				</div>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
			</div>
{/block}