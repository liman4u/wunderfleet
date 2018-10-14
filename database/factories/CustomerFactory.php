<?php

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\Customer::class, function (Faker $faker) {
    return [
        'first_name' => $faker->name,
        'last_name' => $faker->name,
        'telephone' => $faker->phoneNumber,
        'street_name' => $faker->streetName,
        'house_number' => $faker->streetAddress,
        'zip_code' => $faker->text(10),
        'city' => $faker->city,
        'account_owner' => $faker->name,
        'IBAN' => $faker->iban('DE')
    ];
});
