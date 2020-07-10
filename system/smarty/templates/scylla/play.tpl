{extends file="$THEME/layout.tpl"}
{block name=title}Jouer !{/block}
{block name=body}
<table>
	<tr>
		<div class="caption">Rejoindre le serveur</div>
		<td class="text">
			<center>Vous souhaitez rejoindre la communauté de <b>{$TITLE}</b> et revivre l'aventure des anciens serveurs officiel de <b>Ankama</b> ? Vous trouverez ici toutes les informations qu'il vous faut pour nous rejoindre méme si vous n'avez pas encore le jeu.<br><br>
				Si vous n'êtes pas satisfaits de nos services nous vous invitons é vous rendre sur les serveurs officiels, malgré la <b>version 2.0</b>.<br><br>
				<div class="caption"><b><u>Etape n°1: Installation du client.</u></b></div><br>
				Téléchargez la version 1.29 de Dofus (seulement si vous n'avez pas déjé le client dofus 1.29) <b><font color="red">est obligatoire</font></b> pour pouvoir accéder au serveur en toute tranquillité.<br><br>
				<a href="{$DOFUS_URL}"><img src="{$URL_ASSETS_GLOBAL}devtool/download.png" border="0"></a><br><br>
				Aprés avoir téléchargé le client ci-dessus, veuillez le lancer et suivre les instructions pour mener é bien votre installation.<br><br>
				<div class="caption"><b><u>Etape n°2: Lancement du jeu (Installateur)</u></b></div><br>
				<a href="{$LAUNCHER_URL}"><img src="{$URL_ASSETS_GLOBAL}devtool/download.png" border="0"></a><br><br>
				Lancez l'exécutable installateur.exe. Celui-ci vous permettra d'effectuer les derniéres mises é jour.<br><br>
				<div class="caption"><b><u>Etape n°3: Créer un compte</u></b></div><br>
				<a href="{$URL}/user/register" class="btn btn-danger">Créer un compte !</a><br><br>
				Il ne vous reste plus qu'a créer un compte et nous rejoindre !
			</center>
		</td>
	</tr>
</table>
<br/>{/block}