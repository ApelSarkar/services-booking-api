<?php
namespace App\Repositories;

interface BookingRepositoryInterface
{
    public function create(array $data);
    public function getUserBookings($userId);
}
?>