<?php

namespace App\Http\Controllers;
use App\Mail\Code;
use App\Models\User;
use App\Models\Micanic;
use App\Traits\ApiTraits;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Traits\CustomHelpers;
use App\Mail\VerificationCode;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\AuthRegisterValidation;
use App\Http\Requests\loginValidationMicanic;
use App\Http\Requests\AuthRegisterValidationMichanic;

class AuthApisMicanic extends Controller
{


public function register(AuthRegisterValidationMichanic $request){
$code=CustomHelpers::generateCode();

$nid_img=CustomHelpers::uploadImg($request,"nid_img",'assets/images/');
$cert_img=CustomHelpers::uploadImg($request,"cert_img",'assets/images/');
$personal_img=CustomHelpers::uploadImg($request,"personal_img",'assets/images/');

// dd($nid_img);

$Micanic = new Micanic;
$Micanic->name =$request->name;
$Micanic->email =$request->email;
$Micanic->password =Hash::make($request->password);
$Micanic->nid_img =$nid_img;
$Micanic->cert_img =$cert_img;
$Micanic->personal_img =$personal_img;
$Micanic->city_id =$request->city_id;
$Micanic->code =$code;
$Micanic->save();

$tokens=$Micanic->createToken('Android')->plainTextToken;
$Micanic->token='Bearer '.$tokens;
Mail::to($Micanic->email)->send(new VerificationCode($code));

return ApiTraits::data(compact('Micanic'),'register Micanic success');
}




public function loginMicanic(loginValidationMicanic $request){
    $Micanic=Micanic::where('email',$request->email)->first();
    if(!$Micanic){
        return ApiTraits::errorMessage($message='wrong email');
    
    }else if (!Hash::check($request->password,$Micanic->password)) {
    return ApiTraits::errorMessage($message='wrong password');
    }else{
    $tokens=$Micanic->createToken('Android')->plainTextToken;
    $Micanic->token='Bearer '.$tokens;
    if (is_null($Micanic->email_verified_at)) {
        return ApiTraits::data(compact('Micanic'),'not Verifyed',401);//401unauthorithed
    }else{
        return ApiTraits::data(compact('Micanic'),'login success',200);//401unauthorithed
    }
}
    
}


// public function loginMicanic(Request $request){
//     //  $request->validate([
//     //     'code' => 'required|digits:5|exists:micanics',
//     // ]);

//     $token=$request->header('Authorization');
//     $MicanicAuth=Auth::guard('sanctum')->user();
    
//     $Micanic=Micanic::find($MicanicAuth->id);
//     if ($Micanic->code==$request->code) {
//     $Micanic->email_verified_at = date('Y-m-d H:i:s');
//     $Micanic->code = null;
//     $Micanic->save();

//     $token=$Micanic->createToken('Android')->plainTextToken;
//     $Micanic->token='Bearer '.$token;

//     return ApiTraits::data(compact('Micanic'),'verify success',200);

// }else {
//     return ApiTraits::data(compact('Micanic'),'wrong code',400);}
// }


// public function loginMicanic(Request $request){
// $Micanic=Micanic::where('email',$request->email)->first();
// return ApiTraits::data(compact('Micanic'),'verify success',200);

// }


public function logoutAllMicanic(Request $request){

    $Micanic=Auth::guard('sanctum')->user();
    $Micanic->tokens()->delete();
    return ApiTraits::successMessage($message=" logoutAll success",$statusCode=200);
}


}
