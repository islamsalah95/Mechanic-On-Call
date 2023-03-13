<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\Micanic;
use App\Traits\ApiTraits;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class IsMicanic
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
        $Micanic = Auth::guard('sanctum')->user();
        if (!$request->header('Authorization') || !$Micanic) {
            return  ApiTraits::errorMessage("you must login as Micanic for access and pass token", 504);
        }
        $IsMicanic = Micanic::where('email', $Micanic->email)->first();
        if (!$IsMicanic) {
            return  ApiTraits::errorMessage("you are noy authorize only Micanic have acess ", 504);
        } else {
            return $next($request);
        }
    }
}
