@extends('buku.layout')
@section('content')
<div class="card" style="margin-left: 35%; margin-right: 35%; margin-top: 2%;">
    <div class="card-header text-center">Detail Buku</div>
    <div class="card-body">
        <div class="card-body">
            <h5 class="card-title">Judul: {{ $buku->judul }}</h5>
            <p class="card-title">Pengarang: {{ $buku->pengarang }}</p>
            <p class="card-title">Penerbit: {{ $buku->penerbit }}</p>
            <p class="card-title">Tahun Terbit: {{ $buku->tahun_terbit }}</p>
            <p class="card-title">ISBN: {{ $buku->isbn }}</p>
            <p class="card-title">Jumlah: {{ $buku->jumlah }}</p>
        </div>
        <div class="card-footer text-center" style="padding-left: 5%; padding-right: 5%; margin-top: 1%;">
            <button onclick="kembali()" class="btn btn-warning" style="color: white;">Kembali</button>
            <script>
                function kembali() {
                    window.location.href = "/buku";
                }
            </script>
        </div>
    </div>
</div>