Informations
====

Panty est un CMS DOFUS 1.29.1 adapté à Ancestra Remake et ses dérivés. Propulsé par TinyMVC, framework possédant une architecture MVC, et couplé à Smarty, moteur de template, Panty propose une gestion multi-thème complète.
En effet, avec un minimum de connaissances en HTML et un minimum de tact, vous pourrez très vite adapter vos propres designs rapidement à Panty sans avoir besoin de vous occuper des actions PHP.

Panty est un CMS public avec un code potable et lisible, fournissant des performances plutôt bonnes tout en ayant des fonctionnalités correctes. Tout n'est pas parfait, rien n'est parfait, cependant le CMS distribué est plus clean que les CMS moyens publics de l'émulation Dofus (il y a évidemment des exceptions), et ne comporte pas de code leeché (mis à part une fonction dont l'auteur a été cité).

Installation
====

1) Téléchargez l'archive de Panty en cliquant sur le bouton "Download ZIP" à droite de votre écran.<br />
2) Dézippez le contenu de l'archive dans le dossier de votre choix, à l'intérieur du dossier "www" pour Wamp, ou à l'intérieur du dossier "htdocs" pour Xampp.<br />
3) Rendez-vous dans le dossier system -> panty -> configs, éditez le fichier "Panty.php" avec un éditeur de texte avec les informations correspondantes.<br />
4) Allez dans le dossier "_ressources" et exécutez le fichier "panty_sql.sql" sur votre base de données. ATTENTION : Cochez la case "run on errors" !<br />
5) Rendez vous à l'adresse du CMS, et tout devrait fonctionner !<br />

Configuration de StarPass
====

1) Rendez-vous sur le site de StarPass et créez un document de payemment. (pour la configuration, ce référer aux screen dans le dossier "_ressources")<br />
2) Rendez-vous dans le dossier system/panty/configs et ouvrez le fichier Panty.php pour configurer le CMS.<br />
3) A la ligne METHODE_PAYEMENT, choisissez 1<br />
4) Entrez votre IDD & votre IPD StarPass dans les lignes qui correspondent<br />

Configuration de DediPass
====

1) Rendez-vous sur le site de DediPass et créez un document de payemment en séléctionnant l'option produit unique. (pour la configuration, ce référer aux screen dans le dossier "_ressources")<br />
2) Configurez le document de payemment comme indiqué sur les screens. (pour la configuration, ce référer aux screen dans le dossier "_ressources")<br />
3) Rendez-vous dans le dossier system/panty/configs et ouvrez le fichier Panty.php pour configurer le CMS.<br />
4) A la ligne METHODE_PAYEMENT, choisissez 2<br />
5) Récuprérer la clé public et la clé privé de votre document de payement DediPass comme sur le screen. (pour la configuration, ce référer aux screen dans le dossier "_ressources")<br />
6) Entrez la PUBLIC_KEY_DEDIPASS & la PRIVATE_KEY_DEDIPASS dans les lignes qui correspondent<br />
      
Fonctionnalités
====
<dd>
					<ul>
						<li>Les news
							<ul>
								<li>​Commentaires
									<ul>
										<li>​Ajout</li>
										<li>Suppression</li>
									</ul>
								</li>
								<li>Types de news (7 au total)</li>
								<li>Administration
									<ul>
										<li>​Ajout de news</li>
										<li>Suppression de news</li>
										<li>Suppression des commentaires</li>
									</ul>
								</li>
							</ul>
						</li>
						<li>​Page de pr&eacute;sentation du serveur</li>
						<li>Page "Nous rejoindre"
							<ul>
								<li>​Lien du client DOFUS 1.29.1 configurable</li>
								<li>Lien du launcher du serveur configurable</li>
							</ul>
						</li>
						<li>Page r&eacute;pertoriant l'&eacute;quipe du serveur
							<ul>
								<li>​Charg&eacute; depuis la base de donn&eacute;es automatiquement (table accounts)</li>
								<li>En ligne/Hors ligne</li>
								<li>Affichage du rang</li>
								<li>Email</li>
							</ul>
						</li>
						<li>Classement
							<ul>
								<li>Classement PVM/PVP/Guilde
									<ul>
										<li>​Affichage de la classe</li>
										<li>Affichage du sexe</li>
										<li>Affichage des infos primaires
											<ul>
												<li>Level</li>
												<li>Exp</li>
												<li>Alignement</li>
												<li>Honneur</li>
											</ul>
										</li>
										<li>Affichage du pseudo du personnage avec un lien redirigeant vers la page du compte</li>
									</ul>
								</li>
							</ul>
						</li>
						<li>Page compte
							<ul>
								<li>Affiche certaines informations du compte
									<ul>
										<li>Votes</li>
										<li>Points boutique</li>
										<li>Derni&egrave;re connexion</li>
										<li>Rang du compte</li>
										<li>Connect&eacute; (oui/non)</li>
									</ul>
								</li>
								<li>Affichage d'un message personnel configurable</li>
								<li>Liste des personnages avec redirection sur la page du personnage</li>
							</ul>
						</li>
						<li>Page personnage
							<ul>
								<li>Affichage du pseudo du personnage</li>
								<li>Affichage de ses stats de base</li>
								<li>Affichage des infos primaires
									<ul>
										<li>Niveau</li>
										<li>Exp&eacute;rience</li>
										<li>Sexe</li>
										<li>Vie actuelle/Vie maximale</li>
										<li>Kamas</li>
										<li>Capital disponible</li>
										<li>Affichage de la guilde (si membre d'une guilde)
											<ul>
												<li>Affichage du nom de la guilde</li>
												<li>Affichage du level de la guilde</li>
												<li>Affichage du rang du joueur dans la guilde</li>
												<li>Affichage de son % d'exp&eacute;rience donn&eacute;</li>
												<li>Affichage du total d'exp&eacute;rience donn&eacute;e</li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li>Connexion/D&eacute;connexion prot&eacute;g&eacute;e</li>
						<li>Espace membre
							<ul>
								<li>Gestion du profil
									<ul>
										<li>Affichage des informations du compte</li>
										<li>Gestion du message personnel</li>
										<li>Changement de mot de passe</li>
									</ul>
								</li>
								<li>Achat de points avec script Starpass
									<ul>
										<li>Configuration simple (urls : <a href="http://puu.sh/43Ggw" target="_blank">http://puu.sh/43Ggw</a>)</li>
										<li>V&eacute;rification du code</li>
										<li>Montant de points boutique achet&eacute;s configurable</li>
										<li>Administration
											<ul>
												<li>Ajout en log lors d'un achat</li>
											</ul>
										</li>
									</ul>
								</li>
								<li>Achat de points avec script Dedipass
									<ul>
										<li>Configuration simple (urls : <a href="http://puu.sh/43Ggw" target="_blank">http://puu.sh/43Ggw</a>)</li>
										<li>V&eacute;rification du code</li>
										<li>Montant de points boutique achet&eacute;s configurable</li>
										<li>Administration
											<ul>
												<li>Ajout en log lors d'un achat</li>
											</ul>
										</li>
									</ul>
								</li>
								<li>Boutique ultra-simple
									<ul>
										<li>Affichage des items ayant la valeur de la colonne "publier" &eacute;gale &agrave; "1"</li>
										<li>Prix des items &eacute;gal &agrave; la valeur de la colonne "sold"</li>
										<li>Affichage des stats des items directement depuis la BDD + Coloration</li>
										<li>V&eacute;rification des points</li>
										<li>S&eacute;paration en cat&eacute;gories en fonction des types d'items</li>
										<li>Ajout automatique des commandes &agrave; la table "live_action"</li>
										<li>Administration
											<ul>
												<li>Affichage de tous les items avec prix/prix VIP</li>
												<li>Suppression d'item boutique</li>
												<li>Ajout d'item boutique depuis l'ID de l'item trouvable dans l'encyclop&eacute;die</li>
												<li>Ajout en log lors d'un achat</li>
											</ul>
										</li>
									</ul>
								</li>
								<li>Vote
									<ul>
										<li>Disponible toute les trois heures</li>
										<li>Montant de points gagn&eacute;s configurable</li>
										<li>Syst&egrave;me de bonus tous les 10 votes configurables (voir config)</li>
										<li>Syst&egrave;me de vote/ip</li>
									</ul>
								</li>
								<li>Bugtracker
									<ul>
										<li>Ajouter un bug</li>
										<li>Niveau d'importance montré avec un drapeau</li>
										<li>Administration
											<ul>
												<li>Suppression des bugs</li>
											</ul>
										</li>
									</ul>
								</li>
								<li>Syst&egrave;me VIP
									<ul>
										<li>Gain de points plus important lors d'achat de points et de vote configurable</li>
										<li>R&eacute;duction (en pourcentage) sur la boutique configurable</li>
									</ul>
								</li>
							</ul>
						</li>
						<li>Encyclop&eacute;die (items)
							<ul>
								<li>Recherche d'objet comportant le terme de la recherche</li>
								<li>Affichage pouss&eacute; de l'item
									<ul>
										<li>Stats depuis la BDD</li>
										<li>Panoplie</li>
										<li>Drop</li>
									</ul>
								</li>
								<li>Affichage de l'ID de l'item pour les administrateurs (utile pour la boutique)</li>
							</ul>
						</li>
						<li>Page de r&egrave;glement compl&egrave;te
							<ul>
								<li>R&egrave;glement divis&eacute; en plusieurs parties</li>
							</ul>
						</li>
						<li>Template modifiable
							<ul>
								<li>Variable dans la config permettant de changer de th&egrave;me</li>
								<li>Th&egrave;mes g&eacute;r&eacute;s par Smarty, chaque th&egrave;mes se trouvant dans des dossier s&eacute;par&eacute;s</li>
								<li>Fichier "layout" permettant de g&eacute;rer la page globale</li>
								<li>Extention du layout via les autres pages template ("{extends file="$THEME/layout.tpl"}")
									<ul>
										<li>&Eacute;tend les "blocks" ainsi : "{block name=body}" =&gt; Annonce que le contenu de ce block &eacute;tend le contenu du block "body" contenu dans le layout ("{block name=body}{/block}"</li>
									</ul>
								</li>
								<li>Rewriting URL activable/d&eacute;sactivable</li>
							</ul>
						</li>
					</ul>		
				</dd>
			</dl>
