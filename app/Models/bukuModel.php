<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class bukuModel extends Model
{
    use HasFactory;
    protected $table = 'buku';
    protected $primaryKey = 'id';
    protected $fillable = ['judul', 'pengarang', 'penerbit','tahun_terbit', 'isbn', 'jumlah'];
}