<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMicanicsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('micanics', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('nid_img');
            $table->string('cert_img');
            $table->string('personal_img');
            $table->string('email')->uique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->smallInteger('code')->nullable();
            $table->enum('status_working',["accept","underInvestigation","block"])->default("underInvestigation");
            $table->unsignedBigInteger("city_id");
            $table->rememberToken();
            $table->timestamps();
            $table->string('type')->nullable()->default("micanic");;
            $table->enum('status',["Busy","Avilable"])->default("Avilable");

            $table->foreign('city_id')->references('id')->on('cities')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('micanics');
    }
}
