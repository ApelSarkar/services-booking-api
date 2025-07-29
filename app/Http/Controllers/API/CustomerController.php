<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\BookServiceRequest;
use App\Repositories\BookingRepositoryInterface;
use App\Repositories\ServiceRepositoryInterface;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    protected $serviceRepo;
    protected $bookingRepo;

    public function __construct(
        ServiceRepositoryInterface $serviceRepo,
        BookingRepositoryInterface $bookingRepo
    ) {
        $this->middleware('auth:sanctum');
        $this->serviceRepo = $serviceRepo;
        $this->bookingRepo = $bookingRepo;
    }

    public function listServices()
    {
        return response()->json($this->serviceRepo->getAll());
    }

    public function bookService(BookServiceRequest $request)
    {
        $validated = $request->validated();

        $booking = $this->bookingRepo->create([
            'user_id' => auth()->id(),
            'service_id' => $validated['service_id'],
            'booking_date' => $validated['booking_date'],
        ]);

        return response()->json([
            'message' => 'Booking created',
            'booking' => $booking,
        ], 201);
    }

    public function myBookings()
    {
        return response()->json($this->bookingRepo->getUserBookings(auth()->id()));
    }
}
