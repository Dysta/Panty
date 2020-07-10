ALTER TABLE `accounts` ADD `timevote` BIGINT(100) NOT NULL DEFAULT '0';
ALTER TABLE `accounts` ADD `votes` INT(4) NOT NULL DEFAULT '0';
ALTER TABLE `accounts` ADD `points` INT(4) NOT NULL DEFAULT '0';
ALTER TABLE `accounts` ADD `message` TEXT(0);
ALTER TABLE `accounts` ADD `IPvote` varchar(255) NOT NULL DEFAULT '0.0.0.0';
ALTER TABLE `item_template` ADD `publier` INT(4) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` ADD `sold` INT(4) NOT NULL DEFAULT '0';

-- ----------------------------
-- Table structure for `panty_comments`
-- ----------------------------
DROP TABLE IF EXISTS `panty_comments`;
CREATE TABLE `panty_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `author` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`,`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of panty_comments
-- ----------------------------
INSERT INTO `panty_comments` VALUES ('1', '1', 'Ramlethal', 'Les commentaires fonctionnent également. Un administrateur peut les supprimer.');

-- ----------------------------
-- Table structure for `panty_news`
-- ----------------------------
DROP TABLE IF EXISTS `panty_news`;
CREATE TABLE `panty_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of panty_news
-- ----------------------------
INSERT INTO `panty_news` VALUES ('1', 'Bienvenue sur Panty !', 'Si vous voyez cette page, c\'est que vous avez correctement installé le CMS Panty.<br />\r\nJe vous souhaite ainsi une bonne utilisation du CMS.<br />\r\n<br />\r\nEn cas de doute concernant son fonctionnement, reportez-vous au topic sur le forum E-Dofus.com.<br />\r\nPour toute question, créez un topic sur ce dernier, je vous répondrais au plus vite.<br />\r\n<br />\r\nRamlethal', 'Ramlethal', '3');
INSERT INTO `panty_news` VALUES ('2', 'Bienvenue sur Panty_r10 ! ', 'Si vous voyez cette page, c\'est que vous avez correctement installé le CMS Panty.<br />\r\nPanty_r10 a été conçu par Dysta sur la base des travaux de Ramlethal<br />\r\n<br />\r\nPanty_r10 corrige des souçis de redirection pour les utilisateurs. Certaines pages renvoyais vers des urls inexistantes. Ce problème n\'est plus d\'actualité !<br />\r\nJe vous souhaite une bonne utilisation du CMS !<br />\r\n<br />\r\nDysta', 'Dysta', '0');
INSERT INTO `panty_news` VALUES ('3', 'Bienvenue sur Panty_r11 ! ', 'Si vous voyez cette page, c\'est que vous avez correctement installé le CMS Panty.<br />\r\nPanty_r11 a été conçu par Dysta sur la base des travaux de Ramlethal<br />\r\n<br />\r\nPanty_r11 inclu un système de vote par IP.<br />\r\nJe vous souhaite une bonne utilisation du CMS !<br />\r\n<br />\r\nDysta', 'Dysta', '3');
INSERT INTO `panty_news` VALUES ('4', 'Bienvenue sur Panty_r12 ! ', 'Si vous voyez cette page, c\'est que vous avez correctement installé le CMS Panty.<br />\r\nPanty_r12 a été conçu par Dysta sur la base des travaux de Ramlethal<br />\r\n<br />\r\nPanty_r12 corrige un bug sur la boutique, ajoute une catégorie dans la boutique et ajoute quelque effet dans le shop.<br />\r\nMerci à Klaus pour son aide concernant le bug de la boutique.<br />\r\nConernant le thème "nw", il contient désormais l\'encyclopedie. Merci à Klaus pour la modification de l\'image.<br />\r\nMerci également à Klaus pour les items en .png, la boutique est désormais complète.<br />\r\nCette version contient également un ladder PVP. Un ladder guilde & vote viendrons prochainement.<br />\r\n<br />\r\nDysta', 'Dysta', '3');
INSERT INTO `panty_news` VALUES ('5', 'Bienvenue sur Panty_r14 ! ', 'Si vous voyez cette page, c\'est que vous avez correctement installé le CMS Panty.<br />\r\nPanty_r14 a été conçu par Dysta sur la base des travaux de Ramlethal<br />\r\n<br />\r\nPanty_r14 contient de nombreuses nouveautés tel qu\'un système de maintenance et un système qui empêche les comptes banni d\'accéder au site. Le système de maintenance est contournable par le GM que vous avez indiqué dans la config. Panty_r14 contient également une administration plus poussé que ces prédécesseur. Vous pouvez effectuez des actions sur les comptes comme les bannir, changer leurs GM, supprimer des personnages, supprimer le compte.<br />\r\nLa page d\'accueil du ladder contient un mini top 3 de chaque catégorie disponible dans le ladder. Vous pouvez ensuite cliquez sur les boutons en haut pour afficher un top 50.<br />\r\nPanty_r14 contient également un bugtracker avec différent niveau de bug. Bug mineur, moyen, majeur. Les bugs peuvent être supprimés par les administrateurs de la même façon que les commentaires. Cette rev contient également une correction de faille. La faille permettait à quiconque de supprimer un commentaire. Dans cette rev j\'ai également optimisé le code de certaine fonction.<br />\r\n<br />\r\nDysta', 'Dysta', '3');

-- ----------------------------
-- Table structure for `panty_bug`
-- ----------------------------
DROP TABLE IF EXISTS `panty_bug`;
CREATE TABLE `panty_bug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of panty_bug
-- ----------------------------
INSERT INTO `panty_bug` VALUES ('6', 'Bug Mineur', 'Ceci est un bug mineur !', 'Dysta', '1');
INSERT INTO `panty_bug` VALUES ('7', 'Bug Moyen', 'Ceci est un bug moyen !', 'Dysta', '2');
INSERT INTO `panty_bug` VALUES ('8', 'Bug Majeur', 'Ceci est un bug majeur !', 'Dysta', '3');
INSERT INTO `panty_bug` VALUES ('9', 'Bugtracker ', 'Voici une nouvelle fonctionnalité de Panty, le bugtracker.<br />\r\n<br />\r\nActivable ou non dans la config, le système a été fait par Dysta sur les bases des travaux de Ramlethal.<br />\r\n<br />\r\nCordialement, Dysta', 'Dysta', '1');

-- ----------------------------
-- Table structure for `panty_log`
-- ----------------------------
DROP TABLE IF EXISTS `panty_log`;
CREATE TABLE `panty_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `account` varchar(30) NOT NULL,
  `item` text NOT NULL,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of panty_log
-- ----------------------------
INSERT INTO `panty_log` VALUES ('7', '1', '123', '0', '06-01-2017 à 14:43:50');
INSERT INTO `panty_log` VALUES ('8', '1', '123', '0', '06-01-2017 à 14:48:43');
INSERT INTO `panty_log` VALUES ('9', '1', '123', '0', '06-01-2017 à 18:19:44');
INSERT INTO `panty_log` VALUES ('10', '1', '123', '0', '06-01-2017 à 18:23:26');
INSERT INTO `panty_log` VALUES ('11', '1', '123', '0', '06-01-2017 à 19:00:56');
INSERT INTO `panty_log` VALUES ('12', '1', '123', '0', '06-01-2017 à 23:20:23');
INSERT INTO `panty_log` VALUES ('13', '1', '123', '0', '06-01-2017 à 23:21:15');

-- ----------------------------
-- Table structure for `panty_note`
-- ----------------------------
DROP TABLE IF EXISTS `panty_note`;
CREATE TABLE `panty_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `author` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of panty_note
-- ----------------------------
INSERT INTO `panty_note` VALUES ('25', 'Bonjour !<br />\r\n<br />\r\nBienvenu dans le panel d&#39;administration de votre site ! Ce panel a &eacute;t&eacute; con&ccedil;u par&nbsp;<strong>Dysta&nbsp;</strong>pour&nbsp;<a href=\"https://github.com/Dysta40/PantyCMS\" target=\"_blank\">PantyCMS</a>. Le template du panel admin est ind&eacute;pendant du template du site. J&#39;ai fait en sorte que le panel soit intuitif et facile d&#39;utilisation. Il est pour moi id&eacute;al &agrave; mes yeux mais rien ne vous emp&ecirc;che de faire vos propres modifications dessus par la suite.<br />\r\n<br />\r\nComme vous pouvez le voir, cette box est &eacute;ditable et permet de laisser une note &agrave; votre staff ou &agrave; vous-m&ecirc;me. Elle est facilement &eacute;ditable et avec de multiple fonctionnalit&eacute; !&nbsp;N&#39;oubliez juste pas de cliquer sur le bouton &quot;<strong>Enregistrer les modifications</strong>&quot; ci-dessous !&nbsp;Vous avez &eacute;galement la possibilit&eacute; de voir qui a &eacute;dit&eacute; cette note en dernier !<br />\r\n<br />\r\nMerci d&#39;utiliser PantyCMS. <strong>Dysta</strong>', 'Dysta');
