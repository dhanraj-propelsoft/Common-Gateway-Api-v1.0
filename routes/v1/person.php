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
Route::post('generateEmailOtp',[PersonController::class,'generateEmailOtp'])->name('generateEmailOtp');
Route::post('checkMemberOrPerson',[PersonController::class,'checkMemberOrPerson'])->name('checkMemberOrPerson');
Route::post('checkPersonEmail',[PersonController::class,'checkPersonEmail'])->name('checkPersonEmail');
Route::post('personMobileOtp',[PersonController::class,'personMobileOtp'])->name('personMobileOtp');
Route::post('personDatas',[PersonController::class,'personDatas'])->name('personDatas');
Route::post('personUpdate',[PersonController::class,'personUpdate'])->name('personUpdate');
Route::post('personToMember',[PersonController::class,'personToMember'])->name('personToMember');
Route::post('emailOtpValidation',[PersonController::class,'emailOtpValidation'])->name('emailOtpValidation');
Route::post('personProfiles',[PersonController::class,'personProfiles'])->name('personProfiles');


