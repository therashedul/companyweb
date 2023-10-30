<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ImageGallery extends Model
{
    use HasFactory;
        protected $fillable=['imagename','imagecaption','category_id','partnar','popup','status']; 
}