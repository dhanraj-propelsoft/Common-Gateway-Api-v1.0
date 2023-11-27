<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\v1\Controller\Common\CommonController;



Route::get('getSalutation', [CommonController::class, 'getSalutation'])->name('getSalutation');
