{extends file="$THEME/layout.tpl"}
{block name=title}Encyclopédie{/block}
{block name=body}
<table>
	<tr>
		<div class="caption">Recherche d'objet</div>
		<td class="text">
			<div style="margin:auto;width:570px;height:210px;background:url('{$URL_ASSETS}images/Bg_RechE.png');">
				<div style="position:absolute; margin-top:32px; margin-left:1px;height:176px; width:568px;overflow-y:scroll;">
					{foreach from=$array_items item=item}
					<a href="{$URL}/encyclopedia/view/{$item.id}">
						<div class="bb"><span style="position:absolute;margin-left: 5px;margin-top: 6px;font-size:14px;color:#514a3c;">{$item.name}</span><img width="21" height="21" style="float:right;margin-top:5px;margin-right:5px;" src="{$URL_ASSETS_GLOBAL}items/{$item.id}.png"></div>
					</a>
					{/foreach}
				</div>
			</div>
		</td>
	</tr>
</table>
<br/>
{/block}