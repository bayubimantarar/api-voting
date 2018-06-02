<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableRcTps extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rc_tps', function (Blueprint $table) {
            $table->increments('id');
            $table->string('uc', 15);
            $table->string('no_tps', 15);
            $table->string('uc_kelurahan', 15);
            $table->string('rt', 5);
            $table->string('rw', 5);
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
        Schema::drop('rc_tps');
    }
}
