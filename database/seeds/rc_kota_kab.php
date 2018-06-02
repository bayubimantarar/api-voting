<?php

use Illuminate\Database\Seeder;

class rc_kota_kab extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('rc_kota_kab')->truncate();
    	
        DB::table('rc_kota_kab')->insert([
        	['uc' => 'KB-001', 'nama_kota_kab' => 'Kota Surabaya'],
        	['uc' => 'KB-002', 'nama_kota_kab' => 'Kab Sidoarjo'],
        ]);
    }
}
