<?php

use Illuminate\Database\Seeder;

class rc_kelurahan extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('rc_kelurahan')->truncate();
    	
        DB::table('rc_kelurahan')->insert([
        	['uc' => 'KEL-001', 'uc_kecamatan' =>'KEC-001', 'nama_kelurahan' => 'Asemrowo'],
        	['uc' => 'KEL-002', 'uc_kecamatan' =>'KEC-001', 'nama_kelurahan' => 'Genting Kalianak'],
        	['uc' => 'KEL-003', 'uc_kecamatan' =>'KEC-001', 'nama_kelurahan' => 'Tambak Sarioso'],
        	['uc' => 'KEL-004', 'uc_kecamatan' =>'KEC-002', 'nama_kelurahan' => 'Kandangan'],
        	['uc' => 'KEL-005', 'uc_kecamatan' =>'KEC-002', 'nama_kelurahan' => 'Romokalisari'],
        	['uc' => 'KEL-006', 'uc_kecamatan' =>'KEC-002', 'nama_kelurahan' => 'Sememi'],
        	['uc' => 'KEL-007', 'uc_kecamatan' =>'KEC-002', 'nama_kelurahan' => 'Tambak Osowilangun'],
        	['uc' => 'KEL-008', 'uc_kecamatan' =>'KEC-003', 'nama_kelurahan' => 'Alin-Alun Contong'],
        	['uc' => 'KEL-009', 'uc_kecamatan' =>'KEC-003', 'nama_kelurahan' => 'Bubutan']
        ]);
    }
}
