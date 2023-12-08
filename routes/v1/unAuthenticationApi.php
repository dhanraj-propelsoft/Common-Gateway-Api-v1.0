<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use App\Http\Controllers\Api\v1\Controller\Person\PersonController;
use App\Http\Controllers\Api\v1\Controller\Member\MemberController;


Route::post('memberLogin', [MemberController::class,'memberLogin'])->name('memberLogin');
Route::post('storeMember', [MemberController::class,'storeMember'])->name('storeMember');
Route::post('setPasswordForMember', [MemberController::class,'setPasswordForMember'])->name('setPasswordForMember');
Route::post('passwordUpdateForMember', [MemberController::class,'passwordUpdateForMember'])->name('passwordUpdateForMember');
Route::post('findMobileNumber',[MemberController::class,'findMobileNumber'])->name('findMobileNumber');
Route::post('memberCreation', [MemberController::class,'memberCreation'])->name('memberCreation');

Route::get('findMemberByUid/{uid}', [MemberController::class,'findMemberByUid'])->name('findMemberByUid');



Route::post('storeTempPerson', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'storeTempPerson', $requestData);
    return $response; // Output the response for debugging purposes
});

Route::post('personOtpValidation', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'personOtpValidation', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('generateEmailOtp', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'generateEmailOtp', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('findCredential', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'findCredential', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('storePerson', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'storePerson', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('checkMemberOrPerson', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'checkMemberOrPerson', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('checkPersonEmail', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'checkPersonEmail', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('personMobileOtp', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'personMobileOtp', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('personToMember', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'personToMember', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('emailOtpValidation', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'emailOtpValidation', $requestData);
    return $response; // Output the response for debugging purposes
});

Route::post('getPersonAllDetails', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'getPersonAllDetails', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('resendOtpForMobile', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'resendOtpForMobile', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('resendOtpForEmail', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'resendOtpForEmail', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('resendOtpForSecondaryMobile', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'resendOtpForSecondaryMobile', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('resendOtpForSecondaryEmail', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'resendOtpForSecondaryEmail', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('findExactPersonWithEmailAndMobile', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'findExactPersonWithEmailAndMobile', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('getPrimaryMobileAndEmailbyUid', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'getPrimaryMobileAndEmailbyUid', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('personDatas', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'personDatas', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::get('getPersonMasterData', function (Request $request) {
    // Get all data from the incoming request

    // Make a POST request to Project B with the request data
        $response = Http::get(config('person_api_base') . 'getPersonMasterData');
    return $response; // Output the response for debugging purposes
});
Route::post('getPersonMobileNoByUid', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'getPersonMobileNoByUid', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('getPersonPrimaryDataByUid', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'getPersonPrimaryDataByUid', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('getPersonEmailByUidAndEmail', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'getPersonEmailByUidAndEmail', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('findMemberDataByUid', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'findMemberDataByUid', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('otpValidationForMobile', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'otpValidationForMobile', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('memberAllDetails', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'memberAllDetails', $requestData);
    return $response; // Output the response for debugging purposes
});
