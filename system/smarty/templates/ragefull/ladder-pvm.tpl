{extends file="$THEME/layout.tpl"}
{block name=title}Ladder{/block}<br/>
{block name=body}
<li class="news-row">
	<h2>Classement PVM</h2>
	<br />
	<center>
		<a href="{$URL}/server/ladder_pvm"><input class="color_input_sub" value="Ladder PVM" type="submit"/></a>
		<a href="{$URL}/server/ladder_pvp"><input class="color_input_sub" value="Ladder PVP" type="submit"/></a>
		<a href="{$URL}/server/ladder_guilde"><input class="color_input_sub" value="Ladder Guilde" type="submit"/></a>
		<a href="{$URL}/server/ladder_vote"><input class="color_input_sub" value="Ladder Vote" type="submit"/></a>
	</center>
	<div class="news-text">
		<table>
			<tbody>
				<tr>
					<td width="5%"></td>
					<td width="30">
						<img title="Race" alt="Race" src="{$URL_ASSETS_GLOBAL}ico/heads/0.png">
					</td>
					<td width="70%">
						<center>
							<b>Nom</b>
						</center>
					</td>
					<td width="40%">
						<center>
							<b>Level</b>
						</center>
					</td>
					<td>
						<center>
							<b>XP</b>
						</center>
					</td>
					<td width="30%">
						<img title="Alignement" alt="Alignement" src=
							"{$URL_ASSETS_GLOBAL}ico/heads/align/-1.png">
					</td>
				</tr>
				{foreach from=$array_perso item=player}
				<tr>
					<td>
						<center>
							{$player.pos}
						</center>
					</td>
					<td width="30">
						<img src="{$URL_ASSETS_GLOBAL}ico/heads/{$player.class}_{$player.sexe}.png">
					</td>
					<td>
						<a href="{$URL}/user/view_account/{$player.account}">{$player.name}</a>
						<span style="float: right;"><img class=	"icon_li" src="{$URL_ASSETS_GLOBAL}devtool/{$player.sexe}.png"></span>
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
				</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
</li>
{/block}