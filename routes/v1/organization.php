<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\v1\Controller\Person\PersonController;
use App\Http\Controllers\Api\v1\Controller\Common\CommonController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

// searching Part Start
//@Developer Dhana

//done
Route::post('tempOrganizationStore', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('organization_api_base') . 'tempOrganizationStore', $requestData);
    return $response; // Output the response for debugging purposes
});

//done
Route::get('organizationMasterDatas', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::get(config('organization_api_base') . 'organizationMasterDatas', $requestData);
    return $response; // Output the response for debugging purposes
});


//done
Route::post('getCityByDistrictId', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('organization_api_base') . 'getCityByDistrictId', $requestData);
    return $response; // Output the response for debugging purposes
});
//done
Route::post('getOrganizationAccountByUid', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('organization_api_base') . 'getOrganizationAccountByUid', $requestData);
    return $response; // Output the response for debugging purposes
});

//done
Route::post('setDefaultOrganization', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('organization_api_base') . 'setDefaultOrganization', $requestData);
    return $response; // Output the response for debugging purposes
});

//done
Route::get('organizationIndex', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::get(config('organization_api_base') . 'organizationIndex', $requestData);
    return $response; // Output the response for debugging purposes
});

Route::post('getDistrictByStateId', function (Request $request) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data
    $response = Http::post(config('organization_api_base') . 'getDistrictByStateId', $requestData);
    return $response; // Output the response for debugging purposes
});

//

