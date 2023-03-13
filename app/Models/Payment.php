<?php

namespace App\Models;

use App\Models\Order;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Payment extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'total_price',
        'order_id',
        'created_at',
        'updated_at',

    ];

    public function Order()
    {
         return $this->belongsTo(Order::class, 'order_id'); 

    }

    
   
}
