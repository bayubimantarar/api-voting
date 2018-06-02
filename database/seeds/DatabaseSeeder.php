<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call('rc_kecamatan');
        $this->call('rc_kelurahan');
        $this->call('rc_kota_kab');
        $this->call('rc_paslon');
        $this->call('rc_saksi');
        $this->call('rc_tps');
        $this->call('rc_user');
    }
}
