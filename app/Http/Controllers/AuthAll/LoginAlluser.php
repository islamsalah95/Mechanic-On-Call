<?php
namespace App\Http\Controllers\AuthAll;


use App\Models\User;
use App\Models\Micanic;
use App\Traits\ApiTraits;
use Illuminate\Http\Request;
use App\Models\Adminstration;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class LoginAlluser extends Controller
{
    public function LoginAlluser(Request $request)
    {

        $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);


        $user = User::where('email', $request->email)->first();
        $Micanic = Micanic::where('email', $request->email)->first();
        $Adminstration = Adminstration::where('email', $request->email)->first();


        if ($user) {
            if (!Hash::check($request->password, $user->password)) {
                return ApiTraits::errorMessage('wrong password');
            }

            //$user->tokens()->delete();//if want one device only that login
            $tokens = $user->createToken('Android')->plainTextToken;
            $user->token = 'Bearer ' . $tokens;

            if (is_null($user->email_verified_at)) {
                return ApiTraits::data(compact('user'), 'not Verifyed', 401); //401unauthorithed
            }
        } 
        
        
        
        elseif ($Micanic) {
            if (!Hash::check($request->password, $Micanic->password)) {
                return ApiTraits::errorMessage('wrong password');
            } else {
                $tokens = $Micanic->createToken('Android')->plainTextToken;
                $user=$Micanic;
                $user->token = 'Bearer ' . $tokens;
                if (is_null($Micanic->email_verified_at)) {
                    return ApiTraits::data(compact('user'), 'not Verifyed', 401); //401unauthorithed
                } else {
                    return ApiTraits::data(compact('user'), 'login success', 200); //401unauthorithed
                }
            }
        }
        
        
        
        
        elseif ($Adminstration) {
            if (!$Adminstration) {
                return ApiTraits::errorMessage($message = 'wrong email');
            } else if (!Hash::check($request->password, $Adminstration->password)) {
                return ApiTraits::errorMessage($message = 'wrong password');
            } else {
                $tokens = $Adminstration->createToken('Android')->plainTextToken;
                $user=$Adminstration;

                $user->token = 'Bearer ' . $tokens;
                if (is_null($Adminstration->email_verified_at)) {
                    return ApiTraits::data(compact('user'), 'not Verifyed', 401); //401unauthorithed
                } else {
                    return ApiTraits::data(compact('user'), 'login success', 200); //401unauthorithed
                }
            }
        } 
        
        
        
        else {
            return ApiTraits::errorMessage('wrong email you are not register');
        }




        
        return ApiTraits::data(compact('user'), 'login success', 200); //401unauthorithed
    }
}
