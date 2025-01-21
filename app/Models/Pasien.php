<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Pasien extends Model
{
    use HasFactory;

    protected $table = 'pasien';
    protected $fillable = ['nama', 'alamat', 'no_hp', 'no_ktp'];

    // kek gini bagus nya taro service
    public function getPasien()
    {
        $data = DB::table('pasien')->orderBy('created_at', 'desc')->get();
        return $data;
    }

    public function createPasien($data)
    {
        $createData = Pasien::create($data);
        return $createData;
    }

    public function updatePasien($data, $id)
    {
        // Update data pegawai di database
        $data = DB::table('pasien')->where('id', $id)->update($data);
        return $data;
    }

    public function deletePasien($id)
    {
        $data = DB::table('pasien')->where('id', $id)->delete();
        return $data;
    }
}
