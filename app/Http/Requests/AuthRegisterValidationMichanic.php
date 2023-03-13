<?php

namespace App\Http\Requests;

use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class AuthRegisterValidationMichanic extends FormRequest
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
            'name'=>['required','max:32'],
            'email'=>['required','max:50','unique:micanics,email'],
            'password'=>['required','regex:/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?])[A-Za-z\d#$@!%&*?]{8,30}$/','confirmed'],
            'password_confirmation'=>['required','same:password'],
            'code'=>['nullable'],
            'cert_img'=>['required'],
            'personal_img'=>['nullable'],
            'personal_img'=>['required'],
            'city_id'=>['required','max:50','exists:cities,id'],
                ];
    }
}
