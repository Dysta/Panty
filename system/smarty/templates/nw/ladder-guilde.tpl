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
									<td width="150" class="impair"><b><center>Nom</center></b></td>
									<td width="50" class="impair"><b><center>Level</center></b></td>
									<td width="30" class="impair"><b><center>Experience</center></b></td>
								</tr>
								{foreach from=$array_guilde item=guilde}
								<tr>
									<td><center>{$guilde.pos}</center></td>
									<td><center>{$guilde.name}</a></center></td>
									<td><center>{$guilde.lvl}</center></td>
									<td><center>{$guilde.xp}</center></td>
								</tr>
								{/foreach}
							</table>
						</center>
				</div>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
			</div>
{/block}