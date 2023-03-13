<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Traits\ApiTraits;
use Illuminate\Http\Request;
use App\Http\Requests\StoreContactRequest;

class ContactController extends Controller
{
    public function storeMessage(StoreContactRequest $request)
    {
        $result = new Contact;
        $result->name = $request->name;
        $result->mobile = $request->mobile;
        $result->message = $request->message;
        $result->save();

        return ApiTraits::data(compact('result'),'contact message send success');

    }


    public function show()
    {
        $results = Contact::all();
        return ApiTraits::data(compact('results'),'contact message send success');

    }


    public function countAllMessages()
    {
        $result = Contact::count("id");
        return ApiTraits::data(compact('result'),'contact message send success');

    }
}
