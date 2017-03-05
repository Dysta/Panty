{extends file="$THEME_ADMIN/layout.tpl"}
{block name=title}Gestion Info{/block}<br/>
{block name=body}
		<div class="col-md-10">
			<div class="row">
  				<div class="col-md-12">
  					<div class="content-box-large">
		  				<div class="panel-body">
							<center><h2>Compte de <b>{$user_data.pseudo}</b></h2></center>
		  				</div>
						{if isset($gm_changed)}
						<div class="alert alert-success">
							<b>Le GM a &eacute;t&eacute; <b>chang&eacute;</b> avec succ&egrave;s.</b>
						</div>
						{/if}
		  			</div>
  				</div>
			</div>
		  	<div class="row">
  				<div class="col-md-12">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-record"></i> Action</div>
						</div>
		  				<div class="panel-body">
							<center>
								{if $user_data.banni eq '1'}
								<a href="{$URL}/administration/unban_account/{$user_data.id}"><button class="btn btn-primary btn-lg">Debannir le compte</button></a>
								{else}
								<a href="{$URL}/administration/ban_account/{$user_data.id}"><button class="btn btn-danger btn-lg">Bannir le compte</button></a>
								{/if}
								<a href="{$URL}/administration/delete_account/{$user_data.id}"><button class="btn btn-danger btn-lg">Supprimer le compte</button></a>
							</center>
		  				</div>
		  			</div>
  				</div>
			</div>
			<div class="row">
  				<div class="col-md-12">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-refresh"></i> Changer le GM</div>
						</div>
		  				<div class="panel-body">
							<center>
								<form method="post">
									<div class="form-group">
										<label>Nouveau GM (GM actuelle : {$user_data.gm})</label>
										<input class="form-control" type="number" min="0" max="5" name="new_gm" value="{$user_data.gm}"/>
									</div>
									<input class="btn btn-primary" type="submit" value="Changer le GM" name="change_gm" />
								</form>
							</center>
		  				</div>
		  			</div>
  				</div>
			</div>
			<div class="row">
  				<div class="col-md-12">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-info-sign"></i> Information sur le compte</div>
						</div>
		  				<div class="panel-body">
							<div>
								<table id="user" class="table table-bordered table-striped" style="clear: both">
							        <tbody>
										<tr>
											<td style="width:200px">Nom de compte : </td>
											<td style="width:200px">{$user_data.account}</td>
										</tr>
										<tr>
											<td style="width:200px">Pseudo : </td>
											<td style="width:200px">{$user_data.pseudo}</td>
										</tr>
										<tr>
											<td style="width:200px">Rang : </td>
											<td style="width:200px">{$user_data.level}</td>
										</tr>
										<tr>
											<td style="width:200px">Statut : </td>
											<td style="width:200px">{if $user_data.banni eq '1'}Banni{else}Non banni{/if}</td>
										</tr>
										<tr>
											<td style="width:200px">Nombre de vote : </td>
											<td style="width:200px">{$user_data.nb_votes}</td>
										</tr>
										
										<tr>
											<td style="width:200px">Points disponible : </td>
											<td style="width:200px">{$user_data.tokens}</td>
										</tr>

										<tr>
											<td style="width:200px">Derniere Connection :</td>
											<td style="width:200px;">{$user_data.last_co}</td>
										</tr>	
									</tbody>
							    </table>
							</div>
		  				</div>
		  			</div>
  				</div>
			</div>
			<div class="row">
  				<div class="col-md-12">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-user"></i> Personnages</div>
						</div>
		  				<div class="panel-body">
		  					<table class="table table-bordered" style="text-align:center">
				              <thead>
								<tr>
								  <th style="text-align:center"><img title="Race" alt="Race" src="{$URL_ASSETS_GLOBAL}ico/heads/0.png"></th>
								  <th style="text-align:center">Pseudo</th>
								  <th style="text-align:center">Sexe</th>
								  <th style="text-align:center">Niveau</th>
								  <th style="text-align:center">Expérience</th>
								  <th style="text-align:center"><img title="Alignement" alt="Alignement" src="{$URL_ASSETS_GLOBAL}ico/heads/align/-1.png"></th>
								  <th style="text-align:center">Honneur</th>
								  <th style="text-align:center">Supprimer</th>
								</tr>
				              </thead>
				              <tbody>
								{foreach from=$chars_data item=player}
				                <tr>
				                  <td><img src="{$URL_ASSETS_GLOBAL}ico/heads/{$player.class}_{$player.sexe}.png"></td>
				                  <td><a href="{$URL}/user/view_character/{$player.id}" title="Voir la page de {$player.name}">{$player.name}</a></td>
				                  <td><img class="icon_li" src="{$URL_ASSETS_GLOBAL}devtool/{$player.sexe}.png"></td>
				                  <td>{$player.level}</td>
				                  <td>{$player.xp}</td>
				                  <td><img src="{$URL_ASSETS_GLOBAL}ico/heads/align/{$player.alignement}.png"></td>
								  <td>{$player.honor}</td>
				                  <td><a href="{$URL}/administration/delete_character/{$player.id}" title="Supprimer le personnage"><button class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-remove" style="margin-top:3px"></i></button></a></td>
				                </tr>
								{/foreach}
				              </tbody>
				            </table>
		  				</div>
		  			</div>
  				</div>
			</div>
		</div>
{/block}