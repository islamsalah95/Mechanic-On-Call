<?php

namespace App\Models;

use App\Models\Order;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Service extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'name',
        'price',
        
    ];


    public function Order()
    {
      return $this->belongsToMany(Order::class,'Order_services','order_id','service_id');

    }

}
