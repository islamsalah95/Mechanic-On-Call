<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class OrderResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        return [
            'micanic_id' => $this->micanic_id,
            'user_id' => $this->user_id,
            'service_id' => $this->service_id,
            'status' => $this->status,
            'Latitude' => $this->Latitude,
            'longitude' => $this->longitude,
        ];
    }
}
