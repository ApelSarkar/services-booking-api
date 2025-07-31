<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return response()->json([
        'status' => 'OK',
        'message' => 'Service Booking API is running',
        'timestamp' => now(),
    ]);
});
