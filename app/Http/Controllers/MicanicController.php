<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Mail\RateOrder;
use App\Models\Micanic;
use App\Traits\ApiTraits;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use App\Http\Requests\StoreMicanicRequest;
use App\Http\Requests\UpdateMicanicRequest;

class MicanicController extends Controller
{
  
    public function closeOrder($orderId)
    { 
        $user=Auth::guard('sanctum')->user();

        $results= Order::
         where('id',$orderId)
        ->where('status','open')
        ->where('micanic_id', $user->id)
        ->update(['status'=>'close']);
        Micanic::where('id',$user->id)->update(['status' => 'Avilable']);

        // send emal rating link
        $orserUser=Order::find($orderId) ;
        $orserUser=$orserUser->User;
        $orserUser->email;
        Mail::to($orserUser)->send(new RateOrder());

        return ApiTraits::data(compact('results'),'results success');

    }


    public function allMicanics()
    {
        
        $results=Micanic::all();

        return ApiTraits::data(compact('results'),'results success');

    }


    public function changeMicanicStatus(Request $request,$micanicId)
    {

        $request->validate([
            'status_working' =>Rule::in(['accept', 'block']),
        ]);

        $results=Micanic::where('id',$micanicId)->update(['status_working' => $request->status_working]);

        return ApiTraits::data(compact('results'),'results success');

    }


    public function BusyMicanic($micanicId)
    {
        $results = Micanic::where('id',$micanicId)->first();
        $results= $results->Order;
          $avilablty=true;
        foreach ($results as $result ) {
        if ($result->status=='open' ) {
            $avilablty=false;
            break ;
        }

        }

            // dd($avilablty);
            
            return ApiTraits::data(compact('avilablty'),'results success');

                           
    }

    public function micanicCloseOrders()
    {
         $auth=Auth::guard('sanctum')->user();
        $results = Order::where('micanic_id',$auth->id)->where('status','close')->get();
         return ApiTraits::data(compact('results'),'results success');

    }

    //     public function chickMicanicAvilabilty()
    // {
    //      $auth=Auth::guard('sanctum')->user();
    //     $results = Order::where('micanic_id',$auth->id)->get();
    //      return ApiTraits::data(compact('results'),'results success');

    // }


    
}
