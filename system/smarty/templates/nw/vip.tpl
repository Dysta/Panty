{extends file="$THEME/layout.tpl"}
{block name=title}VIP{/block}
{block name=body}
<div id="contenu">
				<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<span>Devenir VIP</span>Devenir VIP 
				</div>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<!-- Début interieur page -->
				<p class="infos-message"><img src="{$URL_ASSETS}img/devtool/infos.png" class="devtool"/>
					Passer VIP coute <b>{$VIP_TOKENS}</b> points.
				</p>
				<br />
				<p class="vip-message"><img src="{$URL_ASSETS}img/devtool/star.png" class="devtool"/>
				<b>Être VIP vous permet de :</b><br><br>
					- Gagner <b>{$VIP_SHOP_TOKENS} points boutique au lieu de {$SHOP_TOKENS}</b> lors d'achat de points.<br />
					- Gagner <b>{$VIP_VOTE_TOKENS} points boutique au lieu de {$VOTE_TOKENS}</b> lors d'un vote.<br />
					- Obtenir une réduction de <b>{$VIP_RED}% sur la boutique</b>.
				</p>
				<br />
				<center>
					<a href="{$URL}/user/get_vip"><img src="{$URL_ASSETS}img/devtool/star.png"><input class="submit" name="change_message" value="Passer VIP" type="submit"><img src="{$URL_ASSETS}img/devtool/star.png"></a>
				</center>
				<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<!--Fin interieur page -->
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
</div>	
{/block}