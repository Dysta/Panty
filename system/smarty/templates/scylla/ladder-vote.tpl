{extends file="$THEME/layout.tpl"}
{block name=title}Ladder{/block}<br/>
{block name=body}
<center>
	<a href="{$URL}/server/ladder_pvm" class="btn btn-danger">Classement PVM</a>
	<a href="{$URL}/server/ladder_pvp" class="btn btn-danger">Classement PVP</a>
	<a href="{$URL}/server/ladder_guilde" class="btn btn-danger">Classement Guilde</a>
	<a href="{$URL}/server/ladder_vote" class="btn btn-danger">Classement Vote</a>
</center>
<br />
<table>
	<tr>
		<div class="caption">Top Vote</div>
		<td class="text">
			<table>
			<tbody>
				<tr>
					<td width="5%"></td>
					<td width="700%">
						<center>
							<b>Pseudo</b>
						</center>
					</td>
					<td width="40%">
						<center>
							<b>Votes</b>
						</center>
					</td>
				</tr>
				{foreach from=$array_vote item=vote}
				<tr>
					<td>
						<center>
							{$vote.pos}
						</center>
					</td>
					<td>
						<center>
							<a href="{$URL}/user/view_account/{$vote.id}"><b>{$vote.pseudo}</b></a>
						</center>
					</td>
					<td>
						<center>
							{$vote.votes}
						</center>
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
		</td>
	</tr>
</table>
{/block}