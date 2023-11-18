<?php

namespace App\Http\Controllers\Api\v1\Service;

use App\Http\Controllers\Api\v1\Interface\PersonInterface;
use Illuminate\Support\Facades\Log;

class PersonService
{
    protected $personInterface, $commonService;
    public function __construct(PersonInterface $personInterface, CommonService $commonService)
    {
        $this->personInterface = $personInterface;
        $this->commonService = $commonService;
    }
    public function findCredential($datas)
    {

        Log::info('PersonService > findCredential function Inside.' . json_encode($datas));
        $datas = (object) $datas;
        $checkPersonMobile = $this->personInterface->checkPersonByMobileNo($datas->mobileNumber);
        //dd($checkPersonMobile);

        $result = ['type' => 3, 'status' => 'freshMember'];

        return $this->commonService->sendResponse($result, "");
    }
}
