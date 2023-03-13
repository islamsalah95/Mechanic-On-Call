<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\User;
use App\Traits\ApiTraits;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthUser
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
        $user = Auth::guard('sanctum')->user();
        if (!$request->header('Authorization') || !$user) {
            return  ApiTraits::errorMessage("you must login as user for access and pass token", 504);
        }
        $IsUser= User::where('email', $user->email)->first();
        if (!$IsUser) {
            return  ApiTraits::errorMessage("you are noy authorize only User have acess ", 504);
        } else {
            return $next($request);
        }
    }
}


