<?php

namespace App\Http\Controllers\Api\v1\Service;

use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;


class CommonService
{
  

  public function sendResponse($result, $message)
  {
    $response = [
      'success' => true,
      'data' => $result,
      'message' => $message,
    ];

    return response()->json($response, 200);
  }
  public function sendError($errorMessages = [],$error, $code = 404)
  {
    $response = [
      'success' => false,
      'message' => $error,
    ];

    if (!empty($errorMessages)) {
      $response['data'] = $errorMessages;
    }
    return response()->json($response, $code);
  }
 
}
