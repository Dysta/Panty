<?php
/**
 * database.php
 *
 * application database configuration
 *
 * NE PAS MODIFIER SI VOUS NE SAVEZ PAS CE QUE VOUS FAITES !
 *
 * @package		TinyMVC
 * @author		Monte Ohrt
 */
$config['default']['plugin']     = 'TinyMVC_PDO'; // plugin for db access
$config['default']['type']       = 'mysql'; // connection type
$config['default']['host']       = DB_HOST; // db hostname
$config['default']['name']       = DB_NAME; // db name
$config['default']['user']       = DB_USER; // db username
$config['default']['pass']       = DB_PASSWORD; // db password
$config['default']['persistent'] = true; // db connection persistence?