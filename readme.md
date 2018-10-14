# Wunder Fleet Web App

A Simple web app for registration of wunder fleet customers

# To run locally

 - Git clone this repository
 - Change directory into root of cloned folder
 - Enter `composer install` (assuming you have `composer` and its related packages installed and or configured)
 - Rename `.env.example`  to `.env` (This contains the app configs and databases settings)
 - Configure your database settings in `.env`
 - Enter `php artisan serve` to start application
 - Enter `php artisan migrate` to run migration (Dump of database is also found in database/dumps)
 - Run tests with `./vendor/bin/phpumit`
 - Open localhost:8000 or 127.0.0.1:8000 to view app
 
 # Possible Performance Optiomatizations
 
 1- Profile Queries - by using Debug Bar , will allow you to see what queires are invoked
 
 2- Minify and combine css and javascript -  allows to lower request from website
 
 3- Use New Relic - provides deep insight into what’s happening in your Laravel application. This will allow You to find memory leaks, slow queries etc.
 
 # Things that could have been done better
 
 1- Testing frontend with Laravel Dusk 
 

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


