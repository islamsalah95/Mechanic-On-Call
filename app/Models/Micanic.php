<?php
namespace App\Models;
use App\Models\City;
use App\Models\Order;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Micanic extends Model
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'nid_img',
        'cert_img',
        'personal_img',
        'email',
        'password',
        'code',
        'city_id ',
        'type',
        'status',

    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    public function Order()
    {
        return $this->hasMany(Order::class,'micanic_id');
    }

    public function Rating()
    {
         return $this->hasMany(Rating::class, 'micanic_id'); 
    }

    public function City()
    {
         return $this->belongsTo(City::class, 'city_id'); 
    }

}
