{extends file="$THEME_ADMIN/layout.tpl"}
{block name=title}Gestion Logs{/block}<br/>
{block name=body}
		<div class="col-md-10">
		  	<div class="row">
  				<div class="col-md-12">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-plus-sign"></i> Log achat de point</div>
						</div>
		  				<div class="panel-body">
		  					<table class="table table-bordered" style="text-align:center">
				              <thead>
								<tr>
								  <th style="text-align:center">Nom de compte</th>
								  <th style="text-align:center">Date</th>
								</tr>
				              </thead>
				              <tbody>
								{foreach from=$array_token_log item=token_log}
				                <tr>
				                  <td>{$token_log.account}</td>
				                  <td>{$token_log.date}</td>
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
							<div class="panel-title"><i class="glyphicon glyphicon-plus-sign"></i> Log achat boutique</div>
						</div>
		  				<div class="panel-body">
		  					<table class="table table-bordered" style="text-align:center">
				              <thead>
								<tr>
								  <th style="text-align:center">Nom de compte</th>
								  <th style="text-align:center">Item</th>
								  <th style="text-align:center">Date</th>
								</tr>
				              </thead>
				              <tbody>
								{foreach from=$array_shop_log item=shop_log}
				                <tr>
				                  <td>{$shop_log.account}</td>
				                  <td>{$shop_log.item}</td>
				                  <td>{$shop_log.date}</td>
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