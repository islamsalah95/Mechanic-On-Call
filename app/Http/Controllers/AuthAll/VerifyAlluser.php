<?php
namespace App\Http\Controllers\AuthAll;
use App\Http\Controllers\Controller;


use App\Models\User;
use App\Models\Micanic;
use App\Traits\ApiTraits;
use Illuminate\Http\Request;
use App\Models\Adminstration;
use App\Traits\CustomHelpers;
use App\Mail\VerificationCode;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class VerifyAlluser extends Controller
{

    public function VerifyAlluser(Request $request)
    {
        $request->validate([
            'code' => ['required'],
        ]);
        $user = User::where('code', $request->code)->first();
        $Micanic = Micanic::where('code', $request->code)->first();
        $Adminstration = Adminstration::where('code', $request->code)->first();
        if ($user) {
            User::where('id',$user->id)->update([
                'email_verified_at' => date("Y-m-d H:i:s"),                
                'code' => null
            ]);
            $tokens = $user->createToken('Android')->plainTextToken;
            $user->token = 'Bearer ' . $tokens;

        } else if ($Micanic) {
            Micanic::where('id',$Micanic->id)->update([
                'email_verified_at' => date("Y-m-d H:i:s"),                
                'code' => null           
                 ]);
                 $tokens = $Micanic->createToken('Android')->plainTextToken;
                 $Micanic->token = 'Bearer ' . $tokens;
                 $user=$Micanic;

        } else if ($Adminstration) {
            Adminstration::where('id', $Adminstration->id)->update([
                'email_verified_at' => date("Y-m-d H:i:s"),                
                'code' => null
                            ]);
           $tokens = $Adminstration->createToken('Android')->plainTextToken;
          $Adminstration->token = 'Bearer ' . $tokens;
          $user=$Adminstration;
        } else {
            return ApiTraits::errorMessage('wrong code');
        }

        return ApiTraits::data(compact('user'), 'verify success', 200); //401unauthorithed
    }








}

