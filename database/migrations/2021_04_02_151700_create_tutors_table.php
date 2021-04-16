<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTutorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tutors', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('profile', 250)->nullable();
            $table->string('user_type', 191)->nullable();
            $table->string('full_name', 250)->nullable();
            $table->string('institute_name', 250)->nullable();
            $table->string('email_id', 250)->unique()->nullable();
            $table->string('mobile_no', 191)->unique();
            $table->string('otp', 191)->nullable();
            $table->string('age', 191)->nullable();
            $table->string('fees', 191)->nullable();
            $table->string('zip_code', 191)->nullable();
            $table->boolean('gender')->nullable();
            $table->integer('user_id')->unsigned()->nullable();
            $table->softDeletes();
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
        Schema::dropIfExists('tutors');
    }
}
