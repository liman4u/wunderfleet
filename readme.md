# Wunder Fleet Web App

A Simple web app for registration of wunder fleet customers

# To run locally

 - Git clone this repository
 - Change directory into root of cloned folder
 - Enter `composer install` (assuming you have `composer` and its related packages installed and or configured)
 - Rename `.env.example`  to `.env` (This contains the app configs and databases settings)
 - Configure your database settings in `.env`
 - Enter `php artisan serve`
 - Run tests with `./vendor/bin/phpumit`
 - Open localhost:8000 or 127.0.0.1:8000 to view app

# Screenshots
#### Home Page - Step 1
![Image](screenshots/1.png?raw=true "HomePage")

#### Address Information Page - Step 2
![Image](screenshots/2.png?raw=true "Address Information Page")

#### Payment Information Page - Step 3
![Image](screenshots/3.png?raw=true "Payment Information Page")

#### Confirmation Information Page - Step 4
![Image](screenshots/4.png?raw=true "Confirmation Information Page")

#### Error : Payment Failure
![Image](screenshots/5.png?raw=true "Error : Payment Failure")
