<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\bukuController;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use App\Models\bukuModel;

Route::get('/', [bukuController::class, 'index']);

// Route::get('/', function () {
//     return view('welcome');
// });

Route::resource("/buku", bukuController::class);
Route::get('/buku/{id}/qr', function ($id) {
    $buku = bukuModel::find($id);
    $qrcode = QrCode::size(300)->generate($buku);
    $text_1 = 'Id User: ' . $id;
    return view('buku.qr', [
        'qrcode' => $qrcode,
        'text_1' => $text_1
    ]);
})->name('qr');
Route::get('/buku', [bukuController::class,'cari']);