<?php
/**
 * shop.php
 *
 * Page concernant les actions dirigées boutique
 * Ex : Gestion des catégories, affichage et achat d'item
 *
 * @package		Panty
 * @author		Ramlethal
 */
class Shop_Controller extends TinyMVC_Controller
{
	function cat()
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
			if (USE_SHOP == TRUE) {
				if (!isset($_SESSION['logged'])) {
					header("Location: " . TMVC_URL . "/user/not_connected");
					exit;
				} //!isset($_SESSION['logged'])
				$this->load->library('uri');
				$this->load->model('Shop_Model', 'shop');
				$id = (int) $this->uri->segment(4);
				switch ($id) {
					case 1:
						$cat = '=16';
						break;
					case 2;
						$cat = '=17';
						break;
					case 3:
						$cat = '=1';
						break;
					case 4:
						$cat = '=9';
						break;
					case 5:
						$cat = '=10';
						break;
					case 6:
						$cat = '=11';
						break;
					case 7:
						$cat = '>=2 and type<=8';
						break;
					case 8:
						$cat = '=82';
						break;
					case 9:
						$cat = '=18';
						break;
					case 10:
						$cat = '>18';
						break;
				} //$id
				$this->load->model('User_Model', 'user');
				$acc_id = $_SESSION['id'];
				if($this->user->is_vip($acc_id)):
					$price_vip = 1;
				else:
					$price_vip = 0;
				endif;
				$items = $this->shop->get_items($cat,$price_vip);
				$this->smarty->assign('items', $items);
				$this->smarty->display(PANTY_THEME . '/shop.tpl');
			} //USE_SHOP == TRUE
			else {
				$dat = array(
					"title" => "Boutique d&eacute;sactiv&eacute;e",
					"content" => "Impossible d'acc&eacute;der &agrave; cette page : la boutique est d&eacute;sactiv&eacute;e !"
				);
				$this->smarty->assign($dat);
				$this->smarty->display(PANTY_THEME . '/message.tpl');
			}
		}
	}
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
			if (USE_SHOP == TRUE) {
				if (!isset($_SESSION['logged'])) {
					header("Location: " . TMVC_URL . "/user/not_connected");
					exit;
				} //!isset($_SESSION['logged'])
				$this->load->library('uri');
				$this->load->model('Shop_Model', 'shop');
				$id   = (int) $this->uri->segment(4);
				$item = $this->shop->get_item($id);
				if ($item['publier'] == 1) {
					$this->load->model('User_Model', 'user');
					$acc_id = $_SESSION['id'];
					if($this->user->is_vip($acc_id)):
						$item_price = $item['sold']*(1-(VIP_RED/100));
					else:
						$item_price = $item['sold'];
					endif;
					if ($item_price <= $_SESSION['tokens']) {
						if (isset($_POST['character']) && $item_price <= $_SESSION['tokens']) {
							$char_id = htmlentities($_POST['character']);
							unset($_SESSION['tokens']);
							$_SESSION['tokens'] = $this->shop->buy_item($acc_id, $id, $item_price, $char_id);
							$this->smarty->assign('success', 'success');
							$username = $_SESSION['username'];
							$item_b     = $this->shop->get_item_name((int) $this->uri->segment(4));
							$this->shop->shop_add_log($type, $username, $item_b, $date);
						} //isset($_POST['character'])
						else if (isset($_POST['character']) && $item_price >= $_SESSION['tokens']) {
							$dat = array(
								"title" => "Achat impossible",
								"content" => "Vous n'avez pas assez de points pour acheter cet item !"
							);
							$this->smarty->assign($dat);
							$this->smarty->display(PANTY_THEME . '/message.tpl');
						} //isset($_POST['character']) && $item_price >= $_SESSION['tokens']
						if ($item['panoplie'] != '-1') {
							$panoid        = (int) $item['panoplie'];
							$panoplie_name = $this->shop->get_panoplie_name($panoid);
							$this->smarty->assign('panoplie_name', $panoplie_name);
						} //$item['panoplie'] != '-1'
						$this->load->model('User_Model', 'character');
						$characters = $this->character->get_account_characters($acc_id);
						$this->smarty->assign('character', $characters);
						$this->smarty->assign('item', $item);
						$this->smarty->assign('item_stats', $this->shop->statsitem($item['statsTemplate'], FALSE, 'oui', 'oui'));
						$this->smarty->display(PANTY_THEME . '/shop_confirm.tpl');
					} //$item_price <= $_SESSION['tokens']
					else {
						$dat = array(
							"title" => "Achat impossible",
							"content" => "Vous n'avez pas assez de points pour acheter cet item !"
						);
						$this->smarty->assign($dat);
						$this->smarty->display(PANTY_THEME . '/message.tpl');
					}
				} //$item['publier'] == 1
				else {
					$dat = array(
						"title" => "Achat impossible",
						"content" => "L'objet n'est pas disponible en boutique !"
					);
					$this->smarty->assign($dat);
					$this->smarty->display(PANTY_THEME . '/message.tpl');
				}
			} //USE_SHOP == TRUE
			else {
				$dat = array(
					"title" => "Boutique d&eacute;sactiv&eacute;e",
					"content" => "Impossible d'acc&eacute;der &agrave; cette page : la boutique est d&eacute;sactiv&eacute;e !"
				);
				$this->smarty->assign($dat);
				$this->smarty->display(PANTY_THEME . '/message.tpl');
			}
		}
	}
}