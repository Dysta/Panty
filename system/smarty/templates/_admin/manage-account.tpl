{extends file="$THEME_ADMIN/layout.tpl"}
{block name=title}Gestion Compte{/block}<br/>
{block name=body}
		<div class="col-md-10">
		  	<div class="row">
  				<div class="col-md-12">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-ok"></i> Compte non banni</div>
						</div>
		  				<div class="panel-body">
		  					<table class="table table-bordered" style="text-align:center">
				              <thead>
								<tr>
								  <th style="text-align:center">Nom de compte</th>
								  <th style="text-align:center">Pseudo</th>
								  <th style="text-align:center">Rang</th>
								  <th style="text-align:center">Action</th>
								</tr>
				              </thead>
				              <tbody>
								{foreach from=$array_account_unban item=account_unban}
				                <tr>
				                  <td>{$account_unban.account}</td>
				                  <td>{$account_unban.pseudo}</td>
				                  <td>{$account_unban.rang}</td>
				                  <td><a href="{$URL}/administration/manage_account/{$account_unban.id}" title="Gestion du compte n°{$account_unban.id}"><button class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-pencil" style="margin-top:3px"></i></button></a></td>
				                </tr>
								{/foreach}
				              </tbody>
				            </table>
		  				</div>
		  			</div>
  				</div>
			</div>
			<div class="row">
  				<div class="col-md-12">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-remove"></i> Compte banni</div>
						</div>
		  				<div class="panel-body">
		  					<table class="table table-bordered" style="text-align:center">
				              <thead>
								<tr>
								  <th style="text-align:center">Nom de compte</th>
								  <th style="text-align:center">Pseudo</th>
								  <th style="text-align:center">Rang</th>
								  <th style="text-align:center">Action</th>
								</tr>
				              </thead>
				              <tbody>
								{foreach from=$array_account_ban item=account_ban}
				                <tr>
				                  <td>{$account_ban.account}</td>
				                  <td>{$account_ban.pseudo}</td>
				                  <td>{$account_ban.rang}</td>
				                  <td><a href="{$URL}/administration/manage_account/{$account_ban.id}" title="Gestion du compte n°{$account_ban.id}"><button class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-pencil" style="margin-top:3px"></i></button></a></td>
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