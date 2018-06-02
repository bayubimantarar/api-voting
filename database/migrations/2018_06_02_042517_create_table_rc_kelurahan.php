<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableRcKelurahan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rc_kelurahan', function (Blueprint $table) {
            $table->increments('id');
            $table->string('uc', 15);
            $table->string('uc_kecamatan', 15);
            $table->string('nama_kelurahan', 50);
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
        Schema::drop('rc_kelurahan');
    }
}
