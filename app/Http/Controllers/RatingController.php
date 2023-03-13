<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Rating;
use App\Models\Micanic;
use App\Traits\ApiTraits;
use Illuminate\Support\Arr;
use Illuminate\Http\Request;
use App\Http\Resources\RateResource;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\StoreRatingRequest;

class RatingController extends Controller
{


    public function store(StoreRatingRequest $request)
    {
         $auth=Auth::guard('sanctum')->user();
         $order=Order::where('status','close')->where('user_id',$auth->id)->orderBy('created_at', 'desc')->first();
         $alreadyRate=Rating::where('user_id',$auth->id)->where('order_id',$order->id)->first();

if($alreadyRate){
  return ApiTraits::errorMessage('alraedy rate before');
}else{
  $rate = new Rating;
  $rate->user_id =$auth->id;
  $rate->user_name =$auth->name;
  $rate->micanic_id =$order->micanic_id;
  $rate->order_id =$order->id;
  $rate->rate = $request->rate;
  $rate->comment = $request->comment;
  $rate->save();
return ApiTraits::data(compact('rate'),'results success');
}





    }





    // public function show()
    // {
    //      $auth=Auth::guard('sanctum')->user();

    //     $results = Rating::where('user_id',$auth->id)->get();
    
    //      return ApiTraits::data(compact('results'),'results success');
    // }


    public function allMicanicsRating()
    {
      $auth=Auth::guard('sanctum')->user();
      $micanics=Micanic::all();
      $results=[];

      foreach ($micanics as $micanic) {
        $rate=Rating::where('micanic_id',$micanic->id)->avg("rate");
        $newArray = array('personal_img'=>$micanic->personal_img,'id'=>$micanic->id,'name'=>$micanic->name,'email'=>$micanic->email,'status_working'=>$micanic->status_working,'rate'=>round($rate,1));
        array_push($results, $newArray);
      }
  
       return ApiTraits::data(compact('results'),'results success');
  }



    // public function allMicanicsRatingByCity($cityId)
    // {
    //     $auth=Auth::guard('sanctum')->user();
    //     $micanics=Micanic::where('city_id' , $cityId)->get();
    //     $results=[];
  
    //     foreach ($micanics as $micanic) {
    //       $rate=Rating::where('micanic_id',$micanic->id)->get();
    //       // dd($rate[0]);
    //       $newArray = array('id'=>$micanic->id,'name'=>$micanic->name,'rate'=>RateResource::collection($rate));
    //       array_push($results, $newArray);
    //     }
    
    //      return ApiTraits::data(compact('results'),'results success');
    // }
    



    public function allMicanicsRatingByCity($cityId)
    {
        $auth=Auth::guard('sanctum')->user();
        $micanics=Micanic::where('city_id' , $cityId)->get();
        $results=[];
  
        foreach ($micanics as $micanic) {
          $rate=Rating::where('micanic_id',$micanic->id)->avg("rate");

if ( $micanic->status_working == 'underInvestigation'||$micanic->status_working == 'block'   ) {continue ;}

          $newArray = array('id'=>$micanic->id,'name'=>$micanic->name,'status'=>$micanic->status,'rate'=>round($rate,1));
          array_push($results, $newArray);
        }
    
         return ApiTraits::data(compact('results'),'results success');
    }


    // public function delete($orderId)
    // {
    //     $results = Rating::find($orderId);
    //     if($results==null){
    //         return  ApiTraits::errorMessage('you have error');
    //     }else{
    //         $results->delete();
    //         return ApiTraits::data(compact('results'),'results success');
    //     }

    // }
}
