<?php

namespace App\Models;

use App\Models\User;
use App\Models\Order;
use App\Models\Micanic;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Rating extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'user_id',
        'user_name',
        'micanic_id',
        'order_id',
        'rate',
        'comment',
        'created_at',
        'updated_at',

    ];

    public function User()
    {
         return $this->belongsTo(User::class, 'user_id'); 
    }

    public function Micanic()
    {
         return $this->belongsTo(Micanic::class, 'micanic_id'); 

    }

    public function Order()
    {
         return $this->belongsTo(Order::class, 'order_id'); 

    }






}


