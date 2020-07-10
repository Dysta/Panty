<?php
/**
 * server.php
 *
 * Page concernant les actions dirigées serveur
 * Ex : Règlement, Nous rejoindre, etc...
 *
 * @package		Panty
 * @author		Ramlethal
 */
class Server_Controller extends TinyMVC_Controller
{
	function story()
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
			$this->smarty->display(PANTY_THEME . '/story.tpl');
		}
	}
	function staff()
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
			$this->load->model('Server_Model', 'server');
			$array_staff = $this->server->get_staff();
			$this->smarty->assign('array_staff', $array_staff);
			$this->smarty->display(PANTY_THEME . '/staff.tpl');
		}
	}
	function cgu()
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
			$this->smarty->display(PANTY_THEME . '/cgu.tpl');
		}
	}
	function play()
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
			$this->smarty->display(PANTY_THEME . '/play.tpl');
		}
	}
	function trailer()
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
			$this->smarty->display(PANTY_THEME . '/trailer.tpl');
		}
	}
	function ladder()
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
			$this->load->model('Server_Model', 'server');
			$array_perso_pvm3 = $this->server->get_top_pvm3();
			$this->smarty->assign('array_perso_pvm3', $array_perso_pvm3);
			$array_perso_pvp3 = $this->server->get_top_pvp3();
			$this->smarty->assign('array_perso_pvp3', $array_perso_pvp3);
			$array_guilde3 = $this->server->get_top_guilde3();
			$this->smarty->assign('array_guilde3', $array_guilde3);
			$array_vote3 = $this->server->get_top_vote3();
			$this->smarty->assign('array_vote3', $array_vote3);
			$this->smarty->display(PANTY_THEME . '/ladder.tpl');
		}
	}
	function ladder_pvm()
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
			$this->load->model('Server_Model', 'server');
			$array_perso = $this->server->get_top_pvm();
			$this->smarty->assign('array_perso', $array_perso);
			$this->smarty->display(PANTY_THEME . '/ladder-pvm.tpl');
		}
	}
	function ladder_pvp()
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
			$this->load->model('Server_Model', 'server');
			$array_perso = $this->server->get_top_pvp();
			$this->smarty->assign('array_perso', $array_perso);
			$this->smarty->display(PANTY_THEME . '/ladder-pvp.tpl');
		}
	}
	function ladder_guilde()
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
			$this->load->model('Server_Model', 'server');
			$array_guilde = $this->server->get_top_guilde();
			$this->smarty->assign('array_guilde', $array_guilde);
			$this->smarty->display(PANTY_THEME . '/ladder-guilde.tpl');
		}
	}
	function ladder_vote()
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
			$this->load->model('Server_Model', 'server');
			$array_vote = $this->server->get_top_vote();
			$this->smarty->assign('array_vote', $array_vote);
			$this->smarty->display(PANTY_THEME . '/ladder-vote.tpl');
		}
	}
	function bugtracker()
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
			if (USE_BUGTRACKER == TRUE) {
				$this->load->model('Server_Model', 'server');
				if (isset($_POST['add_bug']) && strlen($_POST['message']) >= 10 && strlen($_POST['title']) >= 2) {
					$message = nl2br(trim($_POST['message']));
					$title   = $_POST['title'];
					$type    = (int) $_POST['type'];
					$user    = htmlentities($_SESSION['pseudo']);
					$this->server->add_bug($message, $title, $type, $user);
					$this->smarty->assign('bug_added', 'bug_added');
				}
				$array_bug = $this->server->get_bug();
				$this->smarty->assign('array_bug', $array_bug);
				$this->smarty->display(PANTY_THEME . '/bugtracker.tpl');
			} //USE_BUGTRACKER == TRUE
			else {
				$dat = array(
					"title" => "Bugtracker d&eacute;sactiv&eacute;e",
					"content" => "Impossible d'acc&eacute;der &agrave; cette page : le bugtracker est d&eacute;sactiv&eacute;e ! "
				);
				$this->smarty->assign($dat);
				$this->smarty->display(PANTY_THEME . '/message.tpl');
			}
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
}