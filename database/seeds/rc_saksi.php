<?php

use Illuminate\Database\Seeder;

class rc_saksi extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('rc_saksi')->truncate();
    	
        DB::table('rc_saksi')->insert([
        	['uc' => 'SAKSI-001', 'uc_tps' => 'TPS-001', 'uc_paslon' => 'PAS-001', 'username' => 'saksikofifah', 'password' => md5('123'), 'is_saksi_utama' => 1],
        	['uc' => 'SAKSI-002', 'uc_tps' => 'TPS-001', 'uc_paslon' => 'PAS-002', 'username' => 'saksisai', 'password' => md5('123'), 'is_saksi_utama' => 1],
        ]);
    }
}
