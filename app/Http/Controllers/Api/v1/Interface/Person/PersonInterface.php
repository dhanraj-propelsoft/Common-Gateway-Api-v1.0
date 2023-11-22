<?php

namespace App\Http\Controllers\Api\v1\Interface\Person;

interface PersonInterface
{
    public function checkPersonByMobileNo($mobileNumber);
    public function getPersonByUid($uid);
    public function checkPersonEmailByUid($email,$uid);
    public function getPersonDatasByUid($uid);
    public function getPersonEmailByUid($uid);
    public function getPersonMobileNoByUid($uid,$mobile);
    public function getPersonProfileByUid($uid);
    public function getAnniversaryDate($uid);
    public function checkSecondaryEmailByUid($email,$uid);
    public function checkSecondaryMobileNumberByUid($mobile,$uid);
    public function motherTongueByUid($uid);
    public function checkPerivousAddressById($addressId,$uid);
    public function storePerson($allModels);
    public function storeTempPerson($model);
    public function findTempPersonById($id);











}
