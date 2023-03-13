<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order_service extends Model
{
    use HasFactory;
    protected $fillable = [
        'id',
        'order_id ',
        'service_id ',
        'created_at ',
        'updated_at ',

    ];
}

