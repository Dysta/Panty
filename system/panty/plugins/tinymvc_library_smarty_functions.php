<?php
/**
 * Functions Smarty
 * Contient les fonctions nécessaires au fonctionnement de Smarty
 * @package		Panty
 */
class TinyMVC_Library_Smarty_Functions
{
	public function __construct()
	{
		$tmvc = tmvc::instance();
		$tmvc->controller->load->model('Server_Model', 'server');
		$top3                                = $tmvc->controller->server->get_top3();
		$logged                              = $tmvc->controller->server->get_logged();
		$accounts                            = $tmvc->controller->server->get_accounts();
		$characters                          = $tmvc->controller->server->get_characters();
		$guilds                              = $tmvc->controller->server->get_guilds();
		$tmvc->controller->smarty->debugging = false;
		$tmvc->controller->smarty->assign('logged', $logged);
		$tmvc->controller->smarty->assign('accounts', $accounts);
		$tmvc->controller->smarty->assign('characters', $characters);
		$tmvc->controller->smarty->assign('guilds', $guilds);
	}
}