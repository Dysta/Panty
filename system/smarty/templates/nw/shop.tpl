{extends file="$THEME/layout.tpl"}
{block name=title}Boutique{/block}
{block name=body}
<div id="contenu">
				<img src="{$URL_ASSETS}img/global/topContenu.png"/> 
					<div id="title">
						<span>Boutique</span>Boutique 
					</div>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					<div id="shop-menu">
						<div id="price">{$smarty.session.tokens}</div>
						<div id="liste">
							<a href="{$URL}/shop/cat/1"><div class="line_impair"><span>Chapeau</span></div></a>
							<a href="{$URL}/shop/cat/2"><div class="line_pair"><span>Cape</span></div></a>
							<a href="{$URL}/shop/cat/3"><div class="line_impair"><span>Amulette</span></div></a>
							<a href="{$URL}/shop/cat/4"><div class="line_pair"><span>Anneau</span></div></a>
							<a href="{$URL}/shop/cat/5"><div class="line_impair"><span>Ceinture</span></div></a>
							<a href="{$URL}/shop/cat/6"><div class="line_pair"><span>Botte</span></div></a>
							<a href="{$URL}/shop/cat/7"><div class="line_impair"><span>Armes</span></div></a>
							<a href="{$URL}/shop/cat/8"><div class="line_pair"><span>Bouclier</span></div></a>
							<a href="{$URL}/shop/cat/9"><div class="line_impair"><span>Familier</span></div></a>
							<a href="{$URL}/shop/cat/10"><div class="line_pair"><span>Autre</span></div></a>
						</div>
					</div>
					<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
					{foreach from=$items item=item}
					<div id="shop-item">
						<b class="titre-obj">{$item.name}</b>
						<b class="lvl-obj">Nv.{$item.level}</b>
						<span class="pods-obj">{$item.pods}</span>
						<b class="prix-obj">{$item.sold}</b>
						<a class="buy" href="{$URL}/shop/item/{$item.id}"></a>
						<img width="90" height="90" style="position:absolute;margin-top: 65px; margin-left: 18px;" src="{$URL_ASSETS_GLOBAL}items/{$item.id}.png">
						<div id="effet" >
							<div class="effet">
								{$item.stats}
							</div> 
						</div>
						<div id="description">
							Panoplie : {$item.panoplie}
						</div>
					</div>
					{/foreach}
				<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
			</div>
{/block}