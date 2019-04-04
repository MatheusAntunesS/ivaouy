<?php

namespace App\Http\Controllers\Painel;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Painel\Event;

class PainelController extends Controller
{
    public function home()
    {
        return view('painel.eventos.index');
    }
}
