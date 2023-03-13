<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class StoreOrderRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'micanic_id'=>['required','exists:App\Models\Micanic,id'],
            'service_id' =>['required','exists:App\Models\Service,id'],
            'Latitude'=>['required','numeric'],
            'longitude'=>['required','numeric'],

        ];
    }
}



