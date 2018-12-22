<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    protected $fillable = [
        'name', 'email', 'password', 'email_verified',
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];


    // $user->email_verified会默认输出boolean值
    protected $casts = [
        'email_verified' => 'boolean',
    ];

}