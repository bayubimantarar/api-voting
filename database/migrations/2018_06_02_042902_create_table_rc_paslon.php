<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableRcPaslon extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rc_paslon', function (Blueprint $table) {
            $table->increments('id');
            $table->string('uc', 15);
            $table->tinyInteger('no_urut');
            $table->string('cagub', 50);
            $table->string('cawagub', 50);
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
        Schema::drop('rc_paslon');
    }
}
