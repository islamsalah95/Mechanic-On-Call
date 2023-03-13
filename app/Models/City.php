<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    use HasFactory;


    protected $fillable = [
        'id',
        'city',
    ];




    public function Micanic()
    {
         return $this->hasMany(Micanic::class,'city_id'); ; 
    }
}
