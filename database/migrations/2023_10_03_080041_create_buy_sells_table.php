<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('buy_sells', function (Blueprint $table) {
            $table->id();
            $table->string('slug');
            $table->string('image');
            $table->string('name');
            $table->string('model_no');
            $table->string('engine_no');
            $table->string('chassis_no');
            $table->string('horsepower');
            $table->string('mileage');
            $table->string('seating_capacity');
            $table->string('owner_name');
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
        Schema::dropIfExists('buy_sells');
    }
};
