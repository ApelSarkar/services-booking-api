
## Simple Service Booking System API

This is a RESTful API built with **Laravel 12** for a simple service booking system. It allows admins to manage services and users to book services. The application follows Laravel best practices and includes proper relationships,follow repository design pattern, exception handling, and clean code organization.

## Features

- User registration and authentication (optional enhancement)
- Service management (create, update, delete)
- Booking services by users
- View bookings with related user and service info
- JSON API responses
- Clean error handling (404s, invalid routes)
- Eloquent relationships:
  - Each booking belongs to one user
  - Each booking belongs to one service

## Technologies Used

- Laravel 12
- Santum token-based authentication 
- MySQL (or your preferred relational database)
- Laravel Eloquent ORM
- RESTful routing
- Laravel exception handling (via `withExceptions()`)

## Getting Started

### Prerequisites

- PHP >= 8.0
- Composer
- MySQL (or other supported DB)
- Laravel Installer (optional)
- Laravel Sail or Laragon (optional for dev environment)

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/ApelSarkar/services-booking-api.git
   cd simple-service-booking-system

2. **Install Dependencies**:
   ```bash
   composer install
   composer require laravel/sanctum
   php artisan vendor:publish --provider="Laravel\Sanctum\SanctumServiceProvider"

3. **Copy .env file**:
   ```bash
   cp .env.example .env

4. **Configure .env file**:
   ```bash
   DB_DATABASE=your_database_name
   DB_USERNAME=your_username
   DB_PASSWORD=your_password

5. **Generate app key**:
   ```bash
   php artisan key:generate

6. **Run migrations and seeders (Admin credentials and some services will generate) **:
   ```bash
   php artisan migrate --seed

7.**Start the server**
    ```bash
   php artisan serve



### Importent Information 
 -I have added the postman collection and DB with this project, check Postman folder
 -Credential For admin    
    -Email : admin@example.com
    -Pass : password12