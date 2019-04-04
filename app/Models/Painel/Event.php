<?php

namespace App\Models\Painel;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
   protected $fillable = [
        'title', 'description', 'date', 'created_at', 'updated_at'
    ];
    
}
