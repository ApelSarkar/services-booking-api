<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\Api\CustomerController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

Route::middleware('auth:sanctum')->group(function () {
    Route::middleware('is-admin')->group(function () {

    });

    Route::middleware('is-customer')->group(function () {
        Route::get('/services', [CustomerController::class, 'listServices']);
        Route::post('/bookings', [CustomerController::class, 'bookService']);
        Route::get('/bookings', [CustomerController::class, 'myBookings']);
    });
});
