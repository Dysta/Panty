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
									<td width="150" class="impair"><b><center>Pseudo</center></b></td>
									<td width="50" class="impair"><b><center>Vote</center></b></td>
								</tr>
								{foreach from=$array_vote item=vote}
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