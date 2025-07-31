<?php

namespace App\Http\Controllers\Api\Admin;

use App\Http\Controllers\Controller;
use App\Models\Booking;

class BookingController extends Controller
{
    public function index(){
        $bookings = Booking::with(['user', 'service'])->latest('booking_date')->get();

         return response()->json([
            'success' => true,
            'data' => $bookings,
        ]);
    }
}
