<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
	<head>
		<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
		<meta name="author" content="Dysta & Ramlethal">
		<meta name="template" content="{$THEME}">
		<title>{$TITLE} - {block name=title}Default Page Title{/block}{if $MAINTENANCE==TRUE} (MAINTENANCE){/if}</title>
		<link rel="icon" type="image/png" href="{$URL_ASSETS}img/devtool/favicon.png" />
		<link rel="stylesheet" href="{$URL_ASSETS}css/common.css" type="text/css"/>
		<script type="text/javascript" src="{$URL_ASSETS}js/jquery.js"></script>
		<script type="text/javascript" src="{$URL_ASSETS}js/nav.js"></script>
		<script type="text/javascript" src="{$URL_ASSETS}js/nivo.js"></script>
		<script type="text/javascript">
			$(window).load(function() {
				$('#slider').nivoSlider();
			});
		</script>
		<script src="{$URL_ASSETS_GLOBAL}ckeditor/ckeditor.js"></script>
		<!--[if lte IE 8]><script type="text/javascript" src="{$URL_ASSETS}js/roundies.js"></script><![endif]-->
		<script type="text/javascript" src="{$URL_ASSETS}js/yuiloader-min.js"></script>
		<script type="text/javascript" src="{$URL_ASSETS}js/yahoo-dom-event.js"></script>
		<script type="text/javascript" src="{$URL_ASSETS}js/dragdrop-min.js"></script>
		<script type="text/javascript" src="{$URL_ASSETS}js/pages_persos-includes.js"></script>
		<script type="text/javascript" src="{$URL_ASSETS}js/jsport.js"></script>
		<script type="text/javascript">
			jQuery(function($){
				$('a.zoombox').zoombox({
					width       : 700,
					height      : 520,
					theme       : 'nw',
				});
			});
		</script>
		<script src="jquery-css-transform.html"></script>
		<script src="jquery-animate-css-rotate-scale.html"></script>
		<script src="//api.dedipass.com/v1/pay.js"></script>
	</head>
	<body>
		<div id="header"></div>
		<div id="mainDiv">
			<div id="top">
				<div class="info_1">● Comptes : <b>{$accounts}</b></div>
				<div class="info_2">● Personnages : <b>{$characters}</b></div>
				<div class="info_3">● Connect&eacute;s : <b>{$logged}</b></div>
				<a href="{$URL}/server/play" id="button_play"></a>
			</div>
				<div id="menu">
					<div id="content">
						{if !isset($smarty.session.logged)}
						<a id="button2" href="{$URL}/user/vote"></a>
							<ul>
								<img src="{$URL_ASSETS}img/global/topUL.png"/>
									<li><a href="{$URL}/news/index">● Accueil </a></li>
									<li><a href="{$URL}/user/register">● Inscription </a></li>
									<li><a href="{$URL}/server/play">● Nous rejoindre</a></li>
									<li><a href="{$URL}/server/cgu">● Règlement </a></li>
									<li><a href="{$URL}/server/bugtracker">● Bugtracker </a></li>
								<img src="{$URL_ASSETS}img/global/bottomUL.png"/>
							</ul>
							<a id="button1" href="{$URL}/server/play"></a>
							<ul>
								<img src="{$URL_ASSETS}img/global/topUL.png"/>
									<li><a href="{$URL}/server/ladder">● Classement </a></li>
									<li><a href="{$URL}/server/staff">● Équipe </a></li>
									<li><a href="{$URL}/server/story">● Histoire </a></li>
									<li><a href="{$URL}/server/trailer">● Trailer </a></li>
									<li><a href="{$BOARD_URL}">● Forum </a></li>
								<img src="{$URL_ASSETS}img/global/bottomUL.png"/>
							</ul>
						{else}
						<a id="button2" href="{$URL}/user/vote"></a>
						{if isset($smarty.session.logged) && $smarty.session.gmlvl>=$GMLVL_ADMIN}
							<ul>
								<img src="{$URL_ASSETS}img/global/topUL.png"/>
									<li><a href="{$URL}/administration/index"><font color="#e36154">● Administration</font></a></li>
								<img src="{$URL_ASSETS}img/global/bottomUL.png"/>
							</ul>
						{/if}
							<ul>
								<img src="{$URL_ASSETS}img/global/topUL.png"/>
									<li><a href="{$URL}/news/index">● Accueil </a></li>
									<li><a href="{$URL}/server/play">● Nous rejoindre</a></li>
									<li><a href="{$URL}/server/cgu">● Règlement </a></li>
									<li><a href="{$URL}/server/bugtracker">● Bugtracker </a></li>
									<li><a href="{$URL}/user/vote">● Vote & Gagne </a></li>
									<li><a href="{$URL}/shop/cat/">● Boutique </a></li>
								<img src="{$URL_ASSETS}img/global/bottomUL.png"/>
							</ul>
							<a id="button1" href="{$URL}/server/play"></a>
							<ul>
								<img src="{$URL_ASSETS}img/global/topUL.png"/>
									<li><a href="{$URL}/server/ladder">● Classement </a></li>
									<li><a href="{$URL}/server/staff">● Équipe </a></li>
									<li><a href="{$URL}/server/story">● Histoire </a></li>
									<li><a href="{$URL}/server/trailer">● Trailer </a></li>
									<li><a href="{$BOARD_URL}">● Forum </a></li>
								<img src="{$URL_ASSETS}img/global/bottomUL.png"/>
							</ul>
						{/if}
					</div>
					<img src="{$URL_ASSETS}img/global/bottomMenu.png"/>
				</div>
			<div id="right">
				<div id="member">
					<div id="space">
						{if !isset($smarty.session.logged)}
						<div id="connexion">
							<form method="post" action="{$URL}/user/login"/>
								<input class="input" type="text" name="username" style="margin:11px 0px 0px 27px;" value="Nom de compte" onfocus="this.value=''"/>
								<input class="input" type="password" name="password" style="margin:51px 0px 0px 27px;" value="Mot de passe" onfocus="this.value=''"/>
								<input class="inputConnexion" type="submit" name="connexion" style="margin:88px 0px 0px 47px;" value=""/>
							</form>
							<div class="lien" style="font-size:12px;">
								<a href="{$URL}/user/register">Pas encore inscris ?</a><br/>
							</div>
						</div>
						{else}
						<div style="position:absolute;margin:60px 0px 0px 10px;font-size:13px;">
							<font color="#1080b4"> 
								<img width="16" height="16" class="devtool" style="margin-bottom:4px;" src="{$URL_ASSETS_GLOBAL}devtool/user.png"> Bonjour <b>{$smarty.session.pseudo}</b> !<br/><br/>
								<a href="{$URL}/user/profil"><img width="16" height="16" class="devtool" style="margin-bottom:4px;" src="{$URL_ASSETS_GLOBAL}devtool/user.png"> Mon profil</a><br/>
								<a href="{$URL}/user/tokens"><img width="16" height="16" class="devtool" style="margin-bottom:4px;" src="{$URL_ASSETS_GLOBAL}devtool/star.png"> Achat de points</a><br/>
								<a href="{$URL}/user/vip"><img width="16" height="16" class="devtool" style="margin-bottom:4px;" src="{$URL_ASSETS_GLOBAL}devtool/star.png"> VIP</a><br/>
								<a href="{$URL}/shop/cat/"><img width="16" height="16" class="devtool" style="margin-bottom:4px;" src="{$URL_ASSETS_GLOBAL}devtool/cadeau.png"> Boutique ({$smarty.session.tokens} points)</a><br/>
								<a href="{$URL}/user/vote"><img width="16" height="16" class="devtool" style="margin-bottom:4px;" src="{$URL_ASSETS_GLOBAL}devtool/time.png"> Voter</a><br/>
							</font>
						</div>
						<span style="position:absolute;margin:60px 0px 0px 175px;font-size:11px;"><a href="{$URL}/user/logout"><img title="Déconnexion" src="{$URL_ASSETS}img/global/deco.png"/> </a></span>
						{/if}
					</div>
				</div>
				<div id="armurerie">
					<form method="post" action="{$URL}/encyclopedia/item">
						<input class="none" type="text" name="item" id="item" value="Rechercher un item ..." onfocus="this.value=''"/>
						<input class="submit" type="submit" name="item_post" value=" "/>
					</form>
				</div>
				<div id="lien">
					<a href="{$FB_URL}" class="facebook"></a>
					<a href="{$TW_URL}" class="twitter"></a>
					<a href="{$YT_URL}" class="youtube"></a>
				</div>
			</div>
			<div id="gallery">
				<img src="{$URL_ASSETS}img/global/gallery.png" class="supporter"/>
				<div id="slide">
					<div class="slider-wrapper theme-default">
					<div class="ribbon"></div>
						<div id="slider" class="nivoSlider">
							<img src="{$URL_ASSETS}img/gallery/1.png" title=""/>
							<img src="{$URL_ASSETS}img/gallery/2.png" title=""/>
							<img src="{$URL_ASSETS}img/gallery/3.png" title=""/>
							<img src="{$URL_ASSETS}img/gallery/4.png" title=""/>
							<img src="{$URL_ASSETS}img/gallery/5.png" title=""/>
						</div>
					</div>
				</div>
			</div>
			<!-- Début contenu page -->
			{block name=body}{/block}
			<!-- fin contenu page -->
			<div id="footer"></div>
		</div>
	</body>
	<script>
		CKEDITOR.replace( 'ckeditor' );
    </script>
</html>