<?php

use App\Models\Cart;
use App\Models\City;
use App\Models\Rate;
use App\Models\User;
use App\Models\Order;
use App\Events\NewOrd;
use App\Models\Comment;
use App\Models\Micanic;
use App\Models\Product;
use App\Models\Service;
use App\Models\Category;
use App\Traits\ApiTraits;
use Illuminate\Http\Request;
use App\Http\Middleware\IsAdmin;
use App\Http\Middleware\AuthUser;
use App\Http\Controllers\AuthApis;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Notification;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CityController;
use App\Http\Controllers\RateController;
use App\Http\Controllers\AuthApisMicanic;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\RatingController;
use App\Http\Controllers\StripeController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\MicanicController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\AuthAll\LoginAlluser;
use App\Http\Controllers\AuthAll\LogoutAlluser;
use App\Http\Controllers\AuthAll\VerifyAlluser;
use App\Http\Controllers\AdminstrationController;
use App\Http\Controllers\AuthAll\ResetPassAlluser;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
//*******************************>>>>>>all<<<<<**********************************//
Route::post('/LoginAlluser', [LoginAlluser::class, 'LoginAlluser']);
Route::post('/LogoutAlluser', [LogoutAlluser::class, 'LogoutAlluser']);
Route::post('/ResetPassAlluser', [ResetPassAlluser::class, 'ResetPassAlluser']);
Route::post('/UpdatePassAlluser', [ResetPassAlluser::class, 'UpdatePassAlluser']);
Route::post('/VerifyAlluser', [VerifyAlluser::class,'VerifyAlluser']);


//*******************************>>>>>>authuser<<<<<**********************************//
Route::post('/register', [AuthApis::class, 'register']);
Route::post('/send', [AuthApis::class, 'send']);
Route::post('/verify', [AuthApis::class, 'verify']);
Route::post('/login', [AuthApis::class, 'login']);
Route::post('/rest', [AuthApis::class, 'rest']);
Route::post('/Newpass', [AuthApis::class, 'Newpass']);
Route::get('/logoutAll', [AuthApis::class, 'logoutAll']);
Route::get('/logout', [AuthApis::class, 'logout']);
//*******************************>>>>>>authmicanic<<<<<**********************************//
Route::post('/registerMicanic', [AuthApisMicanic::class, 'register']);
Route::post('/loginMicanic', [AuthApisMicanic::class, 'loginMicanic']);
Route::post('/verifyMicanic', [AuthApisMicanic::class, 'verify']);
Route::get('/logoutAllMicanic', [AuthApisMicanic::class, 'logoutAllMicanic']);
//*******************************>>>>>>authAdminstration<<<<<**********************************//
Route::post('/loginAdminstration', [AdminstrationController::class, 'loginAdminstration']);
Route::get('/logoutAdminstration', [AdminstrationController::class, 'logoutAdminstration']);
//*******************************>>>>>IsUser<<<<<**********************************//
Route::middleware(['AuthUser'])->group(function () {
// *************************<orders>************
Route::post('/orderStore', [OrderController::class, 'store']);//send micanic notification
Route::get('/orderShow', [OrderController::class, 'show']);
// *************************<rating>************
Route::post('/ratingStore', [RatingController::class, 'store']);
// *************************<Payment>************
Route::post('/paymentStore', [PaymentController::class, 'store']);

Route::get('/UserPayments', [PaymentController::class, 'UserPayments']);

Route::get('/StackOrders', [OrderController::class, 'StackOrders']);
Route::delete('/CloseStackOrders', [OrderController::class, 'CloseStackOrders']);



});



//*******************************>>>>>IsAdminstration<<<<<**********************************//
Route::middleware(['IsAdminstration'])->group(function () {
// *************************<Payment>************
Route::get('/showllPayments', [PaymentController::class, 'showllPayments']);
Route::delete('/paymentclear', [PaymentController::class, 'clear']);
Route::post('/addService', [ServiceController::class,'addService']);

Route::post('/addCity',[CityController::class,'addCity']);

Route::post('/changeMicanicStatus/{micanicId}', [MicanicController::class, 'changeMicanicStatus']);
Route::get('/getTotalPayments', [PaymentController::class, 'getTotalPayments']);
Route::get('/allOrders', [OrderController::class, 'allOrders']);

Route::get('/showAllMessages', [ContactController::class, 'show']);
Route::get('/countAllMessages', [ContactController::class, 'countAllMessages']);


});




//*******************************>>>>>IsMicanic<<<<<**********************************//
Route::middleware(['IsMicanic'])->group(function () {
    // *************************<micanic>************
    Route::get('/showOpenOrderMicanic', [OrderController::class, 'showOpenOrderMicanic']);
    Route::post('/closeOrder/{orderId}', [MicanicController::class, 'closeOrder']);//send mail rating
    Route::get('/getNotification', [Notification::class, 'getNotification']);//send mail rating
    Route::post('/makeRead', [Notification::class, 'makeRead']);//send mail rating
    Route::get('/micanicCloseOrders', [MicanicController::class, 'micanicCloseOrders']);//send mail rating
    // Route::get('/chickMicanicAvilabilty', [MicanicController::class, 'chickMicanicAvilabilty']);

    
    
});





//*******************************>>>>>NoAuth<<<<<**********************************//
// *************************<rating>************
Route::get('/allMicanicsRating', [RatingController::class, 'allMicanicsRating']);
Route::get('/allMicanicsRatingByCity/{cityid}', [RatingController::class, 'allMicanicsRatingByCity']);
// *************************<city>************
Route::get('/allCities', [CityController::class, 'allCities']);
Route::get('/allMicanicByCity/{cityId}', [CityController::class, 'allMicanicByCity']);
Route::get('/allMicanics', [MicanicController::class, 'allMicanics']);
Route::get('/allServices', [ServiceController::class,'allServices']);
Route::get('/BusyMicanic/{micanicId}', [MicanicController::class,'BusyMicanic']);


Route::get('/allServicesCount', [ServiceController::class,'allServicesCount']);
Route::get('/allordersCount', [ServiceController::class,'allordersCount']);
Route::get('/allusersCount', [ServiceController::class,'allusersCount']);
Route::get('/allMicanicCount', [ServiceController::class,'allMicanicCount']);
Route::get('/allMicanicRating', [ServiceController::class,'allMicanicRating']);
Route::get('/spacifyMicanicRating/{id}', [ServiceController::class,'spacifyMicanicRating']);

// Route::get('/getTotalPayments', [PaymentController::class, 'getTotalPayments']);
// Route::get('/countAllMessages', [ContactController::class, 'countAllMessages']);
// *************************<contact>************
Route::post('/storeMessage', [ContactController::class, 'storeMessage']);

