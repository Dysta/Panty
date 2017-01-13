{extends file="$THEME/layout.tpl"} {block name=title}Enregistrement{/block} 
{block name=body}
{if isset($champs)}
<li class="news-row">
	<h2><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</h2>
	<div class="news-text">
		Tous les champs doivent &ecirc;tre <b>compl&eacute;t&eacute;s</b>.<br>
	</div>
</li>
{/if}
{if isset($alreadyused)}
<li class="news-row">
	<h2><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</h2>
	<div class="news-text">
		Le <b>nom de compte</b>, le <b>pseudonyme</b> ou <b>l'email</b> est d&eacute;j&agrave; utilis&eacute;.<br>
	</div>
</li>
{/if}
{if isset($password)}
<li class="news-row">
	<h2><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</h2>
	<div class="news-text">
		Les <b>mots de passe</b> ne correspondent pas.<br>
	</div>
</li>
{/if}
{if isset($mail_invalid)}
<li class="news-row">
	<h2><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</h2>
	<div class="news-text">
		L'adresse <b>email</b> est invalide.<br>
	</div>
</li>
{/if}
{if isset($captcha)}
<li class="news-row">
	<h2><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</h2>
	<div class="news-text">
		Le <b>captcha</b> entr&eacute; est incorrect.<br>
	</div>
</li>
{/if}
{if isset($success)}
<li class="news-row">
	<h2><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/clean.png"> F&eacute;licitation !</h2>
	<div class="news-text">
		Votre compte a &eacute;t&eacute; <b>cr&eacute;&eacute;</b> avec succ&egrave;s.<br>
	</div>
</li>
{/if}
<li class="news-row">
	<h2>Enregistrement</h2>
	<div class="news-text">
		<form method="post" action="{$URL}/user/register">
			<table>
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
							<img title="" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> C.G.U :
						</td>
						<td>
							<input value="check[]" name="rule" type="checkbox"><a href="{$URL}/server/cgu" required><img title="Attention, lire attentivement &amp; accepter les C.G.U !" width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/help.png"></a>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<center>
								<input name="register" class="inscrire" value="Inscription !" type="submit">
							</center>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</li>
{/block}