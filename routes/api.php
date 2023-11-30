<?php

use App\Http\Controllers\Api\v1\Controller\Member\MemberController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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
Route::middleware('auth:api')

    ->group(function () {
include_once('v1/person.php');
include_once('v1/commonApi.php');
include_once('v1/organization.php');
include_once('v1/member.php');
});
Route::post('memberLogin', [MemberController::class,'memberLogin'])->name('memberLogin');


