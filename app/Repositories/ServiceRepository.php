<?php
namespace App\Repositories;

use App\Models\Service;
use App\Repositories\ServiceRepositoryInterface;

class ServiceRepository implements ServiceRepositoryInterface
{
    public function getAll()
    {
        return Service::all();
    }
}

?>