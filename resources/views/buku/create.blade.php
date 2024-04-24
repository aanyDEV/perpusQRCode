@extends('buku.layout')
@section('content')
<div class="card" style="margin-left: 35%; margin-right: 35%; margin-top: 2%;">
    <div class="card-header">Buat Buku Baru</div>
    <div class="card-body">
        <form action="{{ url('buku') }}" method="post">
            {!! csrf_field() !!}
            <label>Judul</label></br>
            <input type="text" name="judul" id="judul" class="form-control"></br>
            <label>Pengarang</label></br>
            <input type="text" name="pengarang" id="pengarang" class="form-control"></br>
            <label>Penerbit</label></br>
            <input type="text" name="penerbit" id="penerbit" class="form-control"></br>
            <label>Tahun Terbit</label></br>
            <input type="text" name="tahun_terbit" id="tahunTerbit" class="form-control"></br>
            <label>ISBN</label></br>
            <input type="text" name="isbn" id="isbn" class="form-control"></br>
            <label>Jumlah</label></br>
            <input type="text" name="jumlah" id="jumlah" class="form-control"></br>
            <div class="row">
                <div class="form-group col-md-6">
                    <button type="submit" name="submit" class="btn btn-success">Simpan</button>
                </div>
                <div class="form-group col-md-6 btn-sm" style="text-align: right;">
                    <button class="btn btn-warning" name="kembali" style="color: white;">Kembali</button>
                </div>
            </div>
        </form>
    </div>
</div>
@stop