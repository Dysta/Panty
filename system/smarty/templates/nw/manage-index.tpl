{extends file="$THEME/layout.tpl"}
{block name=title}Administration{/block}<br/>
{block name=body}
		<div id="contenu">
			<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
				<div id="title">
					<span>Administration</span>Administration
				</div>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<center>
						<a href="{$URL}/administration/news"><input class="submit" type="submit" value="Gestion News" /></a>
						<a href="{$URL}/administration/shop_items"><input class="submit" type="submit" value="Gestion Boutique" /></a>
						<a href="{$URL}/administration/account"><input class="submit" type="submit" value="Gestion Comptes" /></a>
						<a href="{$URL}/administration/message"><input class="submit" type="submit" value="Gestion Message" /></a>
						<a href="{$URL}/administration/logs"><input class="submit" type="submit" value="Gestion Logs" /></a>
					</center>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
		</div>
{/block}