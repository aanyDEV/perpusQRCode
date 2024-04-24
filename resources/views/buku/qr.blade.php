@extends('buku.layout')
@section('content')
<div class="card " style="margin-top:1%; margin-left: 30%; margin-right: 30%;">
    <div class="card-header text-center">Silahkan scan barcode dibawah ini</div>
        <div class="card-body" style="padding-bottom: 1%;">
            <div class="row justify-content-center">
            <div class="col-md-8" style="margin-bottom: 2%;">
                <div class="card border rounded">
                    <div class="card-body text-center">
                        {!! $qrcode !!}
                    </div>
                    <div class="card-footer text-center">
                        <small class="text-muted fw-bold mt-2">
                        {{!! $text_1 !!}}
                        </small>
                    </div>
                </div>
            </div>
            <div class="card-footer text-center" style="margin-left: 5%; margin-right: 5%; margin-top: 1%;">
                <button onclick="kembali()" class="btn btn-warning" style="color: white;">Kembali</button>
                <script>
                    function kembali() {
                        window.location.href = "{{ url('buku') }}";
                    }
                </script>
            </div>
        </div>
    </div>
</div>
@stop