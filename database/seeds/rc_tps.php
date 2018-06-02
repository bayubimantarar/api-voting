<?php

use Illuminate\Database\Seeder;

class rc_tps extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('rc_tps')->truncate();
    	
        DB::table('rc_tps')->insert([
        	['uc' => 'TPS-001', 'no_tps' => 'TPS. 0210', 'uc_kelurahan' => 'KEL-001', 'rt' => '001', 'rw' => '010']
        ]);
    }
}
