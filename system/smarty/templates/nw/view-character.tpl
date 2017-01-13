{extends file="$THEME/layout.tpl"}
{block name=title}Profil{/block}<br/>
{block name=body}
<div id="contenu">
				<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<span>{$char_data.name}</span>{$char_data.name}
				</div>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<!-- Début interieur page -->
				<h1>● Caractéristique & Information</h1>
					<table width="94%" style="margin:8px 0px 8px 20px;">
							<tbody>
							<tr>
								<td style="width:100px"><img src="{$URL_ASSETS_GLOBAL}ico/vie.png" style="float:left;" width=16 height=16></img><font color="#FD0000">&nbsp;Vitalité</font></td>
								<td style="width:200px"><font color="#FD0000">{$char_data.vitalite}</font></td>
								<td>Niveau</td>
								<td >{$char_data.level}</td>
							</tr>
							
							<tr>
								<td><img src="{$URL_ASSETS_GLOBAL}ico/sagesse.png" style="float:left;" width=16 height=16></img><font color="#3B313C">&nbsp;Sagesse</font></td>
								<td><font color="#3B313C">{$char_data.sagesse}</font></td>
								<td >Exp&eacute;rience</td>
								<td >{$char_data.xp}</td>
							</tr>

							<tr>
								<td><img src="{$URL_ASSETS_GLOBAL}ico/terre.png" style="float:left;" width=16 height=16></img><font color="#A16D43">&nbsp;Force</font></td>
								<td><font color="#A16D43">{$char_data.force}</font></td>
								<td >Sexe</td>
								<td ><img src="{$URL_ASSETS_GLOBAL}ico/{$char_data.sexe}-s.png" style="float:left;" width=16 height=16></img></td>
							</tr>

							<tr>
								<td><img src="{$URL_ASSETS_GLOBAL}ico/feu.png" style="float:left;" width=16 height=16></img><font color="#C80300">&nbsp;Intelligence</font></td>
								<td><font color="#C80300">{$char_data.intelligence}</font></td>
								<td >Vie</td>
								<td >{$char_data.pdvactu}/{$char_data.pdvmax}</td>
							</tr>
							
							<tr>
								<td><img src="{$URL_ASSETS_GLOBAL}ico/eau.png" style="float:left;" width=16 height=16></img><font color="#63ACCF">&nbsp;Chance</font></td>
								<td><font color="#63ACCF">{$char_data.chance}</font></td>
								<td >Kamas</td>
								<td >{$char_data.kamas}</td>
							</tr>	
							
							<tr>
								<td><img src="{$URL_ASSETS_GLOBAL}ico/air.png" style="float:left;" width=16 height=16></img><font color="#565F37">&nbsp;Agilité</font></td>
								<td><font color="#565F37">{$char_data.agilite}</font></td>
								<td >Capital disponible</td>
								<td >{$char_data.capital}</td>
							</tr>		
							</tbody>
					</table>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{if isset($guild_char_data)}
				<h1>● Guilde</h1>
				<center>
					<table width="50%">
							<tbody>
									<tr>
										<td >Nom</td>
										<td >{$guild_data.name}</td>
									</tr>
									<tr>
										<td >Niveau</td>
										<td >{$guild_data.lvl}</td>
									</tr>
									<tr>
										<td >Rang</td>
										<td >{$guild_char_data.rank}</td>
									</tr>
									<tr>
										<td >Exp&eacute;rience donn&eacute;e</td>
										<td >{$guild_char_data.xpdone}</td>
									</tr>
									<tr>
										<td >% Exp&eacute;rience donn&eacute;e</td>
										<td >{$guild_char_data.pxp}%</td>
									</tr>	
							</tbody>
					</table>
				</center>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/if}
				<!--Fin interieur page -->
		<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
</div>	
{/block}
