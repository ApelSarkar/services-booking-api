<?php

namespace Database\Seeders;

use App\Models\Service;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Service::insert([
            [
                'name' => 'Haircut',
                'description' => 'Professional men’s and women’s haircut service.',
                'price' => 15.00,
                'status' => 'active',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Full Body Massage',
                'description' => '60-minute full body relaxation massage.',
                'price' => 50.00,
                'status' => 'active',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Manicure',
                'description' => 'Complete hand and nail care service.',
                'price' => 20.00,
                'status' => 'inactive',
                'created_at' => now(),
                'updated_at' => now(),
            ]
        ]);
    }
}
