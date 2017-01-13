<?php
/**
 * news.php
 *
 * Page concernant les actions dirigées actualité
 * Ex : news, commentaires
 *
 * @package        Panty
 * @author        Ramlethal
 */
class News_Controller extends TinyMVC_Controller
{
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
			if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
			} //($_SESSION['banned']) == 1
			$this->load->model('News_Model', 'news');
			$array_news = $this->news->get_news();
			$this->smarty->assign('array_news', $array_news);
			$this->smarty->display(PANTY_THEME . '/news.tpl');
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
			if (USE_COMMENT == TRUE) {
				$this->load->library('uri');
				$this->load->model('News_Model', 'news');
				$id  = (int) $this->uri->segment(4);
				$new = $this->news->view($id);
				if ($new) {
					if (isset($_POST['add_comment']) && strlen($_POST['message']) >= 2) {
						$message = nl2br(trim($_POST['message']));
						$user    = htmlentities($_SESSION['pseudo']);
						$this->news->add_comment($id, $message, $user);
						$this->smarty->assign('comment_added', 'comment_added');
					} //isset($_POST['add_comment']) && strlen($_POST['message']) >= 2
					$comments = $this->news->get_comments($id);
					$datas    = array(
						'new_title' => $new['title'],
						'new_content' => $new['content'],
						'new_author' => $new['author'],
						'comments_array' => $comments
					);
					$this->smarty->assign('view_data', $datas);
					$this->smarty->display(PANTY_THEME . '/view-news.tpl');
				} //$new
			}
			else {
				$dat = array(
					"title" => "Commentaire d&eacute;sactiv&eacute;e",
					"content" => "Impossible d'acc&eacute;der &agrave; cette page : les commentaires sont d&eacute;sactiv&eacute;es ! "
				);
				$this->smarty->assign($dat);
				$this->smarty->display(PANTY_THEME . '/message.tpl');
			}
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
}