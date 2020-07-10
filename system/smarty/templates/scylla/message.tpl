{extends file="$THEME/layout.tpl"}
{block name=title}{$title}{/block}
{block name=body}
<table>
	<tr>
		<div class="caption">{$title}</div>
		<td class="text">
			{$content}
		</td>
	</tr>
</table>
<br/>{/block}