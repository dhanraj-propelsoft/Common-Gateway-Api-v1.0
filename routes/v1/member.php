<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\v1\Controller\Member\MemberController;

 Route::post('memberLogout', [MemberController::class,'memberLogout'])->name('memberLogout');


