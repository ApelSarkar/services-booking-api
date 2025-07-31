<?php

use App\Http\Controllers\Api\Admin\BookingController;
use App\Http\Controllers\Api\Admin\ServiceController;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\Api\CustomerController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

Route::middleware('auth:sanctum')->group(function () {
    Route::prefix('admin')->middleware('is-admin')->group(function () {
        Route::post('/services', [ServiceController::class, 'store']);
        Route::put('/services/{id}', [ServiceController::class, 'update']);
        Route::delete('/services/{id}', [ServiceController::class, 'destroy']);
        Route::get('/bookings', [BookingController::class, 'index']);
    });

    Route::prefix('customer')->middleware('is-customer')->group(function () {
        Route::get('/services', [CustomerController::class, 'listServices']);
        Route::post('/bookings', [CustomerController::class, 'bookService']);
        Route::get('/bookings', [CustomerController::class, 'myBookings']);
    });
});
