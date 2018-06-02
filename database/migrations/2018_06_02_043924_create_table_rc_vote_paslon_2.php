<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableRcVotePaslon2 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rc_vote_paslon_2', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('uc', 15);
            $table->string('uc_tps', 15);
            $table->string('uc_paslon', 15);
            $table->integer('jml_vote');
            $table->integer('jml_akhir_tps');
            $table->integer('golput');
            $table->integer('cacat');
            $table->timestamp('last_update');
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
        Schema::drop('rc_vote_paslon_2');
    }
}
