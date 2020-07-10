{extends file="$THEME/layout.tpl"}
{block name=title}Jouer !{/block}
{block name=body}
<li class="news-row">
	<h2>Rejoindre le serveur</h2>
	<div class="news-text">
		<center>Vous souhaitez rejoindre la communaut&eacute; de <b>{$TITLE}</b> et revivre l'aventure des anciens serveurs officiel de <b>Ankama</b> ? Vous trouverez ici toutes les informations qu'il vous faut pour nous rejoindre m&ecirc;me si vous n'avez pas encore le jeu.<br><br>
			Si vous n'&ecirc;tes pas satisfaits de nos services nous vous invitons &agrave; vous rendre sur les serveurs officiels, malgr&eacute; la <b>version 2.0</b>.<br><br>
			<b><u>Etape n&deg;1: Installation du client.</u></b><br><br>
			T&eacute;l&eacute;chargez la version 1.29 de Dofus (seulement si vous n'avez pas d&eacute;j&agrave; le client dofus 1.29) <b><font color="red">est obligatoire</font></b> pour pouvoir acc&eacute;der au serveur en toute tranquillit&eacute;.<br><br>
			<a href="{$DOFUS_URL}"><img src="{$URL_ASSETS_GLOBAL}devtool/download.png" border="0"></a><br><br>
			Apr&egrave;s avoir t&eacute;l&eacute;charg&eacute; le client ci-dessus, veuillez le lancer et suivre les instructions pour mener &agrave; bien votre installation.<br><br>
			<b><u>Etape n&deg;2: Lancement du jeu (Installateur)</u></b><br><br>
			<a href="{$LAUNCHER_URL}"><img src="{$URL_ASSETS_GLOBAL}devtool/download.png" border="0"></a><br><br>
			Lancez l'ex&eacute;cutable installateur.exe. Celui-ci vous permettra d'effectuer les derni&egrave;res mises &agrave; jour.
		</center>
	</div>
</li>
{/block}