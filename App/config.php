<?php

define('BASE_DIR', dirname(__FILE__, 2));
define('VIEWS', BASE_DIR . '/App/View');

$_ENV['db']['host'] = "Server_Biblioteca:3306";
$_ENV['db']['user'] = "root";
$_ENV['db']['pass'] = "root";
$_ENV['db']['database'] = "minha_app";