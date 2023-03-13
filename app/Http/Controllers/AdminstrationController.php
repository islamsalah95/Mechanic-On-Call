<?php

namespace App\Http\Controllers;

use App\Models\Micanic;
use App\Traits\ApiTraits;
use Illuminate\Http\Request;
use App\Models\Adminstration;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\UpdateAdminstrationRequest;

class AdminstrationController extends Controller
{
    public function loginAdminstration(Request $request){


        $user=Adminstration::where('email',$request->email)->first();
        
        if(!$user){
            return ApiTraits::errorMessage($message='wrong email');
        
        }else if (!Hash::check($request->password,$user->password)) {
        return ApiTraits::errorMessage($message='wrong password');
        }else{
        $tokens=$user->createToken('Android')->plainTextToken;
        $user->token='Bearer '.$tokens;
        if (is_null($user->email_verified_at)) {
            return ApiTraits::data(compact('user'),'not Verifyed',401);//401unauthorithed
        }else{
            return ApiTraits::data(compact('user'),'login success',200);//401unauthorithed
        }}
    }
        
        
        
        
        public function logoutAdminstration(Request $request){
        
            $Adminstration=Auth::guard('sanctum')->user();
            $Adminstration->tokens()->delete();
            return ApiTraits::successMessage($message=" logoutAll success",$statusCode=200);
        }
}
