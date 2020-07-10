<?php
/**
 * encyclopedia.php
 *
 * Page concernant le contenu du serveur
 * Ex : items disponibles etc
 *
 * @package		Panty
 * @author		Ramlethal
 */
class Encyclopedia_Controller extends TinyMVC_Controller
{
	function item()
	{
		if (MAINTENANCE == TRUE && $_SESSION['gmlvl'] < GMLVL_ADMIN) {
			$dat = array(
				"title" => "Maintenance",
				"content" => "Le site subis actuellement une maintenance. Merci de revenir plus tard."
			);
			$this->smarty->assign($dat);
			$this->smarty->display(PANTY_THEME . '/message.tpl');
		}
		else {
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->model('Encyclopedia_Model', 'encyclopedia');
			$string = htmlentities($_POST['item']);
			if (strlen($string) > 2) {
				$array_items = $this->encyclopedia->item($string);
				if ($array_items != FALSE) {
					$this->smarty->assign('array_items', $array_items);
					$this->smarty->display(PANTY_THEME . '/encyclopedia-items.tpl');
				} //$array_items != FALSE
				else {
					$dat = array(
						"title" => "Encyclop&eacute;die - Erreur",
						"content" => "Aucun objet n'a &eacute;t&eacute; trouv&eacute; avec un nom ressemblant &agrave; celui qui est recherch&eacute;."
					);
					$this->smarty->assign($dat);
					$this->smarty->display(PANTY_THEME . '/message.tpl');
				}
			} //strlen($string) > 2
			else {
				$dat = array(
					"title" => "Encyclop&eacute;die - Erreur",
					"content" => "Vous devez entrez au minimum 3 lettres pour pouvoir rechercher un objet."
				);
				$this->smarty->assign($dat);
				$this->smarty->display(PANTY_THEME . '/message.tpl');
			}
		}
	}
	function view()
	{
		if (MAINTENANCE == TRUE && $_SESSION['gmlvl'] < GMLVL_ADMIN) {
			$dat = array(
				"title" => "Maintenance",
				"content" => "Le site subis actuellement une maintenance. Merci de revenir plus tard."
			);
			$this->smarty->assign($dat);
			$this->smarty->display(PANTY_THEME . '/message.tpl');
		}
		else {
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->model('Encyclopedia_Model', 'encyclopedia');
			$this->load->library('uri');
			$id   = (int) $this->uri->segment(4);
			$item = $this->encyclopedia->get_item($id);
			if ($item != null) {
				$drops = $this->encyclopedia->get_drops($id);
				if ($drops != FALSE) {
					$this->smarty->assign('drops', $drops);
				} //$drops != FALSE
				if ($item['panoplie'] != '-1') {
					$panoid        = (int) $item['panoplie'];
					$panoplie_name = $this->encyclopedia->get_panoplie_name($panoid);
					$this->smarty->assign('panoplie_name', $panoplie_name);
				} //$item['panoplie'] != '-1'
				$items_stats = $this->encyclopedia->statsitem($item['statsTemplate'], FALSE, 'oui', 'non');
				$this->smarty->assign('item_stats', $items_stats);
				$this->smarty->assign('item', $item);
				$this->smarty->display(PANTY_THEME . '/encyclopedia-items-view.tpl');
			} //$item != null
			else {
				$dat = array(
					"title" => "Encyclop&eacute;die - Erreur",
					"content" => "Aucun objet n'a &eacute;t&eacute; trouv&eacute; avec un nom ressemblant &agrave; celui qui est recherch&eacute;."
				);
				$this->smarty->assign($dat);
				$this->smarty->display(PANTY_THEME . '/message.tpl');
			}
		}
	}
}