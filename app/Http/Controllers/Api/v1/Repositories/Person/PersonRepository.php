<?php

namespace App\Http\Controllers\Api\v1\Repositories\Person;

use App\Http\Controllers\Api\v1\Interface\Person\PersonInterface;
use App\Models\Person;
use App\Models\PersonAddress;
use App\Models\personAnniversary;
use App\Models\PersonDetails;
use App\Models\PersonEmail;
use App\Models\PersonLanguage;
use App\Models\PersonMobile;
use App\Models\PersonProfilePic;
use App\Models\PropertyAddress;
use App\Models\TempEmail;
use App\Models\TempMobile;
use App\Models\TempPerson;
use App\Models\Member;
use Carbon\Carbon;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;

class PersonRepository implements PersonInterface
{

    public function checkPersonByMobileNo($mobile)
    {

        return PersonMobile::where(['mobile_no' => $mobile, ['mobile_cachet_id', '=', '1']])->whereNull('deleted_flag')->first();
    }
    public function checkPersonEmailByUid($email, $uid)
    {
        return PersonEmail::where(['uid' => $uid, 'email' => $email, 'email_cachet_id' => 1])->whereNull('deleted_flag')->first();
    }
    public function getPersonByUid($uid)
    {
        return Person::where('uid', $uid)->whereNull('deleted_flag')->first();
    }
    public function getPersonDatasByUid($uid)
    {
        return PersonDetails::where('uid', $uid)->whereNull('deleted_flag')->first();
    }
    public function getPersonEmailByUid($uid)
    {
        return PersonEmail::where(['uid' => $uid, ['email_cachet_id', '=', 1]])->whereNull('deleted_flag')->first();
    }
    public function getPersonMobileNoByUid($uid, $mobile)
    {
        return PersonMobile::where(['uid' => $uid, 'mobile_no' => $mobile])->whereNull('deleted_flag')->first();
    }
    public function getPersonProfileByUid($uid)
    {
        return PersonProfilePic::where('uid', $uid)->whereNull('deleted_flag')->first();
    }
    public function getAnniversaryDate($uid)
    {
        return personAnniversary::where('uid', $uid)->whereNull('deleted_flag')->first();
    }
    public function checkSecondaryEmailByUid($email, $uid)
    {
        return PersonEmail::where(['uid' => $uid, 'email' => $email, ['email_cachet_id', '=', '2']])->whereNull('deleted_at')->first();

    }
    public function checkSecondaryMobileNumberByUid($mobile, $uid)
    {
        return PersonMobile::where(['uid' => $uid, 'mobile_no' => $mobile, ['mobile_cachet_id', '=', '2']])->first();
    }

    public function motherTongueByUid($uid)
    {
        return PersonLanguage::where('uid', $uid)->whereNull('deleted_at')->get();
    }
    public function checkPerivousAddressById($addressId, $uid)
    {

        $porpertyAddress = PropertyAddress::where('id', $addressId)->delete();
        $personAddress = PersonAddress::where(['uid' => $uid, 'com_property_address_id' => $addressId])->delete();
        return true;
    }
    public function storePerson($allModels)
    {

        try {

            $result = DB::transaction(function () use ($allModels) {

                $personModel = $allModels['personModel'];
                $personDetailModel = $allModels['personDetailModel'];
                $personEmailModel = $allModels['personEmailModel'];
                $personMobileModel = $allModels['personMobileModel'];
                $personAnotherEmailModel = $allModels['personAnotherEmailModel'];
                $personAnotherMobileModel = $allModels['personAnotherMobileModel'];
                $personWebLinkModel = $allModels['personWebLink'];
                $personOtherLanguage = $allModels['personOtherLanguage'];
                $personIdDocument = $allModels['personIdDocument'];
                $personEducationModel = $allModels['personEducationModel'];
                $personProfessionModel = $allModels['personProfessionModel'];
                $personCommonAddressModel = $allModels['personCommonAddressModel'];
                $personAddressId = $allModels['personAddressId'];
                $personAnniversaryDate = $allModels['personAnniversaryDate'];
                $personProfileModel = $allModels['personProfileModel'];
                $personModel->save();
                $personDetailModel->ParentPerson()->associate($personModel, 'uid', 'uid');
                $personMobileModel->ParentPerson()->associate($personModel, 'uid', 'uid');
                $personEmailModel->ParentPerson()->associate($personModel, 'uid', 'uid');
                if ($personAnniversaryDate) {
                    $personAnniversaryDate->ParentPerson()->associate($personModel, 'uid', 'uid');
                    $personAnniversaryDate->save();
                }
                if ($personProfileModel) {
                    $personProfileModel->ParentPerson()->associate($personModel, 'uid', 'uid');
                    $personProfileModel->save();

                }
                $personDetailModel->save();
                $personMobileModel->save();
                $personEmailModel->save();

                for ($i = 0; $i < count($personAnotherEmailModel); $i++) {
                    $personAnotherEmailModel[$i]->ParentPerson()->associate($personModel, 'uid', 'uid');
                    $personAnotherEmailModel[$i]->save();
                }

                for ($i = 0; $i < count($personAnotherMobileModel); $i++) {
                    $personAnotherMobileModel[$i]->ParentPerson()->associate($personModel, 'uid', 'uid');
                    $personAnotherMobileModel[$i]->save();
                }

                for ($i = 0; $i < count($personWebLinkModel); $i++) {
                    $personWebLinkModel[$i]->ParentPerson()->associate($personModel, 'uid', 'uid');
                    $personWebLinkModel[$i]->save();
                }

                for ($i = 0; $i < count($personOtherLanguage); $i++) {
                    $personOtherLanguage[$i]->ParentPerson()->associate($personModel, 'uid', 'uid');
                    $personOtherLanguage[$i]->save();
                }
                for ($i = 0; $i < count($personIdDocument); $i++) {
                    $personIdDocument[$i]->ParentPerson()->associate($personModel, 'uid', 'uid');
                    $personIdDocument[$i]->save();
                }
                for ($i = 0; $i < count($personEducationModel); $i++) {
                    $personEducationModel[$i]->ParentPerson()->associate($personModel, 'uid', 'uid');
                    $personEducationModel[$i]->save();
                }
                for ($i = 0; $i < count($personProfessionModel); $i++) {
                    $personProfessionModel[$i]->ParentPerson()->associate($personModel, 'uid', 'uid');
                    $personProfessionModel[$i]->save();
                }
                for ($i = 0; $i < count($personCommonAddressModel); $i++) {
                    $personCommonAddressModel[$i]->save();
                }
                for ($i = 0; $i < count($personAddressId); $i++) {
                    $personAddressId[$i]->ParentComAddress()->associate($personCommonAddressModel[$i], 'com_property_address_id', 'id');
                    $personAddressId[$i]->ParentPerson()->associate($personModel, 'uid', 'uid');
                    $personAddressId[$i]->save();
                }
                return [
                    'message' => "Success",
                    'data' => $personProfileModel ?? $personDetailModel,
                ];
            });
            return $result;
        } catch (\Exception $e) {

            return [

                'message' => "failed",
                'data' => $e,
            ];
        }
    }
    public function storeTempPerson($model)
    {

        try {
            $result = DB::transaction(function () use ($model) {

                $model->save();
                return [
                    'message' => "Success",
                    'data' => $model,
                ];
            });

            return $result;
        } catch (\Exception $e) {

            return [

                'message' => "failed",
                'data' => $e,
            ];
        }
    }
    public function findTempPersonById($id)
    {

        return TempPerson::findOrFail($id);
    }
    public function setOtpForPersonPrimaryEmail($uid, $email, $otp)
    {
        return PersonEmail::where(["uid" => $uid, 'email' => $email])->update(["otp_received" => $otp]);
    }
    public function checkMemberByUid($uid)
    {
        return Member::where('uid', $uid)->whereNull('deleted_at')->first();
    }
    public function setOtpMobileNo($uid, $mobile, $otp)
    {
        return PersonMobile::where(["uid" => $uid, 'mobile_no' => $mobile])->update(['otp_received' => $otp]);
    }
    public function findEmailByPersonEmail($email)
    {
        $model = PersonEmail::where('email', $email)->whereIn('email_cachet_id', [1, 2])->get();
        return count($model) > 0 ? $model : null;
    }
    public function savePersonDatas($model)
    {
        try {
            $result = DB::transaction(function () use ($model) {

                $model->save();
                return [
                    'message' => "Success",
                    'data' => $model,
                ];
            });

            return $result;
        } catch (\Exception $e) {

            return [

                'message' => "failed",
                'data' => $e,
            ];
        }
    }
    public function personEmailStatusUpdate($uid, $email)
    {
        return PersonEmail::where(['uid' => $uid, 'email' => $email])->update(['email_validation_id' => 1, 'validation_updated_on' => Carbon::now()]);

    }
    public function setStageInMember($uid)
    {
        return Member::where('uid', $uid)->update(['pfm_stage_id' => 2]);
    }
    public function getPersonPrimaryDataByUid($uid)
    {

        $model = Person::with('personDetails', 'email', 'mobile', 'profilePic', 'personLanguage', 'personAnniversaryDate')
            ->whereHas('mobile', function ($query) {
                $query->where('mobile_cachet_id', 1);
            })
            ->whereHas('email', function ($query) {
                $query->where('email_cachet_id', 1);
            })
            ->where('uid', $uid)
            ->first()->toArray();
        return $model;

    }
    public function personAddressByuid($uid)
    {

        $model= PropertyAddress::with('ParentAddress')
            ->where('uid', $uid)
            ->get();

    }
    public function personSecondaryMobileByUid($uid)
    {
        return PersonMobile::where(['uid' => $uid, ['mobile_cachet_id', '=', '2']])->get();
    }
    public function personSecondaryEmailByUid($uid)
    {
        return PersonEmail::where(['uid' => $uid, ['email_cachet_id', '=', '2']])->get();
    }
    public function getPersonDataByEmail($email)
    {
        return Person::with('email', 'existMember')
        ->whereHas('email', function ($query) use ($email) {
            $query->whereIn('email_cachet_id', [1, 2])
                ->where('email', $email);
        })
        ->whereHas('existMember', function ($query) use ($email) {
            $query->where('primary_email', '!=', $email);
        })
        ->first();

    }
    public function getPersonDataByMobileNo($mobile)
    {
        return Person::with('mobile', 'existMember')
        ->whereHas('mobile', function ($query) use ($mobile) {
            $query->whereIn('mobile_cachet_id', [1, 2])
                ->where('mobile_no', $mobile);
        })
        ->whereHas('existMember', function ($query) use ($mobile) {
            $query->where('primary_mobile', '!=', $mobile);
        })
        ->first();

    }
    public function getAllDatasInMember($uid)
    {
        return Person::with('personDetails', 'email', 'mobile', 'profilePic', 'personDetails.gender', 'personDetails.bloodGroup', 'personAddress', 'personAddress.ParentComAddress', 'personEducation', 'personProfession', 'personLanguage')->where('uid', $uid)->first();
    }
    public function addSecondaryMobileNoForMember($model)
    {
        try {
            $result = DB::transaction(function () use ($model) {

                $model->save();
                return [
                    'message' => "Success",
                    'data' => $model,
                ];
            });
            return $result;
        } catch (\Exception $e) {
            return [
                'message' => "Failed",
                'data' => $e,
            ];
        }
    }
}
