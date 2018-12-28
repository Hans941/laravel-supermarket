<?php

return [
    'alipay' => [
        'app_id'         => env("ALIPAY_APP_ID"),
        'ali_public_key' => env("ALIPAY_PUBLIC_KEY"),
        'private_key'    => env("ALIPAY_PRIVATE_KEY"),
        'log'            => [
            'file' => storage_path('logs/alipay.log'),
        ],
    ],
];