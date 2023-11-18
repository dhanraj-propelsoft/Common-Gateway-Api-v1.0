<?php
use Illuminate\Support\Facades\Route;
// searching Part Start
//@Developer Dhana
Route::post('findCredential', 'App\Http\Controllers\Api\v1\Controller\PersonController@findCredential')->name('findCredential');
