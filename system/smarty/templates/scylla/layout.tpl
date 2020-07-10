<!DOCTYPE html>
<html lang="fr">
    <head>
		<link rel="stylesheet" href="{$URL_ASSETS}css/common.css" />
		<link href="{$URL_ASSETS}css/bootstrap.css" rel="stylesheet">
		<meta name="template" content="{$THEME}">
        <meta charset="latin-1" />
		<title>{$TITLE} - {block name=title}Default Page Title{/block}</title>
	</head>
	<body>
		<div id="header"></div>
		<div id="menu">
			<ul class="black">
				<li class="black"><a class="black" href="{$URL}/news/index">Accueil</a></li>
				<li class="black"><a class="black"href="{$URL}/server/ladder">Classement</a></li>
				<a href="{$LAUNCHER_URL}"><img src="{$URL_ASSETS}images/install.png"></a>
				<li class="black"><a class="black"href="{$URL}/server/play">Nous rejoindre</a></li>
				<li class="black"><a class="black"href="{$URL}/server/staff">Equipe</a></li>
			</ul>
		</div>
		<br/><br/>
		<div id="content">
			<div id="status"> 
				Joueurs connecté : <span class="badge">{$logged}</span> |
				Comptes créés : <span class="badge">{$accounts}</span> |
				Personnages créés : <span class="badge">{$characters}</span> |
				Guildes créées : <span class="badge">{$guilds}</span>
			</div>
			<table>
				<tr>
					<td><a href="{$URL}/user/register"><img src="{$URL_ASSETS}images/inscris.png"></a></td>
					<td><a href="{$LAUNCHER_URL}"><img src="{$URL_ASSETS}images/telecharge.png"></a></td>
				</tr>
			</table>
			<br/>
			<ul class="nav nav-list pull-right">
				<li class="nav-header">Accueil</li>
    				<li><a href="{$URL}/news/index">Accueil</a></li>
    				<li><a href="{$URL}/server/play">Nous rejoindre</a></li>
    				<li><a href="{$URL}/server/staff">Equipe du serveur</a></li>
    				<li><a href="{$URL}/server/cgu">Règlement</a></li>
    			<li class="nav-header">Interactif</li>
    				<li><a href="{$URL}/user/vote">Vote & gagne</a></li>
    				<li><a href="{$URL}/server/ladder">Classement</a></li>
    				<li><a href="{$URL}/shop/cat/1">Boutique</a></li>
    				<li><a href="{$URL}/server/bugtracker">Bugtracker</a></li>
    				<li><a href="{$BOARD_URL}">Forum</a></li>
    		</ul>
			
			{block name=body}{/block}
			
		</div>
		<div id="footer">
			<div class="login">
				{if !isset($smarty.session.logged)}
				    <form class="form-inline" action="{$URL}/user/login" method="post">
    				<input type="text" name="username" class="input-medium" placeholder="Nom de compte"required/>
    				<input type="password" name="password" class="input-medium" placeholder="Mot de passe"required/>
    				<button type="submit" name="submit_login" class="btn btn-danger">Connexion</button>
    				</form>
				{else}
					<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Bonjour <b>{$smarty.session.pseudo}</b>
					<span class="caret"></span></button>
					<ul class="dropdown-menu">
						<li><a href="{$URL}/user/profil"><img width="16" height="16" style="float: left;margin-right: 2px" src="{$URL_ASSETS_GLOBAL}devtool/user.png"> Mon profil</a></li>
						<li><a href="{$URL}/user/tokens"><img width="16" height="16" style="float: left;margin-right: 2px" src="{$URL_ASSETS_GLOBAL}devtool/money.png"> Mes points ({$smarty.session.tokens})</a></li>
						<li><a href="{$URL}/shop/cat/1"><img width="16" height="16" style="float: left;margin-right: 2px" src="{$URL_ASSETS_GLOBAL}devtool/cadeau.png"> Boutique</a></li>
						<li><a href="{$URL}/user/vip"><img width="16" height="16" style="float: left;margin-right: 2px" src="{$URL_ASSETS_GLOBAL}devtool/star.png"> VIP</a></li>
						<li class="divider"></li>
						<li><a href="{$URL}/user/logout"><img width="16" height="16" style="float: left;margin-right: 2px" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Déconnexion</a></li>
					</ul>
				{if isset($smarty.session.logged) && $smarty.session.gmlvl>=3}
				<button class="btn btn-danger dropdown-toggle" onClick="window.location.href='{$URL}/administration/index'">Administration</button>
				{/if}
				{/if}
			</div>
			<div class="search">
				<form class="form-inline" action="{$URL}/encyclopedia/item" method="post">
					<input type="text" class="input-large" placeholder="Nom ou terme de recherche..." name="item" id="item" required/>
					<button type="submit" name="item_post" class="btn btn-danger">Rechercher</button>
			</div>
		</div>
		<script src="{$URL_ASSETS}js/jquery.min.js"></script>
		<script src="{$URL_ASSETS}js/bootstrap.min.js"></script>

	</body>