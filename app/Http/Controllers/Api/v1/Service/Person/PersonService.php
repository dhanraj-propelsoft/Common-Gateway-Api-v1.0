<?php

namespace App\Http\Controllers\Api\v1\Service\Person;

use App\Http\Controllers\Api\v1\Interface\Member\MemberInterface;
use App\Http\Controllers\Api\v1\Interface\Person\PersonInterface;
use App\Http\Controllers\Api\v1\Service\Common\CommonService;
use Carbon\Carbon;
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
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;

class PersonService
{
    protected $personInterface, $commonService;
    public function __construct(PersonInterface $personInterface, CommonService $commonService, MemberInterface $memberInterface)
    {
        $this->personInterface = $personInterface;
        $this->commonService = $commonService;
        $this->memberInterface = $memberInterface;

    }
    public function findCredential($datas)
    {
        $datas = (object) $datas;
        $checkPersonMobile = $this->personInterface->checkPersonByMobileNo($datas->mobileNumber);
        $result = ['type' => 3, 'status' => 'freshMember'];
        return $this->commonService->sendResponse($result, true);
    }
    public function findMobileNumber($datas)
    {

        $datas = (object) $datas;
        $model = $this->memberInterface->findMemberByMobileNo($datas->mobileNumber);

        if ($model) {
            $memberName = $model->personDetails->first_name;
            $memberUid = $model->personDetails->uid;
            $memberSatge = $model->pfm_stage_id;

            $result = [
                'type' => 1,
                'stage' => $memberSatge,
                'memberName' => $memberName,
                'memberUid' => $memberUid,
                'mobileNumber' => $datas->mobileNumber,
                'status' => "MemberOnly"];
        } else {
            $result = ['type' => 2,
                'mobileNumber' => $datas->mobileNumber,
                'status' => "checkingPerson"];
        }
        return $this->commonService->sendResponse($result, "");
    }
    public function storePerson($datas, $type = null)
    {

        $datas['personUid'] = isset($datas['personUid']) ? $datas['personUid'] : null;

        $datas = (object) $datas;
        $personModel = $this->convertToPersonModel($datas);
        $personDetailModel = $this->convertToPersonDetailModel($datas);
        $personEmailModel = $this->convertToPersonEmailModel($datas);
        $personMobileModel = $this->convertToPersonMobileModel($datas);
        $personProfileModel = $this->convertToPersonProfileModel($datas);
        $personAnniversaryDate = $this->convertToPersonAnniversaryDate($datas);

        $personAnotherEmailModel = array();

        if (isset($datas->secondEmail) && !in_array(null, $datas->secondEmail)) {
            $personAnotherEmailModel = $this->convertToPersonEmailModelAnother($datas);
        }
        $personAnotherMobileModel = array();
        if (isset($datas->secondNumber) && !in_array(null, $datas->secondNumber)) {
            $personAnotherMobileModel = $this->convertToPersonMobileModelAnother($datas);
        }
        $personWebLink = array();
        if (isset($datas->webLinks) && !in_array(null, $datas->webLinks)) {
            $personWebLink = $this->convertToPersonWebLink($datas);
        }
        $personOtherLanguage = array();
        if ((isset($datas->otherLanguage) && $datas->otherLanguage !== null) || isset($datas->motherLanguage) && !in_array(null, $datas->motherLanguage)) {
            $personOtherLanguage = $this->convertToPersonOtherLanguage($datas);
        }

        $personIdDocument = array();
        if ((isset($datas->idDocumentType) && $datas->idDocumentType !== null)) {
            $personIdDocument = $this->convertToPersonIdDocument($datas);
        }
        $personEducationModel = array();
        if (isset($datas->Qualification) && !in_array(null, $datas->Qualification)) {
            $personEducationModel = $this->convertToPersonEducation($datas);
        }
        $personProfessionModel = array();
        if (isset($datas->ProfessionDepartment) && !in_array(null, $datas->ProfessionDepartment)) {
            $personProfessionModel = $this->convertToPersonProfession($datas);
        }

        $personCommonAddressModel = array();
        $personAddressId = array();
        if ((isset($datas->addressOf) && $datas->addressOf !== null)) {
            $addressId = isset($datas->propertyAddressId) ? $datas->propertyAddressId : null;
            Log::info('PersonService > addressId function Inside.' . json_encode($addressId));
            if ($addressId) {
                for ($i = 0; $i < count($datas->propertyAddressId); $i++) {
                    $perviousAddress = $this->personInterface->checkPerivousAddressById($datas->propertyAddressId[$i], $datas->personUid);
                }
            }
            $personCommonAddressModel = $this->convertToPersonCommonAddress($datas);
            $personAddressId = $this->convertToPersonAddressId($datas);
            Log::info('PersonService > personAddressId function Return.' . json_encode($personAddressId));

        }
        $allModels = [
            'personModel' => $personModel,
            'personDetailModel' => $personDetailModel,
            'personEmailModel' => $personEmailModel,
            'personMobileModel' => $personMobileModel,
            'personAnotherEmailModel' => $personAnotherEmailModel,
            'personAnotherMobileModel' => $personAnotherMobileModel,
            'personWebLink' => $personWebLink,
            'personOtherLanguage' => $personOtherLanguage,
            'personIdDocument' => $personIdDocument,
            'personEducationModel' => $personEducationModel,
            'personProfessionModel' => $personProfessionModel,
            'personCommonAddressModel' => $personCommonAddressModel,
            'personAddressId' => $personAddressId,
            'personAnniversaryDate' => $personAnniversaryDate,
            'personProfileModel' => $personProfileModel,

        ];
        $personData = $this->personInterface->storePerson($allModels);
        log::info('allModels' . json_encode($personData));

        Log::info('PersonService > storePerson function Return.' . json_encode($personData));
        if ($type) {
            return $personData;
        } else {
            if ($personData['message'] == "Success") {
                if (!$datas->personUid) {
                    $uid = $personData['data']->uid->toString();
                    $createTableBasedUid = $this->createPersonTableByUid($uid);
                }
                return $this->commonService->sendResponse($personData['data'], $personData['message']);
            } else {
                return $this->commonService->sendError($personData['data'], $personData['message']);
            }
        }
    }

    public function convertToPersonModel($datas)
    {
        Log::info('PersonService > uidByPerson.' . json_encode($datas->personUid));
        if ($datas->personUid) {
            $model = $this->personInterface->getPersonByUid($datas->personUid);
        } else {
            $model = new Person();
            $model->uid = Str::uuid();
        }
        $model->pfm_stage_id = isset($datas->stageId) ? $datas->stageId : 1;
        $model->pfm_origin_id = isset($datas->originId) ? $datas->originId : 1;
        $model->pfm_existence_id = isset($datas->existingId) ? $datas->existingId : 1;
        $model->reason = isset($datas->reason) ? $datas->reason : null;
        $model->pfm_active_status_id = isset($datas->activeStatusId) ? $datas->activeStatusId : 1;
        Log::info('PersonService > personUid .' . json_encode($model));
        return $model;
    }

    public function convertToPersonDetailModel($datas)
    {
        Log::info('PersonService > convertToPersonDetailModel function Inside.' . json_encode($datas));
        if ($datas->personUid) {
            $model = $this->personInterface->getPersonDatasByUid($datas->personUid);
        } else {
            $model = new PersonDetails();
        }

        $model->pims_person_salutation_id = isset($datas->salutationId) ? $datas->salutationId : null;
        $model->first_name = $datas->firstName;
        $model->middle_name = isset($datas->middleName) ? $datas->middleName : null;
        $model->last_name = isset($datas->lastName) ? $datas->lastName : null;
        $model->nick_name = isset($datas->nickName) ? $datas->nickName : null;
        $date = Carbon::createFromFormat('d-m-Y', $datas->dob)->format('Y-m-d');
        $model->dob = $date;
        $model->birth_place = isset($datas->birthCity) ? $datas->birthCity : null;
        $model->pims_person_marital_status_id = isset($datas->maritalStatus) ? $datas->maritalStatus : null;
        $model->pims_person_gender_id = isset($datas->genderId) ? $datas->genderId : null;
        $model->pims_person_blood_group_id = isset($datas->bloodGroup) ? $datas->bloodGroup : null;
        $model->pfm_survial_id = isset($datas->survialId) ? $datas->survialId : 1;
        $model->pims_person_country_id = isset($datas->countryId) ? $datas->countryId : null;
        $model->decesaed_date = isset($datas->decesaedDate) ? $datas->decesaedDate : null;
        $model->comments = isset($datas->comment) ? $datas->comment : null;
        $model->pfm_active_status_id = isset($datas->activeStatusId) ? $datas->activeStatusId : 1;
        Log::info('PersonService > convertToPersonDetailModel function Return.' . json_encode($model));

        return $model;
    }
    public function convertToPersonEmailModel($datas)
    {
        Log::info('PersonService > convertToPersonEmailModel function Inside.' . json_encode($datas));
        if ($datas->personUid) {
            $model = $this->personInterface->getPersonEmailByUid($datas->personUid);
        } else {
            $model = new PersonEmail();
        }
        $model->email = $datas->email;
        $model->email_cachet_id = isset($datas->cachetId) ? $datas->cachetId : 1;
        $model->pfm_active_status_id = isset($datas->activeStatusId) ? $datas->activeStatusId : 1;
        Log::info('PersonService > convertToPersonEmailModel function Return.' . json_encode($model));
        return $model;
    }

    public function convertToPersonMobileModel($datas)
    {
        Log::info('PersonService > convertToPersonMobileModel function Inside.' . json_encode($datas));
        if ($datas->personUid) {
            $model = $this->personInterface->getPersonMobileNoByUid($datas->personUid, $datas->mobileNumber);
        } else {
            $model = new PersonMobile();
        }
        $model->mobile_no = $datas->mobileNumber;
        $model->country_id = isset($datas->countryId) ? $datas->countryId : null;
        $model->mobile_cachet_id = isset($datas->cachetId) ? $datas->cachetId : 1;
        $model->pfm_active_status_id = isset($datas->activeStatusId) ? $datas->activeStatusId : 1;
        Log::info('PersonService > convertToPersonMobileModel function Return.' . json_encode($model));
        return $model;
    }
    public function convertToPersonProfileModel($datas)
    {
        if (isset($datas->personProfile)) {
            $personPic = $this->personInterface->getPersonProfileByUid($datas->personUid);
            if ($personPic) {
                $filePathToDelete = storage_path('app/public/Profiles/' . $personPic->profile_pic);
                if (File::exists($filePathToDelete)) {
                    File::delete($filePathToDelete);
                    $personPic->delete();
                }
            }
            $decodedImageContents = base64_decode($datas->personProfile);
            $uniqueFilename = date('YmdHis') . '_' . uniqid() . '.jpg';
            $savePath = storage_path('app/public/Profiles/' . $uniqueFilename);
            Log::info('PersonService >  savePath function Return.' . json_encode($savePath));
            File::put($savePath, $decodedImageContents);
            $model = new PersonProfilePic();
            $model->uid = $datas->personUid;
            $model->profile_pic = $uniqueFilename;
            $model->profile_cachet_id = isset($datas->cachetId) ? $datas->cachetId : null;
            $model->pfm_active_status_id = isset($datas->activeStatusId) ? $datas->activeStatusId : 1;
            return $model;
        }
    }
    public function convertToPersonAnniversaryDate($datas)
    {
        Log::info('PersonService > PersonAnniversaryDate.' . json_encode($datas->personUid));

        if (isset($datas->anniversaryDate)) {
            if ($datas->personUid) {
                $model = $this->personInterface->getAnniversaryDate($datas->personUid);
            } else {
                $model = new personAnniversary();
                $model->uid = $datas->personUid;
            }
            $date = Carbon::createFromFormat('d-m-Y', $datas->anniversaryDate)->format('Y-m-d');
            $model->anniversary_date = $date;
            $model->occasions_id = isset($datas->occasionId) ? $datas->occasionId : null;
            $model->pfm_active_status_id = isset($datas->activeStatusId) ? $datas->activeStatusId : 1;
            Log::info('PersonService > PersonAnniversaryDate .' . json_encode($model));
            return $model;
        }
    }
    public function convertToPersonEmailModelAnother($datas)
    {
        $orgModel = [];
        Log::info('PersonService > convertToPersonEmailModelAnother function Inside.' . json_encode($datas));
        for ($i = 0; $i < count($datas->secondEmail); $i++) {
            $checkEmail = $this->personInterface->checkSecondaryEmailByUid($datas->secondEmail[$i], $datas->personUid);
            if ($checkEmail) {
                $checkEmail->uid = $datas->personUid;
                $checkEmail->email = $datas->secondEmail[$i];
                $checkEmail->email_cachet_id = 2;
                $checkEmail->save();
            } else {
                $model[$i] = new PersonEmail();
                $model[$i]->email = $datas->secondEmail[$i];
                $model[$i]->email_cachet_id = 2;
                array_push($orgModel, $model[$i]);
            }
        }
        Log::info('PersonService > convertToPersonEmailModelAnother3 function Return.' . json_encode($orgModel));
        return $orgModel;
    }
    public function convertToPersonMobileModelAnother($datas)
    {
        $orgModel = [];
        Log::info('PersonService > convertToPersonMobileModelAnother function Inside.' . json_encode($datas));
        for ($i = 0; $i < count($datas->secondNumber); $i++) {
            $checkMobile = $this->personInterface->checkSecondaryMobileNumberByUid($datas->secondNumber[$i], $datas->personUid);
            if ($checkMobile) {
                $checkMobile->uid = $datas->personUid;
                $checkMobile->mobile_no = $datas->secondNumber[$i];
                $checkMobile->country_id = isset($datas->countryId[$i]) ? $datas->countryId[$i] : null;
                $checkMobile->mobile_cachet_id = isset($datas->cachetId[$i]) ? $datas->cachetId[$i] : null;
                $checkMobile->pfm_active_status_id = isset($datas->activeStatusId[$i]) ? $datas->activeStatusId[$i] : 1;
                $checkMobile->save();
            } else {
                $model[$i] = new PersonMobile();
                $model[$i]->mobile_no = $datas->secondNumber[$i];
                $model[$i]->country_id = isset($datas->countryId[$i]) ? $datas->countryId[$i] : null;
                $model[$i]->mobile_cachet_id = isset($datas->cachetId[$i]) ? $datas->cachetId[$i] : 2;
                $model[$i]->pfm_active_status_id = isset($datas->activeStatusId[$i]) ? $datas->activeStatusId[$i] : 1;
                array_push($orgModel, $model[$i]);
            }
        }
        Log::info('PersonService > convertToPersonMobileModelAnother function Return.' . json_encode($orgModel));
        return $orgModel;
    }
    public function convertToPersonWebLink($datas)
    {
        $orgModel = [];
        Log::info('PersonService > convertToPersonWebLink function Inside.' . json_encode($datas));
        $link = $datas->webLinks;
        for ($i = 0; $i < count($link); $i++) {
            if ($link[$i]) {
                $model[$i] = new WebLink();
                $model[$i]->web_add = $link[$i];
                $model[$i]->web_cachet_id = isset($datas->cachetId[$i]) ? $datas->cachetId[$i] : null;
                $model[$i]->pfm_active_status_id = isset($datas->activeStatusId[$i]) ? $datas->activeStatusId[$i] : 1;
                array_push($orgModel, $model[$i]);
            }
        }
        Log::info('PersonService > convertToPersonWebLinkEnd function Return.' . json_encode($orgModel));
        return $orgModel;
    }
    public function convertToPersonOtherLanguage($datas)
    {
        $orgModel = [];
        Log::info('PersonService > convertToPersonOtherLanguage function Inside.' . json_encode($datas));
        if (isset($datas->otherLanguage)) {
            if ($datas->personUid) {
                $models = $this->personInterface->motherTongueByUid($datas->personUid);
            }
            if (isset($models) && count($models)) {
                foreach ($models as $model) {
                    $model->delete();
                }
            }
            for ($i = 0; $i < count($datas->otherLanguage); $i++) {
                if ($datas->otherLanguage[$i]) {
                    $result[$i] = new PersonLanguage();
                    $result[$i]->pims_com_language_id = $datas->otherLanguage[$i];
                    $result[$i]->is_mother_tongue = $datas->motherLanguage;
                    $result[$i]->spoken = isset($datas->spoken) ? $datas->spoken : null;
                    $result[$i]->read = isset($datas->read) ? $datas->read : null;
                    $result[$i]->write = isset($datas->write) ? $datas->write : null;
                    $result[$i]->pfm_active_status_id = isset($datas->activeStatusId) ? $datas->activeStatusId : 1;
                    array_push($orgModel, $result[$i]);
                }
            }
        }
        if ($datas->motherLanguage && empty($orgModel)) {
            $language = $datas->motherLanguage;
            if ($datas->personUid) {
                $models = $this->personInterface->motherTongueByUid($datas->personUid);
            }
            if (isset($models) && count($models)) {
                foreach ($models as $model) {
                    $model->delete();
                }
            }
            for ($i = 0; $i < count($language); $i++) {
                if ($language[$i]) {
                    $result[$i] = new PersonLanguage();
                    $result[$i]->is_mother_tongue = $language[$i];
                    $result[$i]->spoken = isset($datas->spoken) ? $datas->spoken : null;
                    $result[$i]->read = isset($datas->read) ? $datas->read : null;
                    $result[$i]->write = isset($datas->write) ? $datas->write : null;
                    $result[$i]->pfm_active_status_id = isset($datas->activeStatusId) ? $datas->activeStatusId : 1;
                    array_push($orgModel, $result[$i]);
                }
            }
        }
        Log::info('PersonService > convertToPersonOtherLanguage123 function Return.' . json_encode($orgModel));
        return $orgModel;
    }
    public function convertToPersonIdDocument($datas)
    {
        $orgModel = [];
        Log::info('PersonService > convertToPersonIdDocument function Inside.' . json_encode($datas));
        for ($i = 0; $i < count($datas->idDocumentType); $i++) {
            if ($datas->idDocumentType[$i]) {
                $model[$i] = new IdDocumentType();
                $model[$i]->pims_person_doc_type_id = $datas->idDocumentType[$i];
                $model[$i]->Doc_no = $datas->documentNumber[$i];
                $model[$i]->doc_validity = $datas->validTill[$i];
                $model[$i]->attachment = $datas->attachments[$i];
                $model[$i]->doc_cachet_id = isset($datas->cachetId[$i]) ? $datas->cachetId[$i] : null;
                $model[$i]->pfm_active_status_id = isset($datas->activeStatus[$i]) ? $datas->activeStatus[$i] : 1;
                array_push($orgModel, $model[$i]);
            }
        }
        Log::info('PersonService > convertToPersonIdDocument function Return.' . json_encode($orgModel));
        return $orgModel;
    }
    public function convertToPersonEducation($datas)
    {
        $orgModel = [];
        Log::info('PersonService > convertToPersonEducation function Inside.' . json_encode($datas));
        for ($i = 0; $i < count($datas->Qualification); $i++) {
            if ($datas->Qualification[$i]) {
                $model[$i] = new PersonEducation();
                $model[$i]->pims_person_qualification_id = $datas->Qualification[$i];
                $model[$i]->year_of_Pass = $datas->passedYear[$i];
                $model[$i]->mark = $datas->mark[$i];
                $model[$i]->pfm_active_status_id = isset($datas->activeStatusId[$i]) ? $datas->activeStatusId[$i] : null;
                array_push($orgModel, $model[$i]);
            }
        }
        Log::info('PersonService > convertToPersonEducation function Return.' . json_encode($orgModel));
        return $orgModel;
    }
    public function convertToPersonProfession($datas)
    {
        $orgModel = [];
        Log::info('PersonService > convertToPersonProfession function Inside.' . json_encode($datas));
        for ($i = 0; $i < count($datas->ProfessionDepartment); $i++) {
            if ($datas->ProfessionDepartment[$i]) {
                $model[$i] = new PersonProfession();
                $model[$i]->department_id = $datas->ProfessionDepartment[$i];
                $model[$i]->designation_id = $datas->Designation[$i];
                $model[$i]->org_id = isset($datas->organization[$i])?$datas->organization[$i]:Null;
                // $model[$i]->doj=$datas->joinDate[$i];
                //  $model[$i]->dor=$datas->reliveDate[$i];
                $model[$i]->experience = $datas->experinceYear[$i];
                $model[$i]->reason = isset($datas->reason[$i])?$datas->reason[$i]:Null;
                $model[$i]->pfm_active_status_id = isset($datas->activeStatusId[$i])?$datas->activeStatusId[$i]:Null;
                array_push($orgModel, $model[$i]);
            }
        }
        Log::info('PersonService > convertToPersonProfession function Return.' . json_encode($orgModel));
        return $orgModel;
    }
    public function convertToPersonCommonAddress($datas)
    {
        $orgModel = [];
        Log::info('PersonService > convertToPersonCommonAddress function Inside.' . json_encode($datas));
        for ($i = 0; $i < count($datas->addressOf); $i++) {
            if ($datas->addressOf[$i]) {
                $model[$i] = new PropertyAddress();
                $model[$i]->pims_com_address_type_id = isset($datas->addressOf[$i]) ? $datas->addressOf[$i] : null;
                $model[$i]->door_no = isset($datas->doorNo[$i]) ? $datas->doorNo[$i] : null;
                $model[$i]->building_name = isset($datas->buildingName[$i]) ? $datas->buildingName[$i] : null;
                $model[$i]->pin = isset($datas->pinCode[$i]) ? $datas->pinCode[$i] : null;
                $model[$i]->area = isset($datas->area[$i]) ? $datas->area[$i] : null;
                $model[$i]->street = isset($datas->street[$i]) ? $datas->street[$i] : null;
                $model[$i]->land_mark = isset($datas->landMark[$i]) ? $datas->landMark[$i] : null;
                $model[$i]->pims_com_district_id = isset($datas->district[$i]) ? $datas->district[$i] : null;
                $model[$i]->pims_com_city_id = isset($datas->city[$i]) ? $datas->city[$i] : null;
                $model[$i]->pims_com_state_id = isset($datas->state[$i]) ? $datas->state[$i] : null;
                $model[$i]->pims_com_country_id = isset($datas->country[$i]) ? $datas->country[$i] : null;
                $model[$i]->location = isset($datas->location[$i]) ? $datas->location[$i] : null;
                $model[$i]->google_link = isset($datas->googleLink[$i]) ? $datas->googleLink[$i] : null;
                $model[$i]->latitude = isset($datas->latitude[$i]) ? $datas->latitude[$i] : null;
                $model[$i]->longitude = isset($datas->longitude[$i]) ? $datas->longitude[$i] : null;
                $model[$i]->pfm_active_status_id = isset($datas->longitude[$i]) ? $datas->longitude[$i] : null;

                array_push($orgModel, $model[$i]);
            }
        }
        Log::info('PersonService > convertToPersonCommonAddress function Return.' . json_encode($orgModel));

        return $orgModel;
    }
    public function convertToPersonAddressId($datas)
    {
        $orgModel = [];
        for ($i = 0; $i < count($datas->addressOf); $i++) {
            $model[$i] = new PersonAddress();
            // $model[$i]->uid = $datas->personUid;
            $model[$i]->address_cachet_id = 1;
            array_push($orgModel, $model[$i]);
        }
        Log::info('PersonService > convertToPersonAddressId function Inside.' . json_encode($orgModel));
        return $orgModel;
    }
    public function createPersonTableByUid($uid)
    {
        if ($uid) {
            Schema::create($uid, function ($table) {
                $table->id();
                $table->string('org_id');
                $table->integer('pfm_active_status_id')->nullable();
                $table->integer('deleted_flag')->nullable();
                $table->timestamps();
                $table->timestamp('deleted_at')->nullable();
            });
        }

    }
    public function storeTempPerson($datas)
    {

        Log::info('PersonService > storeTempPerson function Inside.' . json_encode($datas));
        $datas = (object) $datas;
        $tempId = isset($datas->tempId) ? $datas->tempId : Null;
        $model = $this->convertToTempPersonModel($datas, $tempId);
        $storeTempPerson = $this->personInterface->storeTempPerson($model);
        Log::info('PersonService > storeTempPerson function Return.' . json_encode($storeTempPerson));

        if ($storeTempPerson['message'] == "Success") {

            $responseModel = $storeTempPerson['data'];
            if ($responseModel->pfm_stage_id == 1) {
                $salutationModel = $this->commonService->getSalutation();
                $responseData = ['tempModel' => $storeTempPerson['data'], 'salutationModel' => $salutationModel];
            } else if ($responseModel->pfm_stage_id == 2) {
                $gender = $this->commonService->getAllGender();
                $bloodGroup = $this->commonService->getAllBloodGroup();
                $responseData = ['tempModel' => $responseModel, 'gender' => $gender, 'bloodGroup' => $bloodGroup];
            } elseif ($responseModel->pfm_stage_id == 3) {
                $temp = ['tempId' => $tempId];
                $storeTempPerson1 = $this->resendOtp($temp);
                log::info('personservice > ' . json_encode($storeTempPerson1));
                return $storeTempPerson1;

            }
            return $this->commonService->sendResponse($responseData, $storeTempPerson['message']);
        } else {
            return $this->commonService->sendError($storeTempPerson['data'], $storeTempPerson['message']);
        }
    }
    public function convertToTempPersonModel($datas, $id = null)
    {
        log::info('personService > convertToTempPersonModel ' . json_encode($datas));

        if ($id) {
            $model = TempPerson::findOrFail($id);
            log::info('findOrFail > ' . json_encode($model));
        } else {

            $model = new TempPerson();
        }
        if (isset($datas->mobileNumber)) {
            $model->mobile_no = isset($datas->mobileNumber) ? $datas->mobileNumber : "";
        }
        if (isset($datas->email)) {
            $model->email = isset($datas->email) ? $datas->email : "";
        }

        $salutation = isset($datas->salutation) ? $datas->salutation : "";
        if ($salutation) {
            $model['personal_data->salutation'] = $salutation;
        }

        $firstName = isset($datas->firstName) ? $datas->firstName : "";
        $middleName = isset($datas->middleName) ? $datas->middleName : "";
        $lastName = isset($datas->lastName) ? $datas->lastName : "";
        $nickName = isset($datas->nickName) ? $datas->nickName : "";
        $gender = isset($datas->gender) ? $datas->gender : "";
        $dob = isset($datas->dob) ? $datas->dob : "";
        $bloodGroup = isset($datas->bloodGroup) ? $datas->bloodGroup : "";
        $otp = isset($datas->otp) ? $datas->otp : "";
        $stage = isset($datas->stage) ? $datas->stage : "";
        if ($stage) {
            log::info('personService > stage' . json_encode($datas->stage));
            $model->pfm_stage_id = $stage;
        }

        if ($firstName) {
            $model['personal_data->firstName'] = $firstName;
        }
        if ($middleName) {
            $model['personal_data->middleName'] = $middleName;
        }
        if ($lastName) {
            $model['personal_data->lastName'] = $lastName;
        }
        if ($nickName) {
            $model['personal_data->nickName'] = $nickName;
        }
        if ($gender) {
            $model['personal_data->gender'] = $gender;
        }
        if ($bloodGroup) {
            $model['personal_data->bg'] = $bloodGroup;
        }
        if ($dob) {
            $model['personal_data->dob'] = $dob;
        }
        if ($otp) {
            log::info('personService > otp' . json_encode($datas->otp));
            $model->otp = $otp;
        }

        return $model;
    }
    public function resendOtp($datas)
    {
        Log::info('PersonService > resendOtp function Inside.' . json_encode($datas));
        $datas = (object) $datas;
        $tempId = $datas->tempId;
        $otp = random_int(1000, 9999);
        $newDatas = ['otp' => $otp, 'stage' => 4];
        $newDatas = (object) $newDatas;
        $model = $this->convertToTempPersonModel($newDatas, $tempId);
        $storeTempPerson = $this->personInterface->storeTempPerson($model);
        Log::info('PersonService > findMobileNumber function Return.' . json_encode($storeTempPerson));
        if ($storeTempPerson['message'] == "Success") {
            return $this->commonService->sendResponse($storeTempPerson['data'], $storeTempPerson['message']);
        } else {
            return $this->commonService->sendError($storeTempPerson['data'], $storeTempPerson['message']);
        }
    }
    public function personOtpValidation($datas)
    {

        Log::info('PersonService > personOtpValidation function Inside.' . json_encode($datas));
        $datas = (object) $datas;
        $tempPersonModel = $this->personInterface->findTempPersonById($datas->tempId);
        Log::info('PersonService > personOtpValidation function Return.' . json_encode($tempPersonModel));
        if ($tempPersonModel) {
            if ($datas->otp == $tempPersonModel->otp) {
                $personalDatas = json_decode($tempPersonModel->personal_data, true);
                $mobileNumber = isset($tempPersonModel['mobile_no']) ? $tempPersonModel['mobile_no'] : null;
                $email = isset($tempPersonModel['email']) ? $tempPersonModel['email'] : null;
                $salutation = isset($personalDatas['salutation']) ? $personalDatas['salutation'] : null;
                $firstName = isset($personalDatas['firstName']) ? $personalDatas['firstName'] : null;
                $middleName = isset($personalDatas['middleName']) ? $personalDatas['middleName'] : null;
                $lastName = isset($personalDatas['lastName']) ? $personalDatas['lastName'] : null;
                $nickName = isset($personalDatas['nickName']) ? $personalDatas['nickName'] : null;
                $gender = isset($personalDatas['gender']) ? $personalDatas['gender'] : null;
                $bloodGroup = isset($personalDatas['bg']) ? $personalDatas['bg'] : null;
                $dob = isset($personalDatas['dob']) ? $personalDatas['dob'] : null;
                $personDatas = ['mobileNumber' => $mobileNumber, 'email' => $email, 'salutationId' => $salutation, 'firstName' => $firstName, 'middleName' => $middleName, 'lastName' => $lastName, 'nickName' => $nickName, 'genderId' => $gender, 'bloodGroup' => $bloodGroup, 'dob' => $dob];

                $personModel = $this->storePerson($personDatas);
                $tempPersonModel->delete();
                return $personModel;
            } else {
                return $this->commonService->sendError(['tempId' => $tempPersonModel->id, 'mobileNumber' => $tempPersonModel->mobile_no]);
            }
        } else {
            return $this->commonService->sendError(['InValid Person', false]);
        }
    }
}
