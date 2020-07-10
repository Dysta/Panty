{extends file="$THEME/layout.tpl"}
{block name=title}Ladder{/block}<br/>
{block name=body}
<div id="contenu">
				<img src="{$URL_ASSETS}img/global/topContenu.png"/> <div id="title"><span>Classement PVP</span>Classement PVP</div>
				<div class="item">
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<center>
						<a class="block" href="{$URL}/server/ladder_pvm">Ladder PVM</a>
						<a class="block" href="{$URL}/server/ladder_pvp">Ladder PVP</a>
						<a class="block" href="{$URL}/server/ladder_guilde">Ladder Guilde</a>
						<a class="block" href="{$URL}/server/ladder_vote">Ladder Vote</a>
					</center>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
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
								{foreach from=$array_perso item=player}
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
				</div>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
			</div>
{/block}