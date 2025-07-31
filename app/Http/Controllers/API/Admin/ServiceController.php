<?php

namespace App\Http\Controllers\Api\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreServiceRequest;
use App\Http\Requests\UpdateServiceRequest;
use App\Repositories\AdminServiceRepositoryInterface;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    protected $serviceRepo;

    public function __construct(AdminServiceRepositoryInterface $serviceRepo)
    {
        $this->serviceRepo = $serviceRepo;
    }

    public function store(StoreServiceRequest $request): JsonResponse
    {
        $service = $this->serviceRepo->create($request->validated());
        return response()->json(['message' => 'Service created', 'service' => $service], 201);
    }

    public function update(UpdateServiceRequest $request, $id): JsonResponse
    {
        $service = $this->serviceRepo->update($id, $request->validated());
        return response()->json(['message' => 'Service updated', 'service' => $service]);
    }

    public function destroy($id): JsonResponse
    {
        $this->serviceRepo->delete($id);
        return response()->json(['message' => 'Service deleted']);
    }
}
