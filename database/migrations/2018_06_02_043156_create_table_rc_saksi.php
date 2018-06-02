<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableRcSaksi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rc_saksi', function (Blueprint $table) {
            $table->increments('id');
            $table->string('uc', 15);
            $table->string('uc_tps', 15);
            $table->string('uc_paslon', 15);
            $table->string('username', 25);
            $table->string('password', 225);
            $table->tinyInteger('is_saksi_utama');
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
        Schema::drop('rc_saksi');
    }
}
