{extends file="$THEME/layout.tpl"}
{block name=title}Staff{/block}
{block name=body}
				<div id="contenu">
				<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<span>L'équipe du serveur</span>L'équipe du serveur
				</div>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<!-- Début interieur page -->
				{foreach from=$array_staff item=staff}
				<h1>● {$staff.rang}</h1>
					<table id="type_norm">
						<tr>
							<td width="200px" class="pair"><center><b>Membre</b></center></td>
							<td width="200px" class="pair"><center><b>E-Mail</b></center></td>
							<td width="150px" class="pair"><center><b>Statut</b></center></td>
						</tr>
						<tr>
							<td class="right"><img alt="Perso" style="float: left;" title="Perso" class="icon_li" src="{$URL_ASSETS_GLOBAL}devtool/user.png">{$staff.pseudo}</td>
							<td class="right"><img alt="Mail" style="float: left;" title="Mail" class="icon_li" src="{$URL_ASSETS_GLOBAL}devtool/email.png">{$staff.mail}</td>
							<td><center>{if $staff.logged eq '1'}<font color="#1e731a">En ligne !</font>{else}<font color="#e36154">Hors ligne</font>{/if}</center></td>
						</tr>
					</table>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/foreach}
				<!--Fin interieur page -->
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
			</div>
{/block}