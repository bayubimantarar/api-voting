<?php

use Illuminate\Database\Seeder;

class rc_user extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('rc_user')->truncate();
    	
        DB::table('rc_user')->insert([
        	['username' => 'admin', 'password' => md5('123'), 'fullname' => 'Administrator']
        ]);
    }
}
