{extends file="$THEME_ADMIN/layout.tpl"}
{block name=title}{$title}{/block}<br/>
{block name=body}
		<div class="col-md-10">
			<div class="row">
				<div class="col-md-12">
					<div class="content-box-large">
						<div class="panel-heading">
							<div class="panel-title"><i class="glyphicon glyphicon-info-sign"></i> {$title}</div>
						</div>
						<div class="panel-body">
							<div class="alert alert-info">
								<b>{$content}</b>
							</div>
							<hr />
							<center>
								<div class="row">
									<a href="javascript:history.go(-1)"><button type="button" class="btn btn-default btn-lg">Retour à la page précédente</button></a>
									<a href="{$URL}/administration/index"><button type="button" class="btn btn-default btn-lg">Retour à la page d'accueil</button></a>
								</div>
							</center>
						</div>
					</div>
				</div>
			</div>
		</div>
{/block}