<?php

namespace App\Http\Middleware;

use Closure;
use App\Traits\ApiTraits;
use Illuminate\Http\Request;
use App\Models\Adminstration;
use Illuminate\Support\Facades\Auth;

class IsAdminstration
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $adminstration = Auth::guard('sanctum')->user();
        if (!$request->header('Authorization') || !$adminstration) {
            return  ApiTraits::errorMessage("you must login as adminstartion for access and pass token", 504);
        }
        $IsAdminstration = Adminstration::where('email', $adminstration->email)->first();
        if (!$IsAdminstration) {
            return  ApiTraits::errorMessage("you are noy authorize only Adminstration have acess ", 504);
        } else {
            return $next($request);
        }
    }
}
