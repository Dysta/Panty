<?php
/**
 * Library Smarty
 * Contient les fonctions nécessaires au fonctionnement de Smarty
 * @package		Panty
 */
define('SMARTY_SPL_AUTOLOAD', 1);
require(TMVC_BASEDIR . '/smarty/Smarty.class.php');
class TinyMVC_Library_Smarty_Wrapper Extends Smarty
{
	function __construct()
	{
		parent::__construct();
		$this->setTemplateDir(TMVC_BASEDIR . '/smarty/templates/');
		$this->setCompileDir(TMVC_BASEDIR . '/smarty/templates_c/');
		$this->setConfigDir(TMVC_BASEDIR . '/smarty/configs/');
		$this->setCacheDir(TMVC_BASEDIR . '/smarty/cache/');
		$this->smarty->assign('URL_ASSETS', TMVC_ASSDIR . PANTY_THEME . '/');
		$this->smarty->assign('URL_ASSETS_GLOBAL', TMVC_ASSDIR . 'global/');
		$this->smarty->assign('URL_ASSETS_ADMIN', TMVC_ASSDIR . 'global/_admin/');
		$this->smarty->assign('THEME', PANTY_THEME);
		$this->smarty->assign('THEME_ADMIN', '_admin');
		$this->smarty->assign('TITLE', TITLE);
		$this->smarty->assign('URL', TMVC_URL);
		$this->smarty->assign('VOTE_URL', VOTE_URL);
		$this->smarty->assign('BOARD_URL', BOARD_URL);
		$this->smarty->assign('DOFUS_URL', DOFUS_URL);
		$this->smarty->assign('LAUNCHER_URL', LAUNCHER_URL);
		$this->smarty->assign('TRAILER_URL', TRAILER_URL);
		$this->smarty->assign('FB_URL', FB_URL);
		$this->smarty->assign('TW_URL', TW_URL);
		$this->smarty->assign('YT_URL', YT_URL);
		$this->smarty->assign('IDD', IDD);
		$this->smarty->assign('GMLVL_ADMIN', GMLVL_ADMIN);
		$this->smarty->assign('MAINTENANCE', MAINTENANCE);
		$this->smarty->assign('VIP_TOKENS', VIP_TOKENS);
		$this->smarty->assign('SHOP_TOKENS', SHOP_TOKENS);
		$this->smarty->assign('VIP_SHOP_TOKENS', VIP_SHOP_TOKENS);
		$this->smarty->assign('VOTE_TOKENS', VOTE_TOKENS);
		$this->smarty->assign('VIP_VOTE_TOKENS', VIP_VOTE_TOKENS);
		$this->smarty->assign('VIP_RED', VIP_RED);
		$this->smarty->assign('PUBLIC_KEY_DEDIPASS', PUBLIC_KEY_DEDIPASS);
		$this->smarty->assign('PRIVATE_KEY_DEDIPASS', PRIVATE_KEY_DEDIPASS);
		$this->smarty->assign('METHODE_PAYEMENT', METHODE_PAYEMENT);
		$this->smarty->assign('USE_COMMENT', USE_COMMENT);
	}
}