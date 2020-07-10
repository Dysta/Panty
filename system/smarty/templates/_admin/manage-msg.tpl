{extends file="$THEME_ADMIN/layout.tpl"}
{block name=title}Gestion Message{/block}<br/>
{block name=body}
		<div class="col-md-10">
		  	<div class="row">
  				<div class="col-md-12">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-comment"></i> Commentaire publié</div>
						</div>
		  				<div class="panel-body">
		  					<table class="table table-bordered" style="text-align:center">
				              <thead>
								<tr>
								  <th style="text-align:center">News ID</th>
								  <th style="text-align:center">Auteur</th>
								  <th style="text-align:center">Contenu</th>
								  <th style="text-align:center">Action</th>
								</tr>
				              </thead>
				              <tbody>
								{foreach from=$array_comments item=comments}
				                <tr>
				                  <td><a href="{$URL}/news/view/{$comments.news_id}" title="Voir la news n°{$comments.news_id}">{$comments.news_id}</a></td>
				                  <td>{$comments.author}</td>
				                  <td>{$comments.content}</td>
				                  <td><a href="{$URL}/administration/delete_comment/{$comments.id}" title="Supprimer le commentaire"><button class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-remove" style="margin-top:3px"></i></button></a></td>
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
							<div class="panel-title"><i class="glyphicon glyphicon-wrench"></i> Bug publié</div>
						</div>
		  				<div class="panel-body">
		  					<table class="table table-bordered" style="text-align:center">
				              <thead>
								<tr>
								  <th style="text-align:center">Importance</th>
								  <th style="text-align:center">Auteur</th>
								  <th style="text-align:center">Contenu</th>
								  <th style="text-align:center">Action</th>
								</tr>
				              </thead>
				              <tbody>
							  {foreach from=$array_bug item=bug}
				                <tr>
				                  <td><img src="{$URL_ASSETS_GLOBAL}devtool/flag_{$bug.type}.png"></td>
				                  <td>{$bug.author}</td>
				                  <td>{$bug.content}</td>
				                  <td><a href="{$URL}/administration/delete_bug/{$bug.id}" title="Supprimer le commentaire"><button class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-remove" style="margin-top:3px"></i></button></a></td>
				                </tr>
				              </tbody>
							  {/foreach}
				            </table>
		  				</div>
		  			</div>
  				</div>
			</div>
		</div>
{/block}