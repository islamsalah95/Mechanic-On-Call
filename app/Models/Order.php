<?php

namespace App\Models;
use App\Models\Payment;
use App\Models\User;
use App\Models\Micanic;
use App\Models\Service;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Order extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'micanic_id',
        'user_id',
        'status',
        'Latitude',
        'longitude',

    ];

    public function Micanic()
    {
         return $this->belongsTo(Micanic::class, 'micanic_id'); 

    }

    public function User()
    {
         return $this->belongsTo(User::class, 'user_id'); 
    }


    public function Payment()
    {
      return $this->hasOne(Payment::class, 'order_id');
    }
    

    public function Rating()
    {
         return $this->hasOne(Rating::class, 'order_id'); 

    }


    public function Service()
    {
      return $this->belongsToMany(Service::class,'Order_services','order_id','service_id');

    }

}




