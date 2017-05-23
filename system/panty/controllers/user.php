<?php
/**
 * user.php
 *
 * Page concernant les actions dirigées utilisateurs
 * Ex : Inscription, espace membre, achat de points, vote...
 *
 * @package		Panty
 * @author		Ramlethal
 */
class User_Controller extends TinyMVC_Controller
{
		function switch_logged($logged)
		{
			switch ($logged) {
				case 0:
					$log = 'Non';
					break;
				case 1:
					$log = 'Oui';
					break;
				default:
					$log = 'Non';
					break;
			} //$user_data['logged']
			return $log;
		}
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
		function register()
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
				if (USE_REGISTER == TRUE) {
					if (isset($_SESSION['logged'])) {
						header("Location: " . TMVC_URL . "/news/index");
						exit;
					} //isset($_SESSION['logged'])
					if (($_SESSION['banned']) == 1) {
						header("Location: " . TMVC_URL . "/user/banned");
						exit;
					} //($_SESSION['banned']) == 1
					if (isset($_POST['register'])) {
						if (isset($_POST['username']) && isset($_POST['password']) && isset($_POST['password_conf']) && isset($_POST['pseudo']) && isset($_POST['email']) && isset($_POST['quest']) && isset($_POST['answ']) && isset($_POST['captcha']) && isset($_POST['rule']) 
							&& !empty($_POST['username']) && !empty($_POST['password']) && !empty($_POST['password_conf']) && !empty($_POST['pseudo']) && !empty($_POST['email']) && !empty($_POST['quest']) && !empty($_POST['answ']) && !empty($_POST['captcha'])) {
							$this->load->model('User_Model', 'user');
							$username      = htmlentities($_POST['username']);
							$password      = htmlentities($_POST['password']);
							$password_conf = htmlentities($_POST['password_conf']);
							$pseudo        = htmlentities($_POST['pseudo']);
							$email         = htmlentities($_POST['email']);
							$quest         = htmlentities($_POST['quest']);
							$answ          = htmlentities($_POST['answ']);
							$captcha       = $_POST['captcha'];
							$already_used  = $this->user->already_used($username, $pseudo, $email);
							if ($already_used == FALSE) {
								if ($password == $password_conf) {
									if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
										if ($captcha == $_SESSION['captcha']) {
											if(HASH_MD5):
												$password = md5($password);
											endif;
											$this->user->create_user($username, $password, $pseudo, $email, $quest, $answ);
											$this->smarty->assign('success', 'success');
										} //$captcha == $_SESSION['captcha']
										else {
											$this->smarty->assign('captcha', 'captcha');
										}
									} //filter_var($email, FILTER_VALIDATE_EMAIL)
									else {
										$this->smarty->assign('mail_invalid', 'mail_invalid');
									}
								} //$password == $password_conf
								else {
									$this->smarty->assign('password', 'password');
								}
							} //$already_used == FALSE
							else {
								$this->smarty->assign('alreadyused', 'alreadyused');
							}
						} //isset($_POST['username']) && isset($_POST['password']) && isset($_POST['password_conf']) && isset($_POST['pseudo']) && isset($_POST['email']) && isset($_POST['quest']) && isset($_POST['answ']) && isset($_POST['captcha']) && isset($_POST['rule'])
						else {
							$this->smarty->assign('champs', 'champs');
						}
					} //isset($_POST['register'])
					$this->smarty->display(PANTY_THEME . '/register.tpl');
				}
				else {
					$dat = array(
						"title" => "Inscription d&eacute;sactiv&eacute;e",
						"content" => "Impossible d'acc&eacute;der &agrave; cette page : l'inscription est d&eacute;sactiv&eacute;e !"
					);
					$this->smarty->assign($dat);
					$this->smarty->display(PANTY_THEME . '/message.tpl');
				}
			}
		}
		function profil()
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
				if (!isset($_SESSION['logged'])) {
					header("Location: " . TMVC_URL . "/user/not_connected");
					exit;
				} //!isset($_SESSION['logged
				if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
				$this->load->model('User_Model', 'user');
				$id        = htmlentities($_SESSION['id']);
				$user_data = $this->user->user_data($id);
				
				if (isset($_POST['change_message']) && isset($_POST['message'])) {
					$message = $_POST['message'];
					$this->user->change_message($id, $message);
					$this->smarty->assign('message_changed', 'message_changed');
				} //isset($_POST['change_message']) && isset($_POST['message'])
				if (isset($_POST['oldpass']) && isset($_POST['pass']) && isset($_POST['passconf']) && isset($_POST['change'])) {
					$oldpass          = htmlentities($_POST['oldpass']);
					$new_pass         = htmlentities($_POST['pass']);
					$new_pass_confirm = htmlentities($_POST['passconf']);
					if(HASH_MD5):
						$oldpass          = md5($oldpass);
						$new_pass         = md5($new_pass);
						$new_pass_confirm = md5($new_pass_confirm);
					endif;
					if ($oldpass == $user_data['pass']) {
						if ($new_pass == $new_pass_confirm) {
							$this->user->change_pass($id, $new_pass);
							$this->smarty->assign('pass_changed', 'pass_changed');
						} //$new_pass == $new_pass_confirm
						else {
							$this->smarty->assign('badconfirm', 'badconfirm');
						}
					} //$oldpass == $user_data['pass']
					else {
						$this->smarty->assign('badpassword', 'badpassword');
					}
				} //isset($_POST['oldpass']) && isset($_POST['pass']) && isset($_POST['passconf']) && isset($_POST['change'])
				$datas = array(
					'account' => $user_data['account'],
					'mail' => $user_data['email'],
					'pseudo' => $user_data['pseudo'],
					'nb_votes' => $user_data['votes'],
					'tokens' => $user_data['points'],
					'last_ip' => $user_data['lastIP'],
					'last_co' => $user_data['lastConnectionDate'],
					'question' => $user_data['question'],
					'answer' => $user_data['reponse'],
					'message' => $user_data['message'],
					'player_lv' => self::switch_rank($user_data['level']),
					'connected' => self::switch_logged($user_data['logged'])
				);
				$this->smarty->assign('user_data', $datas);
				$chars_data = $this->user->get_account_characters($id);
				$this->smarty->assign('chars_data', $chars_data);
				$this->smarty->display(PANTY_THEME . '/account.tpl');
				
			}
		}
		function login()
		{
			$this->load->model('User_Model', 'user');
			$username = htmlentities($_POST['username']);
			$password = htmlentities($_POST['password']);
			if(HASH_MD5):
				$password = md5($password);
			endif;
			$user     = $this->user->get_user($username, $password);
			if ($user != FALSE):
				$dat                = array(
					"title" => "Bienvenue " . $username,
					"content" => "Connexion effectu&eacute;e avec succ&egrave;s !"
				);
				$_SESSION['username'] = $user['account'];
				$_SESSION['pseudo']   = $user['pseudo'];
				$_SESSION['tokens']   = $user['points'];
				$_SESSION['id'] = $id = $user['guid'];
				$_SESSION['gmlvl']    = $user['level'];
				$_SESSION['banned']   = $user['banned'];
				$_SESSION['logged']   = true;
				if(($_SESSION['banned']) == 1):
					header("Location: " . TMVC_URL . "/user/banned");
				endif;
				//($_SESSION['banned']) == 1
			else:
				$dat = array(
					"title" => "Erreur",
					"content" => "Nom de compte ou mot de passe incorrect !"
				);
			endif;
			$this->smarty->assign($dat);
			$this->smarty->display(PANTY_THEME . '/message.tpl');
		}
		function logout()
		{
			if (!isset($_SESSION['logged'])) {
				header("Location: " . TMVC_URL . "/user/not_connected");
				exit;
			} //!isset($_SESSION['logged'])
			if (($_SESSION['banned']) == 1) {
				header("Location: " . TMVC_URL . "/user/banned");
				exit;
			} //($_SESSION['banned']) == 1
			session_destroy();
			$dat = array(
				"title" => "D&eacute;connexion",
				"content" => "D&eacute;connexion effectu&eacute;e avec succ&egrave;s !"
			);
			$this->smarty->assign($dat);
			$this->smarty->display(PANTY_THEME . '/message.tpl');
		}
		function tokens()
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
				if (USE_TOKEN == TRUE) {
					if (!isset($_SESSION['logged'])) {
						header("Location: " . TMVC_URL . "/user/not_connected");
						exit;
					} //!isset($_SESSION['logged'])
					$this->load->model('User_Model', 'user');
					$id            = htmlentities($_SESSION['id']);
					if($this->user->is_vip($id)):
						$tokens = VIP_SHOP_TOKENS;
					else:
						$tokens = SHOP_TOKENS;
					endif;
					$dat  = array(
						"shop_tokens" => $tokens
					);
					$this->smarty->assign($dat);
					$this->smarty->display(PANTY_THEME . '/tokens.tpl');
				}
				else {
					$dat = array(
						"title" => "Achat d&eacute;sactiv&eacute;e",
						"content" => "Impossible d'acc&eacute;der &agrave; cette page : les achats sont d&eacute;sactiv&eacute;e !"
					);
					$this->smarty->assign($dat);
					$this->smarty->display(PANTY_THEME . '/message.tpl');
				}
			}
		}
		function vote()
		{
			if (MAINTENANCE == TRUE && $_SESSION['gmlvl'] < GMLVL_ADMIN) {
				$dat = array(
					"title" => "Maintenance",
					"content" => "Le site subis actuellement une maintenance. Merci de revenir plus tard."
				);
				$this->smarty->assign($dat);
				$this->smarty->display(PANTY_THEME . '/message.tpl');
			}
			//!isset($_SESSION['logged'])
			if (($_SESSION['banned']) == 1) {
				header("Location: " . TMVC_URL . "/user/banned");
				exit;
			} //($_SESSION['banned']) == 1
			if (!isset($_SESSION['logged'])) {
				$dat = array(
				"title" => "Vote & Gagne",
				"content" => "Vous n'&ecirc;tes pas connect&eacute;, <b>vous ne gagnerez pas de point</b>. <b>Connectez-vous</b> pour gagnez des points ."
			);
			$this->smarty->assign($dat);
			$this->smarty->display(PANTY_THEME . '/vote.tpl');
			} 
			else {
				$this->load->model('User_Model', 'user');
				$this->user->raz_ip(); // On remet à 0 toutes les IP qui peuvent voter
				$id            = htmlentities($_SESSION['id']);
				$user_data     = $this->user->user_data($id);
				$ip            = $user_data['IPvote'];
				$time_lastvote = $user_data['timevote'];
				$date_now      = time();
				$time_vote     = ($date_now - $time_lastvote) / 60;
				
				$ip = $this->user->getIp(); // On récupère l'ip du compte qui veut voter
				$this->user->change_ip($id, $ip); // on l'insère en bdd
				$ip_check  = $this->user->already_used_ip($ip); // On vérifie si l'ip est déjà utilisé
				
				if ($time_vote >= 180 && $ip_check == TRUE) {
					unset($_SESSION['tokens']);
					if($this->user->is_vip($id)):
						$_SESSION['tokens'] = $this->user->add_vote($id, $date_now, VIP_VOTE_TOKENS);
					else:
						$_SESSION['tokens'] = $this->user->add_vote($id, $date_now, VOTE_TOKENS);
					endif;
					header("Location: " . VOTE_URL);
					exit;
				} //$time_vote >= 120
				else {
					$wait = round(180 - $time_vote, 0);
					if ($wait < 0 && $ip != '0.0.0.0'):
						$dat  = array(
							"title" => "Vote impossible",
							"content" => "Vous avez d&eacute;j&agrave; vot&eacute; avec un autre compte !"
						);
					else:
						$dat  = array(
								"title" => "Vote impossible",
								"content" => "Vous devez attendre $wait minutes avant de pouvoir voter &agrave; nouveau !"
							);
					endif;
					$this->smarty->assign($dat);
					$this->smarty->display(PANTY_THEME . '/message.tpl');
				}
			}
		}
		function tokens_add()
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
				if (!isset($_SESSION['logged'])) {
					header("Location: " . TMVC_URL . "/user/not_connected");
					exit;
				} //!isset($_SESSION['logged'])
				if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
				if (METHODE_PAYEMENT == 2) { //Si le moyen de payement est DediPass
					$code = isset($_POST['code']) ? preg_replace('/[^a-zA-Z0-9]+/', '', $_POST['code']) : ''; 
					if( empty($code) ) { // Si on tente d'acceder à l'url d'achat de pts sans avoir mis de code
					  $dat                = array(
							"title" => "Erreur",
							"content" => "Vous devez saisir un code."
						);
						$this->smarty->assign($dat);
						$this->smarty->display(PANTY_THEME . '/message.tpl');
					} 
					else {
						$public_key 	= PUBLIC_KEY_DEDIPASS;
						$private_key 	= PRIVATE_KEY_DEDIPASS;
						$dedipass = file_get_contents('http://api.dedipass.com/v1/pay/?public_key='.$public_key.'&private_key='.$private_key.'&code=' . $code); 
						$dedipass = json_decode($dedipass); 
							if($dedipass->status == 'success') { //Si le code entré est bon
								$this->load->model('User_Model', 'user');
								$id = $_SESSION['id'];
								unset($_SESSION['tokens']);
								if($this->user->is_vip($id)):
									$_SESSION['tokens'] = $this->user->add_tokens($id,VIP_SHOP_TOKENS);
								else:
									$_SESSION['tokens'] = $this->user->add_tokens($id,SHOP_TOKENS);
								endif;
								$username = $_SESSION['username'];
								$this->user->token_add_log($type, $username, $item, $date);
								
								$dat                = array(
									"title" => "Achat de points termin&eacute;",
									"content" => "L'achat de points s'est d&eacute;roul&eacute; avec succ&egrave;s ! Vous disposez d&eacute;sormais de " . $_SESSION['tokens'] . " points."
								);
								$this->smarty->assign($dat);
								$this->smarty->display(PANTY_THEME . '/message.tpl'); 
							}
					  else { 
						//Si le code est invalide 
						$dat                = array(
							"title" => "Erreur",
							"content" => "Le code <b>$code</b> est invalide."
						);
						$this->smarty->assign($dat);
						$this->smarty->display(PANTY_THEME . '/message.tpl');
					  } 
					}
				}
				if (METHODE_PAYEMENT == 1) { //Si le moyen de payement est StarPass
						// Déclaration des variables
					$ident = $idp = $ids = $idd = $codes = $code1 = $code2 = $code3 = $code4 = $code5 = $datas = '';
					$idp   = IDP;
					// $ids n'est plus utilisé, mais il faut conserver la variable pour une question de compatibilité
					$idd   = IDD;
					$ident = $idp . ";" . $ids . ";" . $idd;
					// On récupère le(s) code(s) sous la forme 'xxxxxxxx;xxxxxxxx'
					if (isset($_POST['code1']))
						$code1 = $_POST['code1'];
					if (isset($_POST['code2']))
						$code2 = ";" . $_POST['code2'];
					if (isset($_POST['code3']))
						$code3 = ";" . $_POST['code3'];
					if (isset($_POST['code4']))
						$code4 = ";" . $_POST['code4'];
					if (isset($_POST['code5']))
						$code5 = ";" . $_POST['code5'];
					$codes = $code1 . $code2 . $code3 . $code4 . $code5;
					// On récupère le champ DATAS
					if (isset($_POST['DATAS']))
						$datas = $_POST['DATAS'];
					// On encode les trois chaines en URL
					$ident = urlencode($ident);
					$codes = urlencode($codes);
					$datas = urlencode($datas);
					/* Envoi de la requête vers le serveur StarPass
					Dans la variable tab[0] on récupère la réponse du serveur
					Dans la variable tab[1] on récupère l'URL d'accès ou d'erreur suivant la réponse du serveur */
					$get_f = @file("http://script.starpass.fr/check_php.php?ident=$ident&codes=$codes&DATAS=$datas");
					if (!$get_f) {
						exit("Votre serveur n'a pas acc&egrave;s au serveur de StarPass, merci de contacter votre h&eacute;bergeur.");
					} //!$get_f
					$tab = explode("|", $get_f[0]);
					if (!$tab[1])
						$url = "http://script.starpass.fr/error.php";
					else
						$url = $tab[1];
					// dans $pays on a le pays de l'offre. exemple "fr"
					$pays      = $tab[2];
					// dans $palier on a le palier de l'offre. exemple "Plus A"
					$palier    = urldecode($tab[3]);
					// dans $id_palier on a l'identifiant de l'offre
					$id_palier = urldecode($tab[4]);
					// dans $type on a le type de l'offre. exemple "sms", "audiotel, "cb", etc.
					$type      = urldecode($tab[5]);
					// vous pouvez à tout moment consulter la liste des paliers &agrave; l'adresse : http://script.starpass.fr/palier.php
					// Si $tab[0] ne répond pas "OUI" l'accès est refusé
					// On redirige sur l'URL d'erreur
					if (substr($tab[0], 0, 3) != "OUI") {
						header("Location: $url");
						exit;
					} //substr($tab[0], 0, 3) != "OUI"
					else {
						$this->load->model('User_Model', 'user');
						$id = $_SESSION['id'];
						unset($_SESSION['tokens']);
						if($this->user->is_vip($id)):
							$_SESSION['tokens'] = $this->user->add_tokens($id,VIP_SHOP_TOKENS);
						else:
							$_SESSION['tokens'] = $this->user->add_tokens($id,SHOP_TOKENS);
						endif;
						$username = $_SESSION['username'];
						$this->user->token_add_log($type, $username, $item, $date);
						$dat                = array(
							"title" => "Achat de points termin&eacute;",
							"content" => "L'achat de points s'est d&eacute;roul&eacute; avec succ&egrave;s ! Vous disposez d&eacute;sormais de " . $_SESSION['tokens'] . " points."
						);
						$this->smarty->assign($dat);
						$this->smarty->display(PANTY_THEME . '/message.tpl');
					}
				}
			}
		}
		function not_connected()
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
				if (!isset($_SESSION['logged'])) {
					$dat = array(
						"title" => "Erreur",
						"content" => "Vous devez &ecirc;tre connect&eacute; pour acc&eacute;der &agrave; cette page."
					);
					$this->smarty->assign($dat);
					$this->smarty->display(PANTY_THEME . '/message.tpl');
				} //!isset($_SESSION['logged'])
				else {
					header("Location: " . TMVC_URL . "/user/not_connected");
					exit;
				}
			}
		}
		function view_account()
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
				$this->load->library('uri');
				$this->load->model('User_Model', 'user');
				$id        = (int) $this->uri->segment(4);
				$user_data = $this->user->user_data($id);
				if ($user_data) {
					$datas = array(
						'pseudo' => $user_data['pseudo'],
						'nb_votes' => $user_data['votes'],
						'tokens' => $user_data['points'],
						'last_co' => $user_data['lastConnectionDate'],
						'message' => nl2br($user_data['message']),
						'player_lv' => self::switch_rank($user_data['level']),
						'connected' => self::switch_logged($user_data['logged'])
					);
					$this->smarty->assign('user_data', $datas);
					$chars_data = $this->user->get_account_characters($id);
					$this->smarty->assign('chars_data', $chars_data);
					$this->smarty->display(PANTY_THEME . '/view-account.tpl');
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
		function view_character()
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
				$this->load->library('uri');
				$this->load->model('User_Model', 'user');
				$id        = (int) $this->uri->segment(4);
				$char_data = $this->user->char_data($id);
				if ($char_data) {
					$datas = array(
						'name' => $char_data['name'],
						'sexe' => $char_data['sexe'],
						'class' => $char_data['class'],
						'kamas' => $char_data['kamas'],
						'capital' => $char_data['capital'],
						'level' => $char_data['level'],
						'xp' => $char_data['xp'],
						'alignement' => $char_data['alignement'],
						'honor' => $char_data['honor'],
						'deshonor' => $char_data['deshonor'],
						'account' => $char_data['account'],
						'vitalite' => $char_data['vitalite'],
						'force' => $char_data['force'],
						'sagesse' => $char_data['sagesse'],
						'intelligence' => $char_data['intelligence'],
						'chance' => $char_data['chance'],
						'agilite' => $char_data['agilite'],
						'pdvactu' => (50 + (5 * $char_data['level']) + $char_data['vitalite']) * ($char_data['pdvper'] / 100),
						'pdvmax' => (50 + (5 * $char_data['level']) + $char_data['vitalite']),
						'title' => $char_data['title']
					);
					$this->smarty->assign('char_data', $datas);
					$guild_char_data = $this->user->guild_char_data($id);
					if ($guild_char_data) {
						$datas_guild_char = array(
							'guild' => $guild_char_data['guild'],
							'rank' => $guild_char_data['rank'],
							'xpdone' => $guild_char_data['xpdone'],
							'pxp' => $guild_char_data['pxp']
						);
						$this->smarty->assign('guild_char_data', $datas_guild_char);
						$guild_data  = $this->user->guild_data($datas_guild_char['guild']);
						$datas_guild = array(
							'id' => $guild_data['id'],
							'name' => $guild_data['name'],
							'emblem' => $guild_data['emblem'],
							'lvl' => $guild_data['lvl'],
							'xp' => $guild_data['xp']
						);
						$this->smarty->assign('guild_data', $datas_guild);
					} //$guild_char_data
					$this->smarty->display(PANTY_THEME . '/view-character.tpl');
				} //$char_data
				else {
					$dat = array(
						"title" => "Compte inexistant !",
						"content" => "Impossible de voir ce personnage : il n'existe pas/plus. Si vous pensez qu'il s'agit d'une erreur, contactez un administrateur."
					);
					$this->smarty->assign($dat);
					$this->smarty->display(PANTY_THEME . '/message.tpl');
				}
			}
		}
		function vip()
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
				if (!isset($_SESSION['logged'])) {
					header("Location: " . TMVC_URL . "/user/not_connected");
					exit;
				} //!isset($_SESSION['logged'])
				if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
				$this->load->model('User_Model', 'user');
				$id = $_SESSION['id'];
				if(!$this->user->is_vip($id)):
					$this->smarty->display(PANTY_THEME . '/vip.tpl');
				else:
					$dat = array(
							"title" => "Erreur",
							"content" => "Votre compte est VIP."
						);
						$this->smarty->assign($dat);
						$this->smarty->display(PANTY_THEME . '/message.tpl');
				endif;
			}
		}
		function get_vip()
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
				if (!isset($_SESSION['logged'])) {
					header("Location: " . TMVC_URL . "/user/not_connected");
					exit;
				} //!isset($_SESSION['logged'])
				if (($_SESSION['banned']) == 1) {
					header("Location: " . TMVC_URL . "/user/banned");
					exit;
				} //($_SESSION['banned']) == 1
				$this->load->model('User_Model', 'user');
				$id = $_SESSION['id'];
				if(!$this->user->is_vip($id)):
					$user_data     = $this->user->user_data($id);
					$tokens = $user_data['points'];
					if($tokens>VIP_TOKENS):
						unset($_SESSION['tokens']);
						$_SESSION['tokens'] = $this->user->set_vip($id);
						$dat = array(
							"title" => "F&eacute;licitation!",
							"content" => "Votre compte est d&eacute;sormais VIP."
						);
						$this->smarty->assign($dat);
						$this->smarty->display(PANTY_THEME . '/message.tpl');
					else:
						$dat = array(
							"title" => "Erreur",
							"content" => "Vous n'avez pas assez de points pour passer VIP."
						);
						$this->smarty->assign($dat);
						$this->smarty->display(PANTY_THEME . '/message.tpl');
					endif;
				else:
					$dat = array(
							"title" => "Erreur",
							"content" => "Votre compte est VIP."
						);
						$this->smarty->assign($dat);
						$this->smarty->display(PANTY_THEME . '/message.tpl');
				endif;
			}
		}
		function banned()
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
				$this->smarty->display(PANTY_THEME . '/banned.tpl');
			}
		}
}
