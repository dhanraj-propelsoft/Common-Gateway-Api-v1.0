<?php

namespace App\Http\Controllers\Api\v1\Repositories;

use App\Http\Controllers\Api\v1\Interface\PersonInterface;
use App\Models\PersonEmail;
use App\Models\PersonMobile;

class PersonRepository implements PersonInterface
{

    public function checkPersonByMobileNo($mobile)
    {
       
        return PersonMobile::where(['mobile_no' => $mobile, ['mobile_cachet_id', '=', '1']])->first();
    }
    public function checkPersonEmailByUid($email, $uid)
    {
        return PersonEmail::where(['uid' => $uid, 'email' => $email, 'email_cachet_id' => 1])->first();
    }

}
