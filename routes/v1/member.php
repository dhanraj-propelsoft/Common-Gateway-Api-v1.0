<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\v1\Controller\Member\MemberController;

 Route::post('storeMember', [MemberController::class,'storeMember'])->name('storeMember');
 Route::post('setPasswordForMember', [MemberController::class,'setPasswordForMember'])->name('setPasswordForMember');
 Route::post('passwordUpdateForMember', [MemberController::class,'passwordUpdateForMember'])->name('passwordUpdateForMember');
 Route::post('memberCreation', [MemberController::class,'memberCreation'])->name('memberCreation');
 Route::post('memberLogout', [MemberController::class,'memberLogout'])->name('memberLogout');
 Route::post('findMobileNumber',[MemberController::class,'findMobileNumber'])->name('findMobileNumber');


