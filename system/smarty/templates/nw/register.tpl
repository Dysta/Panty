{extends file="$THEME/layout.tpl"} {block name=title}Enregistrement{/block} 
{block name=body}
<div id="contenu">
				<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<span>Inscription</span>Inscription
				</div>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<!-- Début interieur page -->
				{if isset($champs)}
					<p class="error-message"><img src="{$URL_ASSETS}img/devtool/error.png" class="devtool"/> 
						Tous les champs doivent &ecirc;tre <b>compl&eacute;t&eacute;s</b>.
					</p>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/if}
				{if isset($alreadyused)}
					<p class="error-message"><img src="{$URL_ASSETS}img/devtool/error.png" class="devtool"/> 
						Le <b>nom de compte</b>, le <b>pseudonyme</b> ou <b>l'email</b> est d&eacute;j&agrave; utilis&eacute;.
					</p>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/if}
				{if isset($password)}
					<p class="error-message"><img src="{$URL_ASSETS}img/devtool/error.png" class="devtool"/> 
						Les <b>mots de passe</b> ne correspondent pas.
					</p>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/if}
				{if isset($mail_invalid)}
				<p class="error-message"><img src="{$URL_ASSETS}img/devtool/error.png" class="devtool"/> 
					L'adresse <b>email</b> est invalide.
				</p>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/if}
				{if isset($captcha)}
					<p class="error-message"><img src="{$URL_ASSETS}img/devtool/error.png" class="devtool"/> 
						Le <b>captcha</b> entr&eacute; est incorrect.
					</p>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/if}
				{if isset($success)}
					<p class="clean-message"><img src="{$URL_ASSETS}img/devtool/ok.png" class="devtool"/> 
						Votre compte a &eacute;t&eacute; <b>cr&eacute;&eacute;</b> avec succ&egrave;s.
					</p>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				{/if}
		<form method="post" action="{$URL}/user/register">
			<table width="94%" style="margin:8px 0px 8px 20px;">
				<tbody>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/joueur.png"> Nom de compte :
						</td>
						<td width="290">
							<input name="username" id="username" maxlength="32" value="" type="text" required>
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/construction.png"> Mot de passe :
						</td>
						<td>
							<input name="password" id="password" maxlength="40" value="" type="password" required>
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/construction.png"> Confirmez votre mot de passe :
						</td>
						<td>
							<input name="password_conf" id="password_conf" maxlength="40" value="" type="password" required>
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/user.png"> Pseudo :
						</td>
						<td>
							<input name="pseudo" id="pseudo" value="" type="text" required>
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/email_open.png"> Adresse E-mail :
						</td>
						<td>
							<input name="email" id="email" value="" type="text" required>
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/view.png"> Question secr&egrave;te :
						</td>
						<td>
							<input name="quest" id="quest" value="" type="text" required>
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/edit.png"> R&eacute;ponse secr&egrave;te :
						</td>
						<td>
							<input name="answ" id="answ" value="" type="text" required>
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/ip.png"> Code de s&eacute;curit&eacute; :
						</td>
						<td>
							<input name="captcha" id="captcha" value="" type="text" required> : <img title="" src="{$URL_ASSETS_GLOBAL}captcha.php">
						</td>
					</tr>
					<tr>
						<td>
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> C.G.U : <br />
							<small><a href="{$URL}/server/cgu">Lire les CGU</a></small>
						</td>
						<td>
							<input value="check[]" name="rule" type="checkbox"></a>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
								<input name="register" class="submit" value="Inscription !" type="submit">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
				<!--Fin interieur page -->
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
			</div>
{/block}