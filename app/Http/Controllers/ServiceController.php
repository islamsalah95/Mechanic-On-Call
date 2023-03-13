<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Order;
use App\Models\Rating;
use App\Models\Micanic;
use App\Models\Service;
use App\Traits\ApiTraits;
use PhpParser\Node\Expr\New_;
use App\Http\Resources\RateResource;
use App\Http\Requests\StoreServiceRequest;

class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function addService(StoreServiceRequest $request )
    {
        $results=Service::create(['name' => $request->name,'price' => $request->price]);
       
        return ApiTraits::data(compact('results'),'results success');

    }

    public function allServices( )
    {
        $results=Service::get();
       
        return ApiTraits::data(compact('results'),'results success');

    }




    public function allServicesCount( )
    {
       
        $result=Service::all()->count();
       
        return ApiTraits::data(compact('result'),'allServicesCount dispaly success');

    }




    public function allordersCount( )
    {
        $result=Order::all()->count();
       
        return ApiTraits::data(compact('result'),'allordersCount dispaly success');

    }

    public function allusersCount( )
    {
        $result=User::all()->count();
       
        return ApiTraits::data(compact('result'),'allusersCount dispaly success');

    }


    public function allMicanicCount( )
    {
        $result=Micanic::all()->count();
       
        return ApiTraits::data(compact('result'),'allMicanicCount dispaly success');

    }


    public function allMicanicRating( )
    {
        $results=Micanic::all();
        foreach ($results as $result) {
           $rate=Rating::where('micanic_id',$result->id)->get();
            $result->rate=RateResource::collection($rate);
        }
        return ApiTraits::data(compact('results'),'allMicanicCount dispaly success');

    }

    public function spacifyMicanicRating($id)
    {
        $results=Micanic::where('id',$id)->first();
           $rate=Rating::where('micanic_id',$results->id)->get();
            $results->rate=$rate;
            $avgRate=Rating::where('micanic_id',$results->id)->avg("rate");
            $results->avgRate=round($avgRate,1);

            return ApiTraits::data(compact('results'),'allMicanicCount dispaly success');

    }



 
}
