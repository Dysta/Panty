<?php
/***
 * Name:       	Panty
 * Revision :	9
 * About:      	CMS Gratuit pour l'émulation Dofus
 * Copyright:	(C) 2014
 * Author:	   	Ramlethal
 * Install:		Editez uniquement le fichier "Panty.php" situé dans "system/panty/configs" après avoir exécuté le fichier SQL sur votre BDD
 * Développé avec le framework TinyMVC, utilisant le moteur de template Smarty !
 * http://e-dofus.fr/
 ***/
/* directory separator alias */
if (!defined('DS'))
	define('DS', DIRECTORY_SEPARATOR);
/* set the base directory */
if (!defined('TMVC_BASEDIR'))
	define('TMVC_BASEDIR', __DIR__ . DS . 'system' . DS);
/* include Panty config */
require TMVC_BASEDIR . 'panty' . DS . 'configs' . DS . 'Panty.php';
/* PHP error reporting level, if different from default */
error_reporting(VIEW_ERROR);
/* starting sessions, for user login etc */
session_start();
/* define to 0 if you want errors/exceptions handled externally */
define('TMVC_ERROR_HANDLING', VIEW_ERROR);
/* set the rewrite url */
if (URL_REWRITING){
	if (!defined('TMVC_URL'))
		define('TMVC_URL', BASE_URL);
}else{
	if (!defined('TMVC_URL'))
		define('TMVC_URL', BASE_URL.'/index.php');
}
/* set the assets directory */
if (!defined('TMVC_ASSDIR'))
	define('TMVC_ASSDIR', BASE_URL . '/assets/');
require TMVC_BASEDIR . 'sysfiles' . DS . 'TinyMVC.php';
/* instantiate */
$tmvc = new tmvc();
$tmvc->main();