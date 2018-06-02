<?php

use Illuminate\Database\Seeder;

class rc_kecamatan extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	DB::table('rc_kecamatan')->truncate();

        DB::table('rc_kecamatan')->insert([
        	['uc' => 'KEC-001', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Asemrowo'],
        	['uc' => 'KEC-002', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Benowo'],
        	['uc' => 'KEC-003', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Bubutan'],
        	['uc' => 'KEC-004', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Bulak'],
        	['uc' => 'KEC-005', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Dukuh Pakis'],
        	['uc' => 'KEC-006', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Gayungan'],
        	['uc' => 'KEC-007', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Genteng'],
        	['uc' => 'KEC-008', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Gubeng'],
        	['uc' => 'KEC-009', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Gunung Anyar'],
        	['uc' => 'KEC-0010', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Jambangan'],
        	['uc' => 'KEC-0011', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Karangpilang'],
        	['uc' => 'KEC-0012', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Kenjeran'],
        	['uc' => 'KEC-0013', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Krembangan'],
        	['uc' => 'KEC-0014', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Lakarsnatri'],
        	['uc' => 'KEC-0015', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Mulyorejoi'],
        	['uc' => 'KEC-0016', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Pabean Cantikan'],
        	['uc' => 'KEC-0017', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Pakal'],
        	['uc' => 'KEC-0018', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Rungkul'],
        	['uc' => 'KEC-0019', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Sambilkerep'],
        	['uc' => 'KEC-0020', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Sawahan'],
        	['uc' => 'KEC-0021', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Semampir'],
        	['uc' => 'KEC-0022', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Simokerto'],
        	['uc' => 'KEC-0023', 'uc_kota_kab' => 'KB-001', 'nama_kecamatan' => 'Sukolilo']
        ]);
    }
}
