{extends file="$THEME_ADMIN/layout.tpl"}
{block name=title}Administration{/block}<br/>
{block name=body}
		<div class="col-md-10">
		  	<div class="row">
		  		<div class="col-md-12">
		  			<div class="row">
		  				<div class="col-md-12">
		  					<div class="content-box-header">
			  					<div class="panel-title">Bienvenue sur Panty Admin</div>
				  			</div>
				  			<div class="content-box-large box-with-header">
								<b>Bonjour {$smarty.session.pseudo} !</b> 
								<br /><br />
								Bienvenue sur le panel d'administration de Panty ! Ce panel est disponible pour les membres du staff autorisé. Pour changer le <b>GMLVL_ADMIN nécéssaire</b> pour acceder à cette page, rendez-vous dans la configuration de Panty et cherchez <b>GMLVL_ADMIN</b>.
								<br />
								Sur votre droite, vous avez toutes les catégories qui vous permettrons de gérer votre serveur de façon la plus optimisé possible !
								<br />
								Le <b>template du panel est indépendant au thème</b>, vous pouvez mettre le thème que vous voulez sur votre site, le panel sera toujours le même ! 
								<br /><br />
								Je vous souhaite une bonne utilisation du CMS et de ce panel !
								<br />
								<h2><center><a href="https://github.com/Dysta40/PantyCMS" target="_blank" title="Panty GitHub">Panty CMS</a></center></h2>
							</div>
		  				</div>
		  			</div>
		  		</div>
		  	</div>
			<div class="row">
		  		<div class="col-md-12 panel-warning">
		  			<div class="content-box-header panel-heading">
	  					<div class="panel-title ">Note pour les admins</div>
						<div class="panel-options">
							<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
							<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
						</div>
		  			</div>
		  			<div class="content-box-large box-with-header">
			  			Cette box sert de message pour les admins ou de note personnel pour plus tard.
						<br />
						Pour l'éditer, rendez-vous dans <b>CHEMIN</b> et cherchez <b>Note pour les admins</b>
						<br /><br />
						Je vais essayer de faire en sorte que la note soit éditable et en SQL donc fonctionnement automatique. Ou alors en JavaScript !
						<br />
						Encore une fois, bonne utilisation du panel !
					</div>
		  		</div>
		  	</div>
		  </div>
{/block}