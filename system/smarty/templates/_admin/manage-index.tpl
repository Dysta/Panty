{extends file="$THEME_ADMIN/layout.tpl"}
{block name=title}Administration{/block}<br/>
{block name=body}
		<div class="col-md-10">
			{if isset($note_saved)}
			<div class="row">
  				<div class="col-md-12">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-check"></i> Note enregistré !</div>
						</div>
		  				<div class="panel-body">
							<div class="alert alert-success">
								<b>Votre note a été enregistré avec succès !</b>
							</div>
		  				</div>
		  			</div>
  				</div>
			</div>
			{/if}
			<div class="row">
  				<div class="col-sm-3">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-check"></i> Connecté :</div>
						</div>
		  				<div class="panel-body">
							<h1 style="text-align:center">{$logged}</h1>
		  				</div>
		  			</div>
  				</div>
				<div class="col-sm-3">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-th-large"></i> Guildes :</div>
						</div>
		  				<div class="panel-body">
							<h1 style="text-align:center">{$guilds}</h1>
		  				</div>
		  			</div>
  				</div>
				<div class="col-sm-3">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-cog"></i> Comptes :</div>
						</div>
		  				<div class="panel-body">
							<h1 style="text-align:center">{$accounts}</h1>
		  				</div>
		  			</div>
  				</div>
				<div class="col-sm-3">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-user"></i> Personnages :</div>
						</div>
		  				<div class="panel-body">
							<h1 style="text-align:center">{$characters}</h1>
		  				</div>
		  			</div>
  				</div>
			</div>
			{foreach from=$array_note item=note}
			<div class="row">
		  		<div class="col-md-12 panel-warning">
		  			<div class="content-box-header panel-heading">
	  					<div class="panel-title ">Note pour les admins (dernière modification par <b>{$note.author}</b>)</div>
		  			</div>
		  			<div class="content-box-large box-with-header">
						<form method="post">
							<fieldset>
								<div class="form-group">
									<textarea id="ckeditor" class="form-control" name="message" placeholder="Contenu de la note.." rows="3">
										{$note.content}
									</textarea>
								</div>
							</fieldset>
							<div>
								<input class="btn btn-primary" type="submit" value="Enregistrer les modifications" name="note" />
							</div>
						</form>
					</div>
		  		</div>
		  	</div>
			{/foreach}
		  </div>
{/block}