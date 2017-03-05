{extends file="$THEME_ADMIN/layout.tpl"}
{block name=title}Gestion News{/block}<br/>
{block name=body}
		<div class="col-md-10">
		  	<div class="row">
  				<div class="col-md-12">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-check"></i> News publié</div>
						</div>
		  				<div class="panel-body">
							{if isset($news_added)}
							<div class="alert alert-success">
								<b>Votre news a été posté avec succès !</b>
							</div>
							{/if}
		  					<table class="table table-bordered" style="text-align:center">
				              <thead>
								<tr>
								  <th style="text-align:center">Titre</th>
								  <th style="text-align:center">Auteur</th>
								  <th style="text-align:center">Type</th>
								  <th style="text-align:center">Action</th>
								</tr>
				              </thead>
				              <tbody>
								{foreach from=$array_news item=news}
				                <tr>
				                  <td>{$news.title}</td>
				                  <td>{$news.author}</td>
				                  <td><img src="{$URL_ASSETS_GLOBAL}devtool/news/{$news.type}.png"></td>
				                  <td><a href="{$URL}/administration/delete_new/{$news.id}" title="Supprimer la news"><button class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-remove" style="margin-top:3px"></i></button></a></td>
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
							<div class="panel-title"><i class="glyphicon glyphicon-pencil"></i> Poster une news</div>
						</div>
						<div class="panel-body">
							<form method="post">
								<fieldset>
									<div class="form-group">
										<label>Titre</label>
										<input class="form-control" name="title" placeholder="Titre de la news" type="text">
									</div>
									<div class="form-group">
										<label>Contenu de la news</label>
										<textarea id="ckeditor" class="form-control" name="message" placeholder="Contenu de la news.." rows="3"></textarea>
									</div>
									<div class="form-group">
										<label>Type de la news</label>
										<select class="form-control" name="type">
											<OPTION VALUE="0">Global</OPTION>
											<OPTION VALUE="1">Maintenance</OPTION>
											<OPTION VALUE="2">Bug/R&eacute;solution de bug</OPTION>
											<OPTION VALUE="3">D&eacute;veloppement</OPTION>
											<OPTION VALUE="4">Boutique/Promotions</OPTION>
											<OPTION VALUE="5">Cadeau/Bonus/Events</OPTION>
										</select> 
									</div>
								</fieldset>
								<center>
									<div>
										<input class="btn btn-primary" type="submit" value="Poster la news" name="news" />
									</div>
								</center>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
{/block}