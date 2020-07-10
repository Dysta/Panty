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
		<div class="caption">Top Guilde</div>
		<td class="text">
			<table>
			<tbody>
				<tr>
					<td width="5%"></td>
					<td width="70%">
						<center>
							<b>Nom</b>
						</center>
					</td>
					<td width="40%">
						<center>
							<b>Level</b>
						</center>
					</td>
					<td>
						<center>
							<b>Experience</b>
						</center>
					</td>
				</tr>
				{foreach from=$array_guilde item=guilde}
				<tr>
					<td>
						<center>
							{$guilde.pos}
						</center>
					</td>
					<td>
						<center>
							{$guilde.name}
						</center>
					</td>
					<td>
						<center>
							<b>{$guilde.lvl}</b>
						</center>
					</td>
					<td>
						<center>
							{$guilde.xp}
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