{extends file="$THEME/layout.tpl"}
{block name=title}Profil{/block}<br/>

{block name=body}
<table>
	<tr>
		<div class="caption">{$char_data.name}</div>
		<td class="text">
			<center>
				<table style="width: 340px;" border="0">
						<tbody>
						<tr>
							<td style="width:150px"><img src="{$URL_ASSETS_GLOBAL}ico/vie.png" style="float:left;" width=16 height=16></img></td>
							<td style="width:150px">{$char_data.vitalite}</td>
						</tr>
						
						<tr>
							<td style="width:150px"><img src="{$URL_ASSETS_GLOBAL}ico/terre.png" style="float:left;" width=16 height=16></img></td>
							<td style="width:150px">{$char_data.force}</td>
						</tr>

						<tr>
							<td style="width:150px"><img src="{$URL_ASSETS_GLOBAL}ico/sagesse.png" style="float:left;" width=16 height=16></img></td>
							<td style="width:150px">{$char_data.sagesse}</td>
						</tr>

						<tr>
							<td style="width:150px"><img src="{$URL_ASSETS_GLOBAL}ico/feu.png" style="float:left;" width=16 height=16></img></td>
							<td style="width:150px">{$char_data.intelligence}</td>
						</tr>
						
						<tr>
							<td style="width:150px"><img src="{$URL_ASSETS_GLOBAL}ico/eau.png" style="float:left;" width=16 height=16></img></td>
							<td style="width:150px">{$char_data.chance}</td>
						</tr>	
						
						<tr>
							<td style="width:150px"><img src="{$URL_ASSETS_GLOBAL}ico/air.png" style="float:left;" width=16 height=16></img></td>
							<td style="width:150px">{$char_data.agilite}</td>
						</tr>		
						</tbody>
				</table>
			</center>
		</td>
	</tr>
</table>

<table>
	<tr>
		<div class="caption">Informations g&eacute;n&eacute;rales</div>
		<td class="text">
			<center>
				<table style="width: 340px;" border="0">
						<tbody>
						<tr>
							<td style="width:150px">Niveau</td>
							<td style="width:150px">{$char_data.level}</td>
						</tr>
						<tr>
							<td style="width:150px">Exp&eacute;rience</td>
							<td style="width:150px">{$char_data.xp}</td>
						</tr>
						<tr>
							<td style="width:150px">Sexe</td>
							<td style="width:150px"><img src="{$URL_ASSETS_GLOBAL}ico/{$char_data.sexe}-s.png" style="float:left;" width=16 height=16></img></td>
						</tr>	
						<tr>
							<td style="width:150px">Vie</td>
							<td style="width:150px">{$char_data.pdvactu}/{$char_data.pdvmax}</td>
						</tr>
						
						<tr>
							<td style="width:150px">Kamas</td>
							<td style="width:150px">{$char_data.kamas}</td>
						</tr>

						<tr>
							<td style="width:150px">Capital disponible</td>
							<td style="width:150px">{$char_data.capital}</td>
						</tr>	
						</tbody>
				</table>
			</center>
		</td>
	</tr>
</table>

{if isset($guild_char_data)}
<table>
	<tr>
		<div class="caption">Guilde :: {$guild_data.name} | Niv. {$guild_data.lvl}</div>
		<td class="text">
			<center>
				<table style="width: 340px;" border="0">
						<tbody>
						<tr>
							<td style="width:150px">Rang</td>
							<td style="width:150px">{$guild_char_data.rank}</td>
						</tr>
						<tr>
							<td style="width:150px">Exp&eacute;rience donn&eacute;e</td>
							<td style="width:150px">{$guild_char_data.xpdone}</td>
						</tr>
						<tr>
							<td style="width:150px">% Exp&eacute;rience donn&eacute;e</td>
							<td style="width:150px">{$guild_char_data.pxp}%</td>
						</tr>	
						</tbody>
				</table>
			</center>
		</td>
	</tr>
</table>
{/if}
{/block}
