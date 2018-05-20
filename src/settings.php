<?php
return [
    'settings' => [
        'displayErrorDetails' => true,

        // Renderer settings
        'renderer' => [
            'template_path' => __DIR__ . '/../templates/',
        ],

        // Monolog settings
        'logger' => [
            'name' => 'slim-app',
            'path' => __DIR__ . '/../logs/app.log',
        ],

        //db ::Yuana
        'db' => [
            'driver'   => 'mysql',
            'dbhost'   => '127.0.0.1',
            'dbuser'   => 'root',
            'dbpass'   => 'programmer',
            'dbname'   => 'db_rest',
        ],
        //uploader
        'uploader' => [
            'path' => __DIR__ . '/../public/uploader'
        ]
    ],
];
