<?php

namespace App\Http\Controllers\Api\v1\Interface;

interface PersonInterface
{
    public function checkPersonByMobileNo($mobileNumber);

    public function checkPersonEmailByUid($email,$uid);
}