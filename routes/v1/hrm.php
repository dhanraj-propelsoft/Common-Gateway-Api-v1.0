<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\v1\Controller\Person\PersonController;
use App\Http\Controllers\Api\v1\Controller\Common\CommonController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

// searching Part Start
//@Developer Dhana

//done
Route::post('getDepartment/{orgId}', function (Request $request, $orgId) {
    // Get all data from the incoming request
    $requestData = $request->all();

    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "getDepartment/{$orgId}";
    $response = Http::post($apiUrl, $requestData);
    
    // Output the response for debugging purposes
 
    
    return $response;
});


//done
Route::get('createDepartment/{orgId}', function (Request $request, $orgId) {
    // Get all data from the incoming request
    $requestData = $request->all();

    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "createDepartment/{$orgId}";
    $response = Http::get($apiUrl, $requestData);
    
    // Output the response for debugging purposes
 
    
    return $response;
});

//done
Route::get('findDepartmentById/{orgId}/{id}', function (Request $request, $orgId,$id) {
    // Get all data from the incoming request
    $requestData = $request->all();

    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "findDepartmentById/{$orgId}/{$id}";

    $response = Http::get($apiUrl, $requestData);
    
    // Output the response for debugging purposes
 
    
    return $response;
});

//done
Route::get('deleteDepartmentById/{orgId}/{id}', function (Request $request, $orgId,$id) {
    // Get all data from the incoming request
    $requestData = $request->all();

    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "deleteDepartmentById/{$orgId}/{$id}";

    $response = Http::get($apiUrl, $requestData);
    
    // Output the response for debugging purposes
 
    
    return $response;
});
//done
Route::post('storeDepartment/{orgId}', function (Request $request, $orgId) {
    // Get all data from the incoming request
    $requestData = $request->all();

    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "storeDepartment/{$orgId}";
    $response = Http::post($apiUrl, $requestData);
    
    // Output the response for debugging purposes
 
    
    return $response;
});

//done
Route::get('getDesignation/{orgId}', function ($orgId) {
    // Get all data from the incoming request
   

    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "getDesignation/{$orgId}";
    $response = Http::get($apiUrl);
    
    // Output the response for debugging purposes
 
    
    return $response;
});


//done
Route::get('createDesignation/{orgId}', function ($orgId) { 

    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "createDesignation/{$orgId}";
    $response = Http::get($apiUrl);
    
    // Output the response for debugging purposes
 
    
    return $response;
});

//done
Route::get('findDesignationById/{orgId}/{id}', function ( $orgId,$id) {
  

    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "findDesignationById/{$orgId}/{$id}";

    $response = Http::get($apiUrl);
    
    // Output the response for debugging purposes
 
    
    return $response;
});

//done
Route::get('deleteDesignationById/{orgId}/{id}', function ($orgId,$id) {
  

    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "deleteDesignationById/{$orgId}/{$id}";

    $response = Http::get($apiUrl);
    
    // Output the response for debugging purposes
 
    
    return $response;
});
//done
Route::post('storeHrType/{orgId}', function (Request $request, $orgId) {
    // Get all data from the incoming request
    $requestData = $request->all();

    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "storeHrType/{$orgId}";
    $response = Http::post($apiUrl, $requestData);
    
    // Output the response for debugging purposes
 
    
    return $response;
});


//done
Route::get('getHrType/{orgId}', function ($orgId) {
    // Get all data from the incoming request
   

    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "getHrType/{$orgId}";
    $response = Http::get($apiUrl);
    
    // Output the response for debugging purposes
 
    
    return $response;
});


//done
Route::get('createDesignation/{orgId}', function ($orgId) { 

    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "createDesignation/{$orgId}";
    $response = Http::get($apiUrl);
    
    // Output the response for debugging purposes
 
    
    return $response;
});

//done
Route::get('findHrType/{orgId}/{id}', function ( $orgId,$id) {
  

    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "findHrType/{$orgId}/{$id}";

    $response = Http::get($apiUrl);
    
    // Output the response for debugging purposes
 
    
    return $response;
});

//done
Route::get('destroyHrType/{orgId}/{id}', function ($orgId,$id) {
  

    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "destroyHrType/{$orgId}/{$id}";

    $response = Http::get($apiUrl);
    
    // Output the response for debugging purposes
 
    
    return $response;
});
//done
Route::post('storeDesignation/{orgId}', function (Request $request, $orgId) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "storeDesignation/{$orgId}";
    $response = Http::post($apiUrl, $requestData);
    // Output the response for debugging purposes
    return $response;
});
//done
Route::get('findDesignationByDeptId/{orgId}/{id}', function ($orgId,$id) {
    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "findDesignationByDeptId/{$orgId}/{$id}";
    $response = Http::get($apiUrl);
    // Output the response for debugging purposes
    return $response;
});
//done
Route::post('findResourceWithCredentials/{orgId}', function (Request $request, $orgId) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "findResourceWithCredentials/{$orgId}";
    $response = Http::post($apiUrl, $requestData);
    // Output the response for debugging purposes
    return $response;
});
//done
Route::get('getResourceMasterData/{orgId}', function ($orgId) {
    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "getResourceMasterData/{$orgId}";
    $response = Http::get($apiUrl);
    // Output the response for debugging purposes
    return $response;
});
//done
Route::post('resourcesStore/{orgId}', function (Request $request, $orgId) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "resourcesStore/{$orgId}";
    $response = Http::post($apiUrl, $requestData);
    // Output the response for debugging purposes
    return $response;
});
//done
Route::get('findAllResources/{orgId}', function ($orgId) {
    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "findAllResources/{$orgId}";
    $response = Http::get($apiUrl);
    // Output the response for debugging purposes
    return $response;
});
//done
Route::post('generateMobileOtp/{orgId}', function (Request $request, $orgId) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "generateMobileOtp/{$orgId}";
    $response = Http::post($apiUrl, $requestData);
    // Output the response for debugging purposes
    return $response;
});
//done
Route::post('resourceMobileOtpValidate/{orgId}', function (Request $request, $orgId) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "resourceMobileOtpValidate/{$orgId}";
    $response = Http::post($apiUrl, $requestData);
    // Output the response for debugging purposes
    return $response;
});
//done
Route::post('resourceEmailOtp/{orgId}', function (Request $request, $orgId) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "resourceEmailOtp/{$orgId}";
    $response = Http::post($apiUrl, $requestData);
    // Output the response for debugging purposes
    return $response;
});
//done
Route::post('resourceEmailOtpValidate/{orgId}', function (Request $request, $orgId) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "resourceEmailOtpValidate/{$orgId}";
    $response = Http::post($apiUrl, $requestData);
    // Output the response for debugging purposes
    return $response;
});
//done
Route::post('masterDatasForResource/{orgId}', function (Request $request, $orgId) {
    // Get all data from the incoming request
    $requestData = $request->all();
    // Make a POST request to Project B with the request data and orgId in the URL
    $apiUrl = config('hrm_api_base') . "masterDatasForResource/{$orgId}";
    $response = Http::post($apiUrl, $requestData);
    // Output the response for debugging purposes
    return $response;
});


