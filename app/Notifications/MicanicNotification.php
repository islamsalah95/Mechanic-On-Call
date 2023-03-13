<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Messages\BroadcastMessage;

class MicanicNotification extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     *
     * @return void
     */

     public $order;
    public function __construct($order)
    {
        //
        $this->order=$order;

    }

    public function via($notifiable)
    {
        return ['database','Broadcast'];
    }

    public function toArray($notifiable)
    {
        return [
            'Latitude' => $this->order->Latitude,
            'longitude' => $this->order->longitude,
            'servicesName' => $this->order->servicesName,
        ];
    }


//     public function toBroadcast($notifiable)
// {
//     return new BroadcastMessage([
//         'Latitude' => $this->order->Latitude,
//         'longitude' => $this->order->longitude,
//         'servicesName' => $this->order->servicesName,
//     ]);
// }
}
