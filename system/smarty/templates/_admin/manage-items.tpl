{extends file="$THEME_ADMIN/layout.tpl"}
{block name=title}Gestion Shop{/block}<br/>
{block name=body}
		<div class="col-md-10">
		  	<div class="row">
  				<div class="col-md-12">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-check"></i> Item publié</div>
						</div>
		  				<div class="panel-body">
							{if isset($item_added)}
							<div class="alert alert-success">
								<b>Votre item a été ajouté avec succès !</b>
							</div>
							{/if}
		  					<table class="table table-bordered" style="text-align:center">
				              <thead>
								<tr>
								  <th style="text-align:center">Item</th>
								  <th style="text-align:center">Niveau</th>
								  <th style="text-align:center">Prix</th>
								  <th style="text-align:center">Prix VIP</th>
								  <th style="text-align:center">Action</th>
								</tr>
				              </thead>
				              <tbody>
								{foreach from=$array_items item=item}
				                <tr>
				                  <td>{$item.name}</td>
				                  <td>{$item.level}</td>
				                  <td>{$item.sold}</td>
				                  <td>{$item.sold_vip}</td>
				                  <td><a href="{$URL}/administration/delete_shop_items/{$item.id}" title="Supprimer l'item"><button class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-remove" style="margin-top:3px"></i></button></a></td>
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
							<div class="panel-title"><i class="glyphicon glyphicon-plus"></i> Ajouter un item</div>
						</div>
						<div class="panel-body">
							<form action="" method="post">
								<fieldset>
									<div class="form-group">
										<label>ID Item</label>
										<input class="form-control" name="id_item" placeholder="ID de votre item" type="text">
									</div>
									<div class="form-group">
										<label>Prix Item</label>
										<input class="form-control" name="price_item" placeholder="Prix de votre item" type="text">
									</div>
								</fieldset>
								<center>
									<div>
										<input class="btn btn-primary" type="submit" value="Ajouter un item" name="news" />
									</div>
								</center>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
{/block}