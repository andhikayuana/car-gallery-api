<?php
// DIC configuration

$container = $app->getContainer();

// view renderer
$container['renderer'] = function ($c) {
    $settings = $c->get('settings')['renderer'];
    return new Slim\Views\PhpRenderer($settings['template_path']);
};

// monolog
$container['logger'] = function ($c) {
    $settings = $c->get('settings')['logger'];
    $logger = new Monolog\Logger($settings['name']);
    $logger->pushProcessor(new Monolog\Processor\UidProcessor());
    $logger->pushHandler(new Monolog\Handler\StreamHandler($settings['path'], Monolog\Logger::DEBUG));
    return $logger;
};

//db ::Yuana
$container['db'] = function($c){
    $settings = $c->get('settings')['db'];
    $driver   = $settings['driver'];
    $dbhost   = $settings['dbhost'];
    $dbuser   = $settings['dbuser'];
    $dbpass   = $settings['dbpass'];
    $dbname   = $settings['dbname'];
    $db = new PDO("$driver:host=$dbhost;dbname=$dbname",$dbuser, $dbpass);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $db;
};

//uploader ::Yuana
$container['uploader'] = function($c){
    $settings = $c->get('settings')['uploader'];
    return $settings;
};
