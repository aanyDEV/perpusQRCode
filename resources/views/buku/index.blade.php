@extends('buku.layout')
@section('content')
    <div class="container-fluid">
        <div class="row" style="margin-top: 20px; margin-left: auto; padding-left: 10px;">
            <div class="col-12">
                <div class="card">
                    <div class="card-header" style="text-align: center;">
                        <h2>BukuQT by Laravel 10</h2>
                    </div>                    
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <a href="{{ url('/buku/create') }}" class="btn btn-success" title="Tambahkan Buku">
                                    Tambah Buku
                                </a>
                            </div>
                            <div class="col-md-6">
                                <form action="{{ url('/buku') }}" method="GET" class="form-inline">
                                    @csrf
                                    <div class="input-group" style="right: 4%">
                                        <input type="search" class="form-control" name="search" placeholder="Cari judul">
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-primary">Cari</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="table-responsive">
                            @if($buku->count() > 0)
                                <table class="table">
                                    <thead>
                                    <style>
                                        th {
                                            white-space: nowrap;
                                            text-align: center;
                                        }

                                        td {
                                            white-space: nowrap;
                                        }
                                        
                                    </style>
                                        <tr>
                                            <th>No</th>
                                            <th>Judul</th>
                                            <th>Pengarang</th>
                                            <th>Penerbit</th>
                                            <th>Tahun Terbit</th>
                                            <th>ISBN</th>
                                            <th>Jumlah</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($buku as $key => $item)
                                        <tr>
                                            <td class="justify-content-center" style="margin: 2px">{{ $buku->firstItem() + $key }}</td>
                                            <td class="justify-content-center" style="margin: 2px">{{ $item->judul }}</td>
                                            <td class="justify-content-center" style="margin: 2px">{{ $item->pengarang }}</td>
                                            <td class="justify-content-center" style="margin: 2px">{{ $item->penerbit }}</td>
                                            <td class="justify-content-center" style="margin: 2px">{{ $item->tahun_terbit }}</td>
                                            <td class="justify-content-center" style="margin: 2px">{{ $item->isbn }}</td>
                                            <td class="justify-content-center" style="margin: 2px">{{ $item->jumlah }}</td>
                                            <td class="justify-content-center" style="text-align: center;">
                                            <div class="d-flex justify-content-center">
                                                <a href="{{ url('/buku/' . $item->id) }}" class="Lihat Buku" style="margin: 2px"><button class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i> Lihat</button></a>
                                                <a href="{{ url('/buku/' . $item->id . '/edit') }}" class="Edit Buku" style="margin: 2px"><button class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</button></a>
                                                <form method="POST" action="{{ url('/buku/' . $item->id) }}" accept-charset="UTF-8" style="display:inline; margin: 2px;">
                                                    {{ method_field('DELETE') }}
                                                    {{ csrf_field() }}
                                                    <button type="submit" class="btn btn-danger" title="Hapus Buku" onclick="return confirm('Apakah anda ingin menghapus buku?')"><i class="fa fa-trash-o" aria-hidden="true"></i>Hapus</button>
                                                </form>
                                                <a href="{{ route('qr',['id' => $item->id]) }}" class="Lihat QR" style="margin: 2px"><button class="btn btn-success"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Lihat QR</button></a>
                                            </div>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                <div style="margin-left: 7px;margin-bottom:20px;">
                                    Menampilkan dari
                                    {{ $buku->firstItem() }}
                                    hingga
                                    {{ $buku->lastItem() }}
                                    data
                                </div>
                                <div class="pull-right" style="padding: 5px;margin-bottom:5px;">
                                    {{ $buku->links() }}
                                </div>
                            @else
                                <p style="text-align: center;">Hasil pencarian untuk '{{ $request->input('search') }}' tidak ditemukan</p>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection