<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCustomersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('firstName', 100);
            $table->string('lastName', 100);
            $table->string('telephone', 100)->unique();
            $table->string('streetName');
            $table->string('houseNumber');
            $table->string('zipCode');
            $table->string('city');
            $table->string('accountOwner');
            $table->string('IBAN');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('customers');
    }
}
