{extends file="$THEME/layout.tpl"}
{block name=title}Profil{/block}<br/>

{block name=body}
<li class="news-row">
	<h2>Compte de {$user_data.pseudo}</h2>
	<div class="news-text">
<center>
	<table style="width: 340px;" border="0">
			<tbody>
			<tr>
				<td style="width:150px">Nombre de vote : </td>
				<td style="width:150px">{$user_data.nb_votes}</td>
			</tr>
			
			<tr>
				<td style="width:150px">Points disponible : </td>
				<td style="width:150px">{$user_data.tokens}</td>
			</tr>

			<tr>
				<td style="width:150px">Derniere Connection :</td>
				<td style="width:150px">{$user_data.last_co}</td>
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
	<h2>Message personnel</h2>
	<div class="news-text">
		{$user_data.message}
	</div>
</li>	

<li class="news-row">
	<h2>Ses personnages</h2>
	<div class="news-text">
		<table>
			<tbody>
				<tr>
					<td width="10%">
						<img title="Race" alt="Race" src="{$URL_ASSETS_GLOBAL}ico/heads/0.png">
					</td>
					<td width="50%">
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
					<td width="10%">
						<center>
							<b>Honneur</b>
						</center>
					</td>
				</tr>
				{foreach from=$chars_data item=player}
				<tr>
					<td width="30">
						<img src="{$URL_ASSETS_GLOBAL}ico/heads/{$player.class}_{$player.sexe}.png">
					</td>
					<td>
						<a href="{$URL}/user/view_character/{$player.id}">{$player.name}</a>
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
					<td>
						<center>
							{$player.honor}
						</center>
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
</li>		
{/block}
