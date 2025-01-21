<?php

namespace Database\Seeders;

use App\Models\Pasien;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class PasienSeeder extends Seeder
{
    /* nglag ashu
     * Run the database seeds.
     */
    public function run(): void
    {
        Pasien::factory(100)->create();
        // 
    }
}
