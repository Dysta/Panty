<?php
/***
 * Panty - Change the design like you change your panty !
 * Copyright Ramlethal 2013-2014
 * Fichier de configuration
 ***/

 
 /* Configuration de base du CMS */
define('TITLE', 'Panty'); // Titre du site/Nom du serveur
	 /* Variable vous permettant de changer le thème du CMS. Le nom du thème est égal au nom du dossier contenu dans system > smarty > templates.
		Faites attention aux majuscules/minuscules. Si vous avez une erreur concernant le thème, c'est que le nom entré n'est pas le bon. */
if (!defined('PANTY_THEME')) // Ne touchez pas cette ligne
	define('PANTY_THEME', 'nw'); // Thème du CMS
	 /* Affichage ou non des erreurs CMS. 
		Utile lorsque vous installez le CMS pour la première fois ou que vous avez des pages blanche inexpliqué. */ 
define('VIEW_ERROR', TRUE); // Afficher ou non les erreurs du CMS (TRUE pour afficher FALSE pour cacher)
	 /* Système de maintenance. Le GMLVL_ADMIN que vous définissez plus bas permet de contourner ce système. */
define('MAINTENANCE', FALSE); // Mettre votre site en maintenance (TRUE pour activer FALSE pour désactiver)
	 /* L'URL du CMS doit être mis correctement. Si vous constatez un bug graphique (tout est blanc, pas d'images...),
		c'est que le problème vient probablement de là. C'est grâce à cette URL que les images sont chargées etc. */
define('BASE_URL', 'http://127.0.0.1/Panty-master'); // URL du CMS (sans le / de fin)
define('URL_REWRITING', true); // Utiliser le rewriting URL ? Mettre en "false" si le CMS ne s'affiche pas
	 /* Configuration de la connexion entre la base de données et le CMS. Si vous avez des erreurs SQL vérifiez les informations.
		Faites bien attention lorsque vous completez les informations. */
define('DB_HOST', '127.0.0.1'); // Adresse de la base de données
define('DB_NAME', 'syrma'); // Nom de la base de données
define('DB_USER', 'root'); // User de la base de données
define('DB_PASSWORD', ''); // Mot de passe de la base de données
define('HASH_MD5', false); // Les mots de passes sont-ils hashés en MD5 ? - Crisis Emu par exemple
	 /* Configuration du moyen de payement 
		1 = StarPass 
		2 = DediPass */
define('METHODE_PAYEMENT' , 2);
	 /* Configuration de StarPass (Vérifiez que l'achat de point est activé dans les modules en bas de la page).
		Pour Starpass et sa configuration, basez vous sur l'image situé dans le dossier "_ressource" (panty_config_starpass)*/
define('IDP', 000000); // IDP starpass
define('IDD', 000000); // IDD starpass
	 /* Configuration de DediPass (Vérifiez que l'achat de point est activé dans les modules en bas de la page).
		Pour DediPass et sa configuration, basez vous sur les images situé dans le dossier "_ressource" (panty_config_dedipass)*/
define('PUBLIC_KEY_DEDIPASS', '');
define('PRIVATE_KEY_DEDIPASS', '');
	 /* Configuration Admin */
define('GMLVL_ADMIN', 5); // GMLVL minimum pour accèder aux pages d'administration et au site quand il est en maintenance
		
 /* Configuration global du CMS */
	 /* Configuration des differents URL */
define('VOTE_URL', ''); // URL de vote
define('BOARD_URL', ''); // URL de votre forum
define('DOFUS_URL', ''); // URL de téléchargement pour l'installateur DOFUS 1.29.1
define('LAUNCHER_URL', ''); // URL de téléchargement pour le launcher/l'installateur de votre serveur
define('TRAILER_URL', 'https://www.youtube.com/embed/gw3sg_hsFeY'); // Trailer du serveur
define('FB_URL', ''); // Url Facebook
define('TW_URL', ''); // Url Twitter
define('YT_URL', ''); // Url Youtube
		
	 /* Configuration des modules du CMS. Mettre TRUE pour activer et FALSE pour désactiver */	
define('USE_SHOP', TRUE); // Utilisation de la boutique ou pas ? (Si boutique en jeu mettez FALSE)
define('USE_VIP', TRUE); // Utilisation du systèe VIP ou pas ? (Si vous ne voulez pas de système VIP mettez FALSE)
define('USE_REGISTER', TRUE); // Utilisation de l'inscription ou pas ? (Si vous voulez bloquez l'inscription mettez FALSE)
define('USE_TOKEN', TRUE); // Utilisation de l'achat de point ou pas ? (Si vous voulez bloquez l'achat de points mettez FALSE)
define('USE_BUGTRACKER', TRUE); // Utilisation du bugtracker ou pas ? (Si vous voulez bloquez le bugtracker mettez FALSE)
define('USE_COMMENT', TRUE); // Utilisation des commentaires ou pas ? (Si vous voulez bloquez l'ajout de commentaire mettez FALSE)

 /* Parametrage des gains de points. */
define('SHOP_TOKENS', 1000); // Nombre de points gagnés pour un code audio
define('VIP_SHOP_TOKENS', 2000); // Nombre de points gagnés pour un code audio en étant VIP

define('VOTE_TOKENS', 200); // Nombre de points gagnés pour un vote
define('VIP_VOTE_TOKENS', 400); // Nombre de points gagnés pour un vote en étant VIP

define('VIP_TOKENS', 2500); // Nombre de points payés pour passer VIP
define('VIP_RED', 0); // Réduction en pourcentage pour la boutique pour les VIP (2 signifie 2% de réduction) - Mettre à 0 pour désactiver

define('BONUS', FALSE); // Active le BONUS vote ou pas (true activer, false desactivé)
define('BONUS_10', '10'); // Points ajoutés en BONUS pour 10 votes
define('BONUS_20', '20'); // Points ajoutés en BONUS pour 20 votes
define('BONUS_30', '30'); // Points ajoutés en BONUS pour 30 votes
define('BONUS_40', '40'); // Points ajoutés en BONUS pour 40 votes
define('BONUS_60', '60'); // Points ajoutés en BONUS pour 60 votes
define('BONUS_50', '50'); // Points ajoutés en BONUS pour 50 votes
define('BONUS_70', '70'); // Points ajoutés en BONUS pour 70 votes
define('BONUS_80', '80'); // Points ajoutés en BONUS pour 80 votes
define('BONUS_90', '90'); // Points ajoutés en BONUS pour 90 votes
define('BONUS_100', '100'); // Points ajoutés en BONUS pour 100 votesS