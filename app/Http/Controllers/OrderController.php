<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Order;
use App\Events\NewOrd;
use App\Models\Micanic;
use App\Models\Service;
use App\Traits\ApiTraits;
use App\Events\MicanicEvent;
use App\Models\Order_service;
use App\Traits\CustomHelpers;
use App\Mail\VerificationCode;
use App\Events\PodcastProcessed;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use App\Http\Resources\OrderResource;
use App\Http\Resources\ServiceResource;
use App\Http\Requests\StoreOrderRequest;
use App\Models\Payment;
use App\Notifications\MicanicNotification;
use Illuminate\Support\Facades\Notification;
use Stripe\Payout;

class OrderController extends Controller
{


    public function store(StoreOrderRequest $request)
    {

    //chick if user have open order return error
    $auth=Auth::guard('sanctum')->user();
    $getOrder =Order::where('user_id', $auth->id)->where('status','open')->first();

    //chick if user have open order not payment
    if ($getOrder) {
        $getPayment =Payment::where('order_id', $getOrder->id)->first();
        if ( !$getPayment) {
            return ApiTraits::errorMessage('user have open order not payment must pay first');
        }
    }


    // //chick if micanic have open order busy return error
    // $results = Micanic::where('id',$request->micanic_id)->first();
    // $results= $results->Order;
    // foreach ($results as $result ) {
    // if ($result->status=='open' ) {
    //     break ;
    //     return ApiTraits::errorMessage('this micanic is busy success');
    // }}        

    if($getOrder==null){
    //create order and add service to order
    $order = new Order;
    $order->micanic_id = $request->micanic_id;
    $order->user_id = $auth->id ;
    $order->Latitude = $request->Latitude;
    $order->longitude = $request->longitude;
    $order->save();
    for ($i=0; $i<sizeof($request->service_id);$i++) {  
        Order_service::insert([
            'order_id'   => $order->id ,
            'service_id' => $request->service_id[$i]
        ]);
        }  
        // $orderN = Order::where('user_id',$auth->id)->where('status','open')->first();
        // $results=$orderN->Service;
        // $results=ServiceResource::collection($orderN->Service);
        // $order->servicesName = $results;
            
        // //send  pusher notification
        // broadcast(new NewOrd($order,$request->micanic_id))->toOthers();

        // //uodate  micanic status working to stop ask for orders users
        // Micanic::where('id',$request->micanic_id)->update(['status' => 'Busy']);

        return ApiTraits::data(compact('order'),'results success');

    }else{
        return ApiTraits::errorMessage('you have an open order pleasr waiting finesh first',500);
    }

    }


    


    public function show(Order $order)
    {
         $auth=Auth::guard('sanctum')->user();
        $results = Order::where('user_id',$auth->id)->get();
         return ApiTraits::data(compact('results'),'results success');

    }


    // public function delete($orderId)
    // {
    //     $results = Order::find($orderId);
    //     if($results==null){
    //         return  ApiTraits::errorMessage('you have error');
    //     }else{
    //         $results->delete();
    //         return ApiTraits::data(compact('results'),'results success');
    //     }

    // }

    public function showOpenOrderMicanic()
    {
        $auth=Auth::guard('sanctum')->user();
        $results = Order::where('status','open')->where('micanic_id',$auth->id)->first();
            if ($results) {
                $isPayment=Payment::where('order_id',$results->id)->first();
                if ($isPayment) {
                    $results->service=$results->Service;
                    return ApiTraits::data(compact('results'),'results success');           
                 }else{
                    return ApiTraits::successMessage('dont have orders yet');           
                 }          
             }


    }


    public function allOrders()
    {
        $results = Order::all();
         return ApiTraits::data(compact('results'),'results success');
    }

    


    public function StackOrders()
    {
        $auth=Auth::guard('sanctum')->user();
        $result = Order::where('status','open')->where('user_id',$auth->id)->first();

            if ($result) {
                $isPayment=Payment::where('order_id',$result->id)->first();
                if ($isPayment) {
                    return ApiTraits::successMessage('dont have stack orders');   
                 }else{
                    return ApiTraits::data(compact('result'),'there is stack order');           
                 }          
             }else{
                return ApiTraits::successMessage('dont have open orders');   
             }


    }

    public function CloseStackOrders()
    {
        $auth=Auth::guard('sanctum')->user();
        $result = Order::where('status','open')->where('user_id',$auth->id)->first();

            if ($result) {
                $isPayment=Payment::where('order_id',$result->id)->first();
                if ($isPayment) {
                    return ApiTraits::successMessage('dont have stack orders');   
                 }else{
            Order::where('user_id',$auth->id)->where('status', 'open')->delete();
                }          
             }else{
                return ApiTraits::successMessage('dont have open orders');   
             }


    }

}
