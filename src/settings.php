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
            'driver'   => 'pgsql',
            'dbhost'   => 'localhost',
            'dbuser'   => 'yuana',
            'dbpass'   => 'yuana',
            'dbname'   => 'cargallery',
        ],
        //uploader
        'uploader' => [
            'path' => __DIR__ . '/../public/uploader'
        ]
    ],
];
