<?php
/**
 * administration.php
 *
 * Page permettant à l'utilisateur de gérer les données en BDD
 * Ex : news, boutique
 *
 * @package       Panty
 * @author        Ramlethal
 */
class Administration_Controller extends TinyMVC_Controller
{
	function switch_rank($rank_bdd)
		{
			switch ($rank_bdd) {
				case 0:
					$rank = 'Joueur';
					break;
				case 1:
					$rank = 'Animateur';
					break;
				case 2:
					$rank = 'Mod&eacute;rateur';
					break;
				case 3:
					$rank = 'Maître Joueur';
					break;
				case 4:
					$rank = 'D&eacute;veloppeur';
					break;
				case 5:
					$rank = 'Administrateur';
					break;
				default:
					$rank = 'Joueur';
					break;
			} //$user_data['level']
			return $rank;
		}
	function index()
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
			if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				header("Location: " . TMVC_URL . "/news/index");
				exit;
			} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->smarty->display(PANTY_THEME . '/manage-index.tpl');
		}
	}
	function news()
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
			if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				header("Location: " . TMVC_URL . "/news/index");
				exit;
			} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->model('News_Model', 'news');
			if (isset($_POST['news']) && strlen($_POST['message']) >= 10 && strlen($_POST['title']) >= 2) {
				$message = nl2br(trim(strip_tags($_POST['message'], '<br><font><span><b><i><strong><strike><p><em><s><ol><ul><blockquote><li><a><img><table><tbody><tr><td><hr>')));
				$title   = $_POST['title'];
				$type    = (int) $_POST['type'];
				$user    = htmlentities($_SESSION['pseudo']);
				$this->news->add_news($message, $title, $type, $user);
				$this->smarty->assign('news_added', 'news_added');
			} //isset($_POST['news']) && strlen($_POST['message']) >= 20 && strlen($_POST['title']) >= 2
			$news = $this->news->get_all_news();
			$this->smarty->assign('array_news', $news);
			$this->smarty->display(PANTY_THEME . '/manage-news.tpl');
		}
	}
	function message()
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
			if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				header("Location: " . TMVC_URL . "/news/index");
				exit;
			} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->model('News_Model', 'news');
			$comments = $this->news->get_all_comments();
			$this->smarty->assign('array_comments', $comments);
			
			$this->load->model('Server_Model', 'server');
			$bug = $this->server->get_bug();
			$this->smarty->assign('array_bug', $bug);
			
			$this->smarty->display(PANTY_THEME . '/manage-msg.tpl');
		}
	}
	function delete_new()
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
			if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				header("Location: " . TMVC_URL . "/news/index");
				exit;
			} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->library('uri');
			$this->load->model('News_Model', 'news');
			$id     = (int) $this->uri->segment(4);
			$delete = $this->news->delete_new($id);
			if ($delete):
				$dat = array(
					"title" => "Suppr&eacute;ssion r&eacute;ussie",
					"content" => "L'article a &eacute;t&eacute; supprim&eacute; avec succ&egrave;s !"
				);
			else:
				$dat = array(
					"title" => "Erreur",
					"content" => "L'article n'existe pas ou plus."
				);
			endif;
			$this->smarty->assign($dat);
			$this->smarty->display(PANTY_THEME . '/message.tpl');
		}
	}
	function delete_comment()
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
			if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				header("Location: " . TMVC_URL . "/news/index");
				exit;
			} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->library('uri');
			$this->load->model('News_Model', 'news');
			$id     = (int) $this->uri->segment(4);
			$delete = $this->news->delete_comment($id);
			if ($delete):
				$dat = array(
					"title" => "Suppr&eacute;ssion r&eacute;ussie",
					"content" => "Le commentaire a &eacute;t&eacute; supprim&eacute; avec succ&egrave;s !"
				);
			else:
				$dat = array(
					"title" => "Erreur",
					"content" => "Le commentaire n'existe pas ou plus."
				);
			endif;
			$this->smarty->assign($dat);
			$this->smarty->display(PANTY_THEME . '/message.tpl');
		}
	}
	function delete_bug()
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
			if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				header("Location: " . TMVC_URL . "/news/index");
				exit;
			} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->library('uri');
			$this->load->model('Server_Model', 'server');
			$id     = (int) $this->uri->segment(4);
			$delete = $this->server->delete_bug($id);
			if ($delete):
				$dat = array(
					"title" => "Suppr&eacute;ssion r&eacute;ussie",
					"content" => "Le bug a &eacute;t&eacute; supprim&eacute; avec succ&egrave;s !"
				);
			else:
				$dat = array(
					"title" => "Erreur",
					"content" => "Le bug n'existe pas ou plus."
				);
			endif;
			$this->smarty->assign($dat);
			$this->smarty->display(PANTY_THEME . '/message.tpl');
		}
	}
	function shop_items()
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
			if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				header("Location: " . TMVC_URL . "/news/index");
				exit;
			} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->model('Shop_Model', 'shop');
			if (isset($_POST['id_item']) && isset($_POST['price_item'])) {
				$id_item 	= (int) $_POST['id_item'];
				$price_item = (int) $_POST['price_item'];
				$this->shop->add_shop_item($id_item, $price_item);
				$this->smarty->assign('item_added', 'item_added');
			}
			$items = $this->shop->get_all_items();
			$this->smarty->assign('array_items', $items);
			$this->smarty->display(PANTY_THEME . '/manage-items.tpl');
		}
	}
	function delete_shop_items()
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
			if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				header("Location: " . TMVC_URL . "/news/index");
				exit;
			} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < 
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->library('uri');
			$this->load->model('Shop_Model', 'shop');
			$id     = (int) $this->uri->segment(4);
			$delete = $this->shop->delete_shop_item($id);
			if ($delete):
				$dat = array(
					"title" => "Suppr&eacute;ssion r&eacute;ussie",
					"content" => "L'item boutique a &eacute;t&eacute; supprim&eacute; avec succ&egrave;s !"
				);
			else:
				$dat = array(
					"title" => "Erreur",
					"content" => "L'item n'existe pas ou n'est plus en boutique."
				);
			endif;
			$this->smarty->assign($dat);
			$this->smarty->display(PANTY_THEME . '/message.tpl');
		}
	}
	function account()
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
			if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				header("Location: " . TMVC_URL . "/news/index");
				exit;
			} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->model('User_Model', 'user');
			$account_unban = $this->user->get_account_unban();
			$this->smarty->assign('array_account_unban', $account_unban);
			$account_ban = $this->user->get_account_ban();
			$this->smarty->assign('array_account_ban', $account_ban);
			$this->smarty->display(PANTY_THEME . '/manage-account.tpl');
		}
	}
	function logs()
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
			if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				header("Location: " . TMVC_URL . "/news/index");
				exit;
			} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->model('User_Model', 'user');
			$token_log = $this->user->get_token_log();
			$this->smarty->assign('array_token_log', $token_log);
			$this->load->model('Shop_Model', 'shop');
			$shop_log = $this->shop->get_shop_log();
			$this->smarty->assign('array_shop_log', $shop_log);
			$this->smarty->display(PANTY_THEME . '/manage-log.tpl');
		}
	}
	function ban_account()
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
			if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				header("Location: " . TMVC_URL . "/news/index");
				exit;
			} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < 
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->library('uri');
			$this->load->model('User_Model', 'user');
			$id     = (int) $this->uri->segment(4);
			$ban = $this->user->ban_account($id);
			if ($ban):
				$dat = array(
					"title" => "Ban r&eacute;ussie",
					"content" => "Le compte a &eacute;t&eacute; banni avec succ&egrave;s !"
				);
			else:
				$dat = array(
					"title" => "Erreur",
					"content" => "Le compte n'existe pas ou est d&eacute;j&agrave; banni."
				);
			endif;
			$this->smarty->assign($dat);
			$this->smarty->display(PANTY_THEME . '/message.tpl');
		}
	}
	function unban_account()
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
			if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				header("Location: " . TMVC_URL . "/news/index");
				exit;
			} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < 
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->library('uri');
			$this->load->model('User_Model', 'user');
			$id     = (int) $this->uri->segment(4);
			$this->user->unban_account($id);
			$unban = $this->user->unban_account($id);
			if ($unban):
				$dat = array(
					"title" => "D&eacute;ban r&eacute;ussie",
					"content" => "Le compte a &eacute;t&eacute; d&eacute;banni avec succ&egrave;s !"
				);
			else:
				$dat = array(
					"title" => "Erreur",
					"content" => "Le compte n'existe pas ou est d&eacute;j&agrave; d&eacute;banni."
				);
			endif;
			$this->smarty->assign($dat);
			$this->smarty->display(PANTY_THEME . '/message.tpl');
		}
	}
	function manage_account()
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
				if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
					header("Location: " . TMVC_URL . "/news/index");
					exit;
				} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < 
				if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
				$this->load->library('uri');
				$this->load->model('User_Model', 'user');
				$id        = (int) $this->uri->segment(4);
				$user_data = $this->user->user_data($id);
				if (isset($_POST['change_gm']) && isset($_POST['new_gm'])) {
					$new_gm = $_POST['new_gm'];
					$this->user->change_gm($id, $new_gm);
					$this->smarty->assign('gm_changed', 'gm_changed');
				}
				if ($user_data) {
					$datas = array(
						'id' => $user_data['guid'],
						'account' => $user_data['account'],
						'pseudo' => $user_data['pseudo'],
						'gm' => $user_data['level'],
						'level' => self::switch_rank($user_data['level']),
						'banni' => $user_data['banned'],
						'nb_votes' => $user_data['votes'],
						'tokens' => $user_data['points'],
						'last_co' => $user_data['lastConnectionDate'],
					);
					$this->smarty->assign('user_data', $datas);
					$chars_data = $this->user->get_account_characters($id);
					$this->smarty->assign('chars_data', $chars_data);
					$this->smarty->display(PANTY_THEME . '/manage-info.tpl');
				} //$user_data
				else {
					$dat = array(
						"title" => "Compte inexistant !",
						"content" => "Impossible de voir ce compte : il n'existe pas/plus. Si vous pensez qu'il s'agit d'une erreur, contactez un administrateur."
					);
					$this->smarty->assign($dat);
					$this->smarty->display(PANTY_THEME . '/message.tpl');
				}
			}
		}
	function delete_character()
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
			if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				header("Location: " . TMVC_URL . "/news/index");
				exit;
			} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < 
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->library('uri');
			$this->load->model('User_Model', 'user');
			$id     = (int) $this->uri->segment(4);
			$this->user->delete_character($id);
			$delete = $this->user->delete_character($id);
			if ($delete):
				$dat = array(
					"title" => "Suppr&eacute;ssion r&eacute;ussie",
					"content" => "Le personnage a &eacute;t&eacute; supprim&eacute; avec succ&egrave;s !"
				);
			else:
				$dat = array(
					"title" => "Erreur",
					"content" => "Le personnage n'existe pas ou est d&eacute;j&agrave; supprim&eacute;."
				);
			endif;
			$this->smarty->assign($dat);
			$this->smarty->display(PANTY_THEME . '/message.tpl');
		}
	}
	function delete_account()
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
			if (!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				header("Location: " . TMVC_URL . "/news/index");
				exit;
			} //!isset($_SESSION['logged']) || $_SESSION['gmlvl'] < 
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
			$this->load->library('uri');
			$this->load->model('User_Model', 'user');
			$id     = (int) $this->uri->segment(4);
			$this->user->delete_account($id);
			$delete = $this->user->delete_account($id);
			if ($delete):
				$dat = array(
					"title" => "Suppr&eacute;ssion r&eacute;ussie",
					"content" => "Le compte a &eacute;t&eacute; supprim&eacute; avec succ&egrave;s !"
				);
			else:
				$dat = array(
					"title" => "Erreur",
					"content" => "Le compte n'existe pas ou est d&eacute;j&agrave; supprim&eacute;."
				);
			endif;
			$this->smarty->assign($dat);
			$this->smarty->display(PANTY_THEME . '/message.tpl');
		}
	}
}