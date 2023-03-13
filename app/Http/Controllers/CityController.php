<?php

namespace App\Http\Controllers;

use App\Models\City;
use App\Traits\ApiTraits;
use App\Http\Resources\CityResource;
use App\Http\Requests\StoreCityRequest;
use App\Http\Requests\UpdateCityRequest;

class CityController extends Controller
{

    public function addCity(StoreCityRequest $request)
    {
        $results=City::create(['city' => $request->city]);
        return ApiTraits::data(compact('results'),'results success');
    }

    public function allCities()
    {

        $result=City::all();

        $results=CityResource::collection($result);

        return ApiTraits::data(compact('results'),'results display success');
    }
  


    public function allMicanicByCity($cityId)
    {

        $results=City::find($cityId)->Micanic;

        return ApiTraits::data(compact('results'),'results display success');
    }
}
