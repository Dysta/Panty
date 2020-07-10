{extends file="$THEME/layout.tpl"}
{block name=title}Ladder{/block}<br/>
{block name=body}
<li class="news-row">
	<h2>Classement Guilde</h2>
	<br />
	<center>
		<a href="{$URL}/server/ladder_pvm"><input class="color_input_sub" value="Ladder PVM" type="submit"/></a>
		<a href="{$URL}/server/ladder_pvp"><input class="color_input_sub" value="Ladder PVP" type="submit"/></a>
		<a href="{$URL}/server/ladder_guilde"><input class="color_input_sub" value="Ladder Guilde" type="submit"/></a>
		<a href="{$URL}/server/ladder_vote"><input class="color_input_sub" value="Ladder Vote" type="submit"/></a>
	</center>
	<div class="news-text">
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
	</div>
</li>
{/block}