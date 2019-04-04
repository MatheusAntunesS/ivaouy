<?php

namespace App\Http\Controllers\Painel;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Painel\Event;
use App\Http\Requests\Painel\EventFormRequest;

class EventController extends Controller
{
    private $event;
    
    public function __construct(Event $event)
    {
        $this->event =$event;
        
    }
    
    
    public function index()
    {
        
        $events = $this->event->all();
        return view('painel.eventos.events', compact('events'));
      
    }
    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return  view('painel.eventos.create-edit');
        /*
               $insert = $this->event->insert([
                    'title' => 'Evento2',
                    'description' => 'descrição evento2',
                    'date' =>'2019-03-07'

                ]);
        if($insert)
            return 'Inserido';
        else
            return 'erro';
*/
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(EventFormRequest $request)
    {
       $dataForm = $request->all();
                
    //$this->validate($request, $this->event->rules);
    /* 
    $validate = validator($dataForm, $this->event->rules, $messages );
        if( $validate->fails() ) {
            return redirect()
                    ->route('event.create')
                    ->withErrors($validate)
                    ->withInput();
        }*/
        
        
    $insert = $this->event->create($dataForm)->save();        
        if ($insert)
            return redirect()->route('event.index');
        else
            return alert('Erro');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $event = $this->event->find($id);
        
        return view('painel.eventos.create-edit', compact('event'));
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update()
    {
        $update = $this->event
            ->find(2)
            ->update([
                'title' => 'Evento66',
                'description' => 'descrição evento66',
                'date' => '2019-03-08',
            ]);
        
         if($update)
            return 'Inserido - Update';
        else
            return 'erro - update';

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    
   
}
