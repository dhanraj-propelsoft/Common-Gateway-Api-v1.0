<?php

namespace App\Http\Controllers\Api\v1\Controller\Person;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Api\v1\Service\Person\PersonService;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Log;

class PersonController extends Controller
{
    protected $personService;
    public function __construct(PersonService $personService)
    {
        $this->personService = $personService;
    }
    public function findCredential(Request $request): JsonResponse
    {
        Log::info('PersonController > findCredential function Inside.' . json_encode($request->all()));
        $response = $this->personService->findCredential($request->all());
        Log::info('PersonController > findCredential function Return.' . json_encode($response));
        return $response;
    }


    public function findMobileNumber(Request $request): JsonResponse
    {
        Log::info('PersonController > findMobileNumber function Inside.' . json_encode($request->all()));
        $response = $this->personService->findMobileNumber($request->all());
        Log::info('PersonController > findMobileNumber function Return.' . json_encode($response));
        return $response;
    }
    public function storePerson(Request $request): JsonResponse
    {

        Log::info('PersonController > storePerson function Inside.' . json_encode($request->all()));
        $response = $this->personService->storePerson($request->all());
        Log::info('PersonController > storePerson function Return.' . json_encode($response));
        return $response;
    }
    public function storeTempPerson(Request $request): JsonResponse
    {
        Log::info('PersonController > storeTempPerson function Inside.' . json_encode($request->all()));
        $response = $this->personService->storeTempPerson($request->all());
        Log::info('PersonController > storeTempPerson function Return.' . json_encode($response));
        return $response;
    }
    public function personOtpValidation(Request $request): JsonResponse
    {
        Log::info('PersonController > personOtpValidation function Inside.' . json_encode($request->all()));
        $response = $this->personService->personOtpValidation($request->all());
        Log::info('PersonController > personOtpValidation function Return.' . json_encode($response));
        return $response;
    }
    public function generateEmailOtp(Request $request)
    {
        Log::info('PersonController > mobileOtpValidated function Inside.' . json_encode($request->all()));
        $response = $this->personService->generateEmailOtp($request->all());
        Log::info('PersonController > mobileOtpValidated function Return.' . json_encode($response));
        return $response;
    }
    public function checkMemberOrPerson(Request $request)
    {
        Log::info('PersonController > checkMemberOrPerson function Inside.' . json_encode($request->all()));
        $response = $this->personService->checkMemberOrPerson($request->all());
        Log::info('PersonController > checkMemberOrPerson function Return.' . json_encode($response));
        return $response;
    }
    public function checkPersonEmail(Request $request)
    {
        Log::info('PersonController > checkPersonEmail function Inside.' . json_encode($request->all()));
        $response = $this->personService->checkPersonEmail($request->all());
        Log::info('PersonController > checkPersonEmail function Return.' . json_encode($response));
        return $response;
    }
    public function personMobileOtp(Request $request)
    {
        Log::info('PersonController > personMobileOtp function Inside.' . json_encode($request->all()));
        $response = $this->personService->personMobileOtp($request->all());
        Log::info('PersonController > personMobileOtp function Return.' . json_encode($response));
        return $response;
    }
    public function personDatas(Request $request)
    {
        Log::info('PersonController > personDatas function Inside.' . json_encode($request->all()));
        $response = $this->personService->personDatas($request->all());
        Log::info('PersonController > personDatas function Return.' . json_encode($response));
        return $response;
    }
    public function personUpdate(Request $request)
    {
        Log::info('PersonController > personUpdate function Inside.' . json_encode($request->all()));
        $response = $this->personService->personUpdate($request->all());
        Log::info('PersonController > personUpdate function Return.' . json_encode($response));
        return $response;
    }
    public function personToMember(Request $request)
    {
        Log::info('PersonController > personToMember function Inside.' . json_encode($request->all()));
        $response = $this->personService->personToMember($request->all());
        Log::info('PersonController > personToMember function Return.' . json_encode($response));
        return $response;
    }

    public function emailOtpValidation(Request $request)
    {
        Log::info('PersonController > emailOtpValidation function Inside.' . json_encode($request->all()));
        $response = $this->personService->emailOtpValidation($request->all());
        Log::info('PersonController > emailOtpValidation function Return.' . json_encode($response));
        return $response;
    }
}
