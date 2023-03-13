@component('mail::message')
# Introduction
<p>we happy to share your experince on our services please rate us</p>

<a href="http://127.0.0.1:8000/RatingComponent">Rate us</a>
@component('mail::button', ['url' => 'http://127.0.0.1:8000/RatingComponent'])
Rate us
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
