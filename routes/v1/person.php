<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\v1\Controller\Person\PersonController;
use App\Http\Controllers\Api\v1\Controller\Common\CommonController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

// searching Part Start
//@Developer Dhana

//done


Route::post('personUpdate', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'personUpdate', $requestData);
    return $response; // Output the response for debugging purposes
});
//done

//done

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



Route::post('addSecondaryMobile', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('person_api_base') . 'addSecondaryMobile', $requestData);
    return $response; // Output the response for debugging purposes
});
//done

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




//done

Route::post('personProfileDatas', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
        $response = Http::post(config('person_api_base') . 'personProfileDatas', $requestData);
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
