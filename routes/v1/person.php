<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\v1\Controller\Person\PersonController;
use App\Http\Controllers\Api\v1\Controller\Common\CommonController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

// searching Part Start
//@Developer Dhana

//done
Route::post('personDatas', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'personDatas', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('storeTempPerson', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'storeTempPerson', $requestData);
    return $response; // Output the response for debugging purposes
});

//done
Route::post('personOtpValidation', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'personOtpValidation', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
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
//done
Route::post('storePerson', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'storePerson', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('checkMemberOrPerson', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'checkMemberOrPerson', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('checkPersonEmail', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'checkPersonEmail', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('personMobileOtp', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'personMobileOtp', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('personUpdate', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'personUpdate', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('personToMember', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'personToMember', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('emailOtpValidation', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'emailOtpValidation', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('personProfiles', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'personProfiles', $requestData);
    return $response; // Output the response for debugging purposes
});
//done

Route::post('profileUpdate', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'profileUpdate', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('getPersonAllDetails', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'getPersonAllDetails', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('memberAllDetails', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'memberAllDetails', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
//done
Route::post('addSecondaryMobile', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'addSecondaryMobile', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('resendOtpForMobile', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'resendOtpForMobile', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('deleteForMobileNoByUid', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'deleteForMobileNoByUid', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('makeAsPrimaryMobileOtpValidate', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'makeAsPrimaryMobileOtpValidate', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('addSecondaryEmail', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'addSecondaryEmail', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('resendOtpForEmail', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'resendOtpForEmail', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('deleteForEmailByUid', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'deleteForEmailByUid', $requestData);
    return $response; // Output the response for debugging purposes
});
//done'
Route::post('makeAsPrimaryEmailOtpValidate', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'makeAsPrimaryEmailOtpValidate', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
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
//done
Route::post('OtpValidateSecondaryMobileNo', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'OtpValidateSecondaryMobileNo', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('OtpValidateForSecondaryEmail', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'OtpValidateForSecondaryEmail', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('otpValidationForMobile', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'otpValidationForMobile', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('findExactPersonWithEmailAndMobile', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'findExactPersonWithEmailAndMobile', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('findMemberDataByUid', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'findMemberDataByUid', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('getPrimaryMobileAndEmailbyUid', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'getPrimaryMobileAndEmailbyUid', $requestData);
    return $response; // Output the response for debugging purposes
});
Route::post('personProfileDatas', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'personProfileDatas', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::get('getPersonMasterData', function (Request $request) {
    // Get all data from the incoming request

    // Make a POST request to Project B with the request data
        $response = Http::get(config('person_api_base') . 'getPersonMasterData');
    return $response; // Output the response for debugging purposes
});
//done
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
Route::post('personMotherTongueByUid', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'personMotherTongueByUid', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('personGetAnniversaryDate', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'personGetAnniversaryDate', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('personAddressByUid', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'personAddressByUid', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('getPersonEmailByUidAndEmail', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'getPersonEmailByUidAndEmail', $requestData);
    return $response; // Output the response for debugging purposes
});

// Route::post('storeTempPerson', [PersonController::class, 'storeTempPerson'])->name('storeTempPerson');
// Route::post('personOtpValidation', [PersonController::class, 'personOtpValidation'])->name('personOtpValidation');
// Route::post('generateEmailOtp', [PersonController::class, 'generateEmailOtp'])->name('generateEmailOtp');
// Route::post('findCredential', [PersonController::class, 'findCredential'])->name('findCredential');
// Route::post('storePerson', [PersonController::class, 'storePerson'])->name('storePerson');
// Route::post('checkMemberOrPerson', [PersonController::class, 'checkMemberOrPerson'])->name('checkMemberOrPerson');
// Route::post('checkPersonEmail', [PersonController::class, 'checkPersonEmail'])->name('checkPersonEmail');
// Route::post('personMobileOtp', [PersonController::class, 'personMobileOtp'])->name('personMobileOtp');
// Route::post('personUpdate', [PersonController::class, 'personUpdate'])->name('personUpdate');
// Route::post('personToMember', [PersonController::class, 'personToMember'])->name('personToMember');
// Route::post('emailOtpValidation', [PersonController::class, 'emailOtpValidation'])->name('emailOtpValidation');
// Route::post('personProfiles', [PersonController::class, 'personProfiles'])->name('personProfiles');
// Route::post('profileUpdate', [PersonController::class, 'profileUpdate'])->name('profileUpdate');
// Route::post('getPersonAllDetails', [PersonController::class, 'getPersonAllDetails'])->name('getPersonAllDetails');
// Route::post('memberAllDetails', [PersonController::class, 'memberAllDetails'])->name('memberAllDetails');
// Route::post('addSecondaryMobile', [PersonController::class, 'addSecondaryMobile'])->name('addSecondaryMobile');
// Route::post('resendOtpForMobile', [PersonController::class, 'resendOtpForMobile'])->name('resendOtpForMobile');
// Route::post('deleteForMobileNoByUid', [PersonController::class, 'deleteForMobileNoByUid'])->name('deleteForMobileNoByUid');
// Route::post('makeAsPrimaryMobileOtpValidate', [PersonController::class, 'makeAsPrimaryMobileOtpValidate'])->name('makeAsPrimaryMobileOtpValidate');
// Route::post('addSecondaryEmail', [PersonController::class, 'addSecondaryEmail'])->name('addSecondaryEmail');
// Route::post('resendOtpForEmail', [PersonController::class, 'resendOtpForEmail'])->name('resendOtpForEmail');
// Route::post('deleteForEmailByUid', [PersonController::class, 'deleteForEmailByUid'])->name('deleteForEmailByUid');
// Route::post('makeAsPrimaryEmailOtpValidate', [PersonController::class, 'makeAsPrimaryEmailOtpValidate'])->name('makeAsPrimaryEmailOtpValidate');
// Route::post('resendOtpForSecondaryMobile', [PersonController::class, 'resendOtpForSecondaryMobile'])->name('resendOtpForSecondaryMobile');
// Route::post('resendOtpForSecondaryEmail', [PersonController::class, 'resendOtpForSecondaryEmail'])->name('resendOtpForSecondaryEmail');
// Route::post('OtpValidateSecondaryMobileNo', [PersonController::class, 'OtpValidateSecondaryMobileNo'])->name('OtpValidateSecondaryMobileNo');
// Route::post('OtpValidateForSecondaryEmail', [PersonController::class, 'OtpValidateForSecondaryEmail'])->name('OtpValidateForSecondaryEmail');
// Route::post('otpValidationForMobile', [PersonController::class, 'otpValidationForMobile'])->name('otpValidationForMobile');
