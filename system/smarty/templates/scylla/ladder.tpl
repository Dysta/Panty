{extends file="$THEME/layout.tpl"}
{block name=title}Ladder{/block}<br/>
{block name=body}
<center>
	<a href="{$URL}/server/ladder_pvm" class="btn btn-danger">Classement PVM</a>
	<a href="{$URL}/server/ladder_pvp" class="btn btn-danger">Classement PVP</a>
	<a href="{$URL}/server/ladder_guilde" class="btn btn-danger">Classement Guilde</a>
	<a href="{$URL}/server/ladder_vote" class="btn btn-danger">Classement Vote</a>
</center>
<br />
<table>
	<tr>
		<div class="caption">Top 3 PVM</div>
		<td class="text">
			<table>
			<tbody>
				<tr>
					<td width="30px"></td>
					<td width="60px">
						<img title="Race" alt="Race" src="{$URL_ASSETS_GLOBAL}ico/heads/0.png">
					</td>
					<td width="250px">
						<center>
							<b>Nom</b>
						</center>
					</td>
					<td width="100px">
						<center>
							<b>Level</b>
						</center>
					</td>
					<td width="150px">
						<center>
							<b>XP</b>
						</center>
					</td>
					<td width="60px">
						<img title="Alignement" alt="Alignement" src=
							"{$URL_ASSETS_GLOBAL}ico/heads/align/-1.png">
					</td>
				</tr>
				{foreach from=$array_perso_pvm3 item=player}
				<tr>
					<td>
						<center>
							{$player.pos}
						</center>
					</td>
					<td>
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
		</td>
	</tr>
</table>
<br/>
<table>
	<tr>
		<div class="caption">Top 3 PVP</div>
		<td class="text">
			<table>
			<tbody>
				<tr>
					<td width="30px"></td>
					<td width="60px">
						<img title="Race" alt="Race" src="{$URL_ASSETS_GLOBAL}ico/heads/0.png">
					</td>
					<td width="250px">
						<center>
							<b>Nom</b>
						</center>
					</td>
					<td width="100px">
						<center>
							<b>Level</b>
						</center>
					</td>
					<td width="150px">
						<center>
							<b>Honneur</b>
						</center>
					</td>
					<td width="60px">
						<img title="Alignement" alt="Alignement" src=
							"{$URL_ASSETS_GLOBAL}ico/heads/align/-1.png">
					</td>
				</tr>
				{foreach from=$array_perso_pvp3 item=player}
				<tr>
					<td>
						<center>
							{$player.pos}
						</center>
					</td>
					<td>
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
							{$player.honor}
						</center>
					</td>
					<td>
						<img src="{$URL_ASSETS_GLOBAL}ico/heads/align/{$player.alignement}.png">
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
		</td>
	</tr>
</table>
<br />
<table>
	<tr>
		<div class="caption">Top 3 Guilde</div>
		<td class="text">
			<table>
			<tbody>
				<tr>
					<td width="5%"></td>
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
							<b>Experience</b>
						</center>
					</td>
				</tr>
				{foreach from=$array_guilde3 item=guilde}
				<tr>
					<td>
						<center>
							{$guilde.pos}
						</center>
					</td>
					<td>
						<center>
							{$guilde.name}
						</center>
					</td>
					<td>
						<center>
							<b>{$guilde.lvl}</b>
						</center>
					</td>
					<td>
						<center>
							{$guilde.xp}
						</center>
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
		</td>
	</tr>
</table>
<br />
<table>
	<tr>
		<div class="caption">Top 3 Vote</div>
		<td class="text">
			<table>
			<tbody>
				<tr>
					<td width="5%"></td>
					<td width="700%">
						<center>
							<b>Pseudo</b>
						</center>
					</td>
					<td width="40%">
						<center>
							<b>Votes</b>
						</center>
					</td>
				</tr>
				{foreach from=$array_vote3 item=vote}
				<tr>
					<td>
						<center>
							{$vote.pos}
						</center>
					</td>
					<td>
						<center>
							<a href="{$URL}/user/view_account/{$vote.id}"><b>{$vote.pseudo}</b></a>
						</center>
					</td>
					<td>
						<center>
							{$vote.votes}
						</center>
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
		</td>
	</tr>
</table>
{/block}