<?php

namespace App\Http\Controllers\Api\v1\Controller;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Api\v1\Service\PersonService;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;

class PersonController extends Controller
{
    protected $personService;
    public function __construct(PersonService $personService)
    {
        $this->personService = $personService;
    }
    public function findCredential(Request $request): JsonResponse
    {
        $response = $this->personService->findCredential($request->all());

        return $response;
    }
}
