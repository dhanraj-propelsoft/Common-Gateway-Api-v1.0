<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\v1\Controller\Person\PersonController;
use App\Http\Controllers\Api\v1\Controller\Common\CommonController;
// searching Part Start
//@Developer Dhana
Route::post('findCredential', [PersonController::class,'findCredential'])->name('findCredential');
Route::post('findMobileNumber',[PersonController::class,'findMobileNumber'])->name('findMobileNumber');
Route::post('storePerson',[PersonController::class,'storePerson'])->name('storePerson');
Route::get('getSalutation',[CommonController::class,'getSalutation'])->name('getSalutation');
Route::post('storeTempPerson',[PersonController::class,'storeTempPerson'])->name('storeTempPerson');

Route::post('personOtpValidation',[PersonController::class,'personOtpValidation'])->name('personOtpValidation');





