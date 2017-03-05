<!DOCTYPE html>
<html>
  <head>
    <title>Panty Admin Panel - {block name=title}Default Page Title{/block}{if $MAINTENANCE==TRUE} (MAINTENANCE){/if}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- jQuery UI -->
    <link href="https://code.jquery.com/ui/1.10.3/themes/redmond/jquery-ui.css" rel="stylesheet" media="screen">
	<script src="{$URL_ASSETS_GLOBAL}ckeditor/ckeditor.js"></script>
    <!-- Bootstrap -->
    <link href="{$URL_ASSETS_ADMIN}bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="{$URL_ASSETS_ADMIN}css/styles.css" rel="stylesheet">
	
	<link rel="icon" type="image/png" href="{$URL_ASSETS_ADMIN}images/favicon.ico" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  	<div class="header">
	     <div class="container">
	        <div class="row">
	           <div class="col-md-5">
	              <!-- Logo -->
	              <div class="logo">
	                 <h1><a href="{$URL}/administration/index">Panty Admin Panel</a></h1>
	              </div>
	           </div>
	           <div class="col-md-7">
	              <div class="navbar navbar-inverse" role="banner">
	                  <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
	                    <ul class="nav navbar-nav">
	                      <li class="dropdown">
	                        <a class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i> Bonjour {$smarty.session.pseudo} </a>
	                      </li>
	                    </ul>
	                  </nav>
	              </div>
	           </div>
	        </div>
	     </div>
	</div>

    <div class="page-content">
    	<div class="row">
		  <div class="col-md-2">
		  	<div class="sidebar content-box" style="display: block;">
                <ul class="nav">
                    <!-- Main menu -->
                    <li class="current"><a href="{$URL}/administration/index"><i class="glyphicon glyphicon-home"></i> Accueil</a></li>
                    <li class="current"><a href="{$URL}/news/index"><i class="glyphicon glyphicon-log-out"></i> Retour au site</a></li>
                </ul>
            </div>
		  	<div class="sidebar content-box" style="display: block;">
                <ul class="nav">
                    <!-- Main menu -->
                    <li><a href="{$URL}/administration/news"><i class="glyphicon glyphicon-comment"></i> Gestion news</a></li>
                    <li><a href="{$URL}/administration/shop_items"><i class="glyphicon glyphicon-shopping-cart"></i> Gestion shop</a></li>
                    <li><a href="{$URL}/administration/message"><i class="glyphicon glyphicon-list-alt"></i> Gestion message</a></li>
                    <li><a href="{$URL}/administration/logs"><i class="glyphicon glyphicon-list"></i> Gestion log</a></li>
                    <li><a href="{$URL}/administration/account"><i class="glyphicon glyphicon-user"></i> Gestion compte</a></li>
                </ul>
             </div>
		  </div>
		  {block name=body}{/block}
		</div>
    </div>

    <footer>
         <div class="container">
         
            <div class="copy text-center">
               &copy; <a href="https://github.com/Dysta40/PantyCMS" target="_blank">PantyCMS</a> - {$TITLE}
            </div>
            
         </div>
      </footer>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
	<!-- jQuery UI -->
    <script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="{$URL_ASSETS_ADMIN}bootstrap/js/bootstrap.min.js"></script>
	
	<script>
		CKEDITOR.replace( 'ckeditor' );
    </script>
  </body>
</html>