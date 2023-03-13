<?php
namespace App\Http\Controllers\AuthAll;


use App\Models\User;
use App\Models\Micanic;
use App\Traits\ApiTraits;
use Illuminate\Http\Request;
use App\Models\Adminstration;
use App\Traits\CustomHelpers;
use App\Mail\VerificationCode;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class LogoutAlluser extends Controller
{

    public function LogoutAlluser(Request $request){
        
        $user=Auth::guard('sanctum')->user();
        $user->tokens()->delete();
        return ApiTraits::successMessage($message=" logoutAll success",$statusCode=200);
    }



}

