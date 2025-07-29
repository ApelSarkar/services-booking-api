<?php
namespace App\Repositories;

use App\Models\Booking;
use App\Repositories\BookingRepositoryInterface;

class BookingRepository implements BookingRepositoryInterface
{
    public function create(array $data)
    {
        return Booking::create($data);
    }

    public function getUserBookings($userId)
    {
        return Booking::where('user_id', $userId)->get();
    }
}

?>