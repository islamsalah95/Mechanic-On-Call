<?php

namespace App\Http\Controllers;

use App\Traits\ApiTraits;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Notification extends Controller
{
    public function getNotification()
    {
        $micanic=Auth::guard('sanctum')->user();

        
            $results=[
                'readNotifications'=>$micanic->readNotifications,
                'unreadNotifications'=>$micanic->unreadNotifications
            ];
        
         return ApiTraits::data(compact('results'),'results success');

    }


    public function makeRead()
    {
        $micanic=Auth::guard('sanctum')->user();
        $results=$micanic->unreadNotifications ;
        foreach ($micanic->unreadNotifications as $notification) {
          $notification->markAsRead();
          }
         return ApiTraits::data(compact('results'),'results success');

    }
}
