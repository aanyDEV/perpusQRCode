<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\bukuModel;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class bukuController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $buku  = bukuModel::simplePaginate(10);
        return view ('buku.index')-> with('buku', $buku);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view ('buku.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if ($request->has('submit')) {
            $input = $request->all();
            bukuModel::create($input);
            return redirect('buku')->with('flash_message', 'Buku berhasil ditambahkan');
        }else{
            $buku  = bukuModel::simplePaginate(10);
            return view('buku.index')->with('buku', $buku);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $buku = bukuModel::find($id);
        return view('buku.show')->with('buku', $buku);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $buku = bukuModel::find($id);
        return view('buku.edit')->with('buku', $buku);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        if ($request->has('submit')){
            $buku = bukuModel::find($id);
            $input = $request->all();
            $buku->update($input);
            return redirect('buku')->with('flash_message', 'Buku berhasil diupdate');
        }else{
            $buku  = bukuModel::simplePaginate(10);
            return view('buku.index')->with('buku', $buku);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $buku = bukuModel::destroy($id);
        return redirect('buku')->with('flash_message', 'Buku berhasil dihapus');
    }

    public function cari(Request $request)
    {
        $cari = $request->input('search');
        if ($cari===null) {
            $buku  = bukuModel::simplePaginate(10);
        }else{
            $buku = bukuModel::where('judul', 'like', '%' . $cari . '%')->simplePaginate(10);
        }
        return view('buku.index')->with('buku', $buku)->with('request', $request);
    }
}