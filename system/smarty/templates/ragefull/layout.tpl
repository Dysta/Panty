<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
	<head>
		<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
		<meta name="author" content="Nekkathecat & Ramlethal">
		<meta name="template" content="{$THEME}">
		<title>{$TITLE} - {block name=title}Default Page Title{/block}</title>
		<script type="text/javascript"></script>
		<link href="{$URL_ASSETS}css/main.css" type="text/css" rel="stylesheet">
		<link href="{$URL_ASSETS}css/jquery-ui.css" type="text/css" rel="stylesheet">
		<link href="{$URL_ASSETS}css/ui.selectmenu.css" type="text/css" rel="stylesheet">
		<script src="//api.dedipass.com/v1/pay.js"></script>
	</head>
	<body>
		<div class="wrapper">
			<div class="header" id="header">
				<a href="{$URL}/news/index" class="header-logo"></a>
				<a href="{$LAUNCHER_URL}" class="register-btn">
					<p></p>
					<span></span>
				</a>
				<div style=" height:162px; width:1px;"></div>
				<ul class="menu">
					<li>
						<a id="home" href="{$URL}/news/index">
							<p></p>
							<span></span>
						</a>
					</li>
					<li>
						<a id="comm" href="{$URL}/server/trailer">
							<p></p>
							<span></span>
						</a>
					</li>
					<li>
						<a id="connect" href="{$URL}/server/play">
							<p></p>
							<span></span>
						</a>
					</li>
					<li>
						<a id="support" href="{$URL}/server/staff">
							<p></p>
							<span></span>
						</a>
					</li>
					<li>
						<a id="ranking" href="{$URL}/server/ladder">
							<p></p>
							<span></span>
						</a>
					</li>
					<li>
						<a id="rinfo" href="{$URL}/server/cgu">
							<p></p>
							<span></span>
						</a>
					</li>
				</ul>
			</div>
			<div class="body">
				<div class="body-top-fix"></div>
				<div id="main-side">
					<a href="{$URL}/server/play" class="vote-banner">
						<p></p>
						<span></span>
					</a>
					<div class="news-container">
						<ul>
							{block name=body}{/block}
						</ul>
					</div>
				</div>
				<div id="sidebar">
					{if !isset($smarty.session.logged)}
					<div class="sidebar-box login">
						<div class="sbox-head">Connexion</div>
						<div class="sbox-content">
							<form class="login" action="{$URL}/user/login" method="post">
								<input type="text" name="username" placeholder="Nom de compte" required/>
								<input type="password" name="password" placeholder="***********" required/>
								<input type="submit" name="submit_login" value="connexion">
								<span>
								<a href="{$URL}/user/register">Pas de compte ?</a>
								</span>
							</form>
							<div class="clear"></div>
						</div>
					</div>
					{else}
					<div class="sidebar-box popular-topics">
						<div class="sbox-head">Bienvenue {$smarty.session.pseudo}</div>
						<div class="sbox-content">
							<ul>
								<li><h4><a href="{$URL}/user/profil"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/user.png"> Mon profil</a></h4></li>
								<li><h4><a href="{$URL}/user/tokens"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/star.png"> Achat de points</a></h4></li>
								<li><h4><a href="{$URL}/user/vip"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/star.png"> VIP</a></h4></li>
								<li><h4><a href="{$URL}/shop/cat/1"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/cadeau.png"> Boutique ({$smarty.session.tokens} points)</a></h4></li>
								<li><h4><a href="{$URL}/user/vote"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/time.png"> Voter</a></h4></li>
								<li><h4><a href="{$URL}/server/bugtracker"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/bug.png"> Bugtracker</a></h4></li>
								<li><h4><a href="{$URL}/user/logout"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/close.png"> D&eacute;connexion</a></h4></li>
							</ul>
						</div>
					</div>
					{/if}
					<a href="{$URL}/user/vote" class="teamspeak-baner">
						<p></p>
						<span></span>
					</a>
					<div class="sidebar-box popular-topics">
						<div class="sbox-head">Communaute</div>
						<div class="sbox-content">
							<ul>
								<li><h4><a href="{$BOARD_URL}"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/comment.png"> Forum</a></h4></li>
							</ul>
						</div>
					</div>					
					{if isset($smarty.session.logged) && $smarty.session.gmlvl>=$GMLVL_ADMIN}
					<div class="sidebar-box popular-topics">
						<div class="sbox-head">Administration</div>
						<div class="sbox-content">
							<ul>
								<li><h4><a href="{$URL}/administration"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/newspaper.png"> Administration</a></h4></li>
							</ul>
						</div>
					</div>
					{/if}
					<div class="sidebar-box login">
						<div class="sbox-head">Encyclopedie :: Recherche</div>
						<div class="sbox-content">
							<form class="login" action="{$URL}/encyclopedia/item" method="post">
								<input class="color_input" type="text" placeholder="Nom de l'item &agrave; rechercher..." name="item" id="item" required/>
								<input class="color_input_sub" type="submit" name="item_post" value="Rechercher" type="submit"/>
							</form>
							<div class="clear"></div>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="footer">
				<a class="back-to-top" href="#header">
					<p></p>
					<span></span>
				</a>
				<div id="rights">
					<font color="#594f46">&copy;</font> {$TITLE} - Tous droits r&eacute;serv&eacute;s<br>
					Propuls&eacute; par Panty - Copyright 2014</font> <br>
					Design&eacute; par <a href="http://nekkathecat.deviantart.com" rel="nofollow" target="_blank">Nekkathecat</a> | D&eacute;velopp&eacute; par <a rel="nofollow">Ramlethal</a><br>
				</div>
				<div id="footer-menu">
					<ul>
						<li><a>Connect&eacute;s : <b>{$logged}</b></a></li>
					</ul>
					<ul>
						<li><a>Guildes : <b>{$guilds}</b></a></li>
					</ul>
					<ul>
						<li><a>Personnages : <b>{$characters}</b></a></li>
					</ul>
					<ul>
						<li><a>Comptes : <b>{$accounts}</b></a></li>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>