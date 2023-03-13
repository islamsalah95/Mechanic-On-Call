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

class ResetPassAlluser extends Controller
{

    public function ResetPassAlluser(Request $request)
    {
        $request->validate([
            'email' => ['required', 'email'],
        ]);
        $user = User::where('email', $request->email)->first();
        $Micanic = Micanic::where('email', $request->email)->first();
        $Adminstration = Adminstration::where('email', $request->email)->first();
        $code = CustomHelpers::generateCode();
        if ($user) {
            User::where('id', $user->id)->update([
                'code' => $code
            ]);
            Mail::to($user->email,)->send(new VerificationCode($code));
        } else if ($Micanic) {
            Micanic::where('id', $user->id)->update([
                'code' => $code
            ]);
            Mail::to($Micanic->email,)->send(new VerificationCode($code));
        } else if ($Adminstration) {
            Adminstration::where('id', $user->id)->update([
                'code' => $code
            ]);
            Mail::to($Adminstration->email,)->send(new VerificationCode($code));
        } else {
            return ApiTraits::errorMessage('wrong email you are not register');
        }

        return ApiTraits::successMessage("send code success");
    }




    public function UpdatePassAlluser(Request $request)
    {
        $request->validate([
            'code' => ['required','numeric'],
            'password' => ['required'],
        ]);
        $user = User::where('code', $request->code)->first();
        $Micanic = Micanic::where('code', $request->code)->first();
        $Adminstration = Adminstration::where('code', $request->code)->first();
    
        if ($user) {
            User::where('id', $user->id)->update([
                'password' => Hash::make($request->password), 'code' => null
            ]);
            return ApiTraits::successMessage("update pass success");

        } else if ($Micanic) {
            Micanic::where('id', $Micanic->id)->update([
                'password' => Hash::make($request->password), 'code' => null
            ]);
            return ApiTraits::successMessage("update pass success");

        } else if ($Adminstration) {
            Adminstration::where('id', $Adminstration->id)->update([
                'password' => Hash::make($request->password), 'code' => null
            ]);
            return ApiTraits::successMessage("update pass success");

        } else {
            return ApiTraits::errorMessage('wrong code');
        }
    
    }



}

