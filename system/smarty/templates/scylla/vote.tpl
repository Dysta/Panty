{extends file="$THEME/layout.tpl"}
{block name=title}{$title}{/block}
{block name=body}
<table>
	<tr>
		<div class="caption">{$title}</div>
		<td class="text">
			{$content}
		<br /><br />
		<center>
			<a href="{$VOTE_URL}" target="_blank" class="btn btn-danger">Voter quand même !</a>
		</center>
		</td>
	</tr>
</table>
<br/>{/block}