{extends file="$THEME/layout.tpl"}
{block name=title}Jouer !{/block}
{block name=body}
<div id="contenu">
	<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
		<div id="title">
			<span>Rejoindre {$TITLE}</span>Rejoindre {$TITLE}
		</div>
		<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
		<h1>● Rejoignez-nous et revivez l'expérience Dofus 1.29 !</h1>
		<p>
			Vous souhaitez rejoindre la communauté de <b>{$TITLE}</b> et revivre l'aventure des anciens serveurs 1.29 de <b>Dofus</b> ?<br/><br/>
			Vous trouverez ici toutes les informations qu'il vous faut pour nous rejoindre même si vous n'avez pas encore le jeu.<br/><br/>
		</p>
		<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
		<h1>● Etape nº1: Installation du client.</h1>
		<p>
			Téléchargez la version 1.29 de Dofus <b>(seulement si vous n'avez pas déjà le client dofus 1.29)</b> <b><font color="#e36154">est obligatoire</font></b> pour pouvoir accéder au serveur en toute tranquillité.
		</p><br/>
		<center><a href="{$DOFUS_URL}"><img src="{$URL_ASSETS}img/global/b_dofus.png"/></a></center><br/>
		<p>Après avoir téléchargé le client ci-dessus, veuillez le lancer et suivre les instructions pour mener à bien votre installation.</p>
		<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
		<h1>● Etape nº2: Lancement du jeu (Installateur automatique)</h1>
		<p>Téléchargez le luncher en cliquant sur le bouton ci-dessous.</p><br/>
		<center><a href="{$LAUNCHER_URL}"><img src="{$URL_ASSETS}img/global/b_launcher.png"/></a></center><br/>
		<p>Lancez l'exécutable <b>installateur.exe</b>. Celui-ci vous permettra d'effectuer les dernières mises à jour.</p>
		<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
		{if !isset($smarty.session.logged)}
		<h1>● Etape nº3: Créer un compte</h1>
		<p>Voilà vous pouvez maintenant vous créer un compte pour accéder à nos services et au jeu.</p><br/>
		<center><a href="{$URL}/user/register"><img src="{$URL_ASSETS}img/global/b_inscription.png"/></a></center><br/>
		<center><p><b>Bon jeu à vous sur {$TITLE}</b></p></center>
		{/if}
	<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
</div>
{/block}