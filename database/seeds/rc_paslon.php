<?php

use Illuminate\Database\Seeder;

class rc_paslon extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('rc_paslon')->truncate();
    	
        DB::table('rc_paslon')->insert([
        	['uc' => 'PAS-001', 'no_urut' => 1, 'cagub' => 'Khofifah Indar Parawansa', 'cawagub' => 'Emil Elestianto Dardak'],
        	['uc' => 'PAS-002', 'no_urut' => 2, 'cagub' => 'Saifullah Yusuf', 'cawagub' => 'Puti Guntur Soekarno'],
        ]);
    }
}
