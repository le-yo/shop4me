<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Driver extends Model
{
    protected $connection = 'mysql2';
    public $timestamps = false;
}
