<?php

namespace App\Http\Controllers;

use App\Models\Pasien;
use Illuminate\Http\Request;

class PasienController extends Controller
{
    private $model;

    public function __construct()
    {
        $this->model = new Pasien();
    }

    public function getDataPasien()
    {
        request()->validate([
            'search' => 'nullable|string'
        ]);

        $query = $this->model
            ->when((request()->has('search') && request()->get('search')), function ($q) {
                $search = request()->get('search');

                $q->whereAny([
                    'nama',
                    'alamat',
                    'no_hp',
                    'no_ktp'
                ], 'like', "%{$search}%");
            });

        $data = $query->orderBy('created_at', 'DESC')
            ->paginate(10)->withQueryString();

        return view('pasien.index', ['data' =>  $data]);
    }

    public function postDataPasien(Request $request)
    {
        // Validator
        $request->validate([
            'nama' => 'required|min:3',
            'alamat' => 'required',
            'no_hp' => 'required',
            'no_ktp' => 'required|integer'
        ]);

        $data = [
            'nama' => $request->nama,
            'alamat' => $request->alamat,
            'no_hp' => $request->no_hp,
            'no_ktp' => $request->no_ktp,
        ];

        $this->model->createPasien($data);

        return redirect()->back()->with('message', 'Success..!!');

        // array from request
    }

    public function formEditPasien($id)
    {
        //get post by ID
        $data = Pasien::where('id', $id)->first();
        return view('pasien.formEdit', ['data' =>  $data]);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nama' => 'required|min:3',
            'alamat' => 'required',
            'no_hp' => 'required',
            'no_ktp' => 'required|integer'
        ]);

        $data = [
            'nama' => $request->nama,
            'alamat' => $request->alamat,
            'no_hp' => $request->no_hp,
            'no_ktp' => $request->no_ktp,
        ];

        $this->model->updatePasien($data, $id);
        return redirect()->route('getDataPasien')->with('message', 'Success..!!');
    }

    public function delete($id)
    {
        $this->model->deletePasien($id);
        return redirect()->route('getDataPasien')->with('message', 'Success delete..!!');
    }
}
