<?php

namespace App\Http\Controllers\Api\v1\Repositories\Member;

use App\Http\Controllers\Api\v1\Interface\Member\MemberInterface;
use App\Models\Person;
use App\Models\Member;
use App\Models\UserOrganizationRelational;
use Illuminate\Support\Facades\DB;

class MemberRepository implements MemberInterface
{
    public function storeMember($model)
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
    public function findMemberDataByUid($uid)
    {
        return Member::where('uid', $uid)->whereNull('deleted_at')->first();
    }
    public function verifyMemberForMobile($datas)
    {
        return  Member::where('primary_email', $datas->memberName)
        ->orWhere('primary_mobile', $datas->memberName)
        ->first();

    }
    public function findMemberByMobileNo($mobileNo)
    {
       return Member::with('personDetails')->where('primary_mobile', $mobileNo)->whereNull('deleted_flag')->first();
    }
    public function checkMemberEmailByUid($email,$uid)
    {
       return Member::where(['uid'=>$uid,'primary_email'=>$email])->whereNull('deleted_flag')->first();
    }

    public function getPerviousDefaultOrganization($uid)
    {
        return UserOrganizationRelational::select('organization_details.org_name', 'user_organization_relationals.organization_id')
            ->leftjoin('organization_details', 'organization_details.org_id', '=', 'user_organization_relationals.organization_id')
            ->where(['uid' => $uid, ['default_org', '=', '1']])
            ->first();
    }
}
