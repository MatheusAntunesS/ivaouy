@extends('painel.template.template_painel')
@section('title')Create Event @endsection
@section('content')
@section('pagetitle') New Event <i class="fas fa-plus"></i>@endsection

@if (isset($errors) && count ($errors) > 0 )
@foreach($errors->all() as $error)

    <p class="alert alert-danger">{{$error}}</p>

    @endforeach

@endif
<form method="post" action="{{route('event.store')}}" >
    <div class="form-row">
        <div class="col-md-4 mb-3">
            <label for="validationTooltip01">Title</label>
            <input type="text" class="form-control" name="title" id="validationTooltip01" placeholder="Title" value="{{$event->title or old('erro')}}">          
            
        </div>
        <div class="col-md-4 mb-3">
            <label for="validationTooltip02">Date</label>
            <input type="date" class="form-control" name="date" id="validationTooltip02" placeholder="Date" value="{{$event->date or old('erro')}}">

        </div>
    </div>
    <div class="form-row">
        <div class="col-md-4 mb-3">
            <label for="validationTooltip03">Description</label>
            <textarea rows="5" cols="6" type="text" name="description" class="form-control" id="validationTooltip03" placeholder="Description" value="{{$event->description or old('erro')}}" ></textarea>

        </div>
        
        <div class="col-md-4 mb-3">
            
            <label for="validationTooltip03">Upload Image</label>
                <div class="custom-file">
                    <input type="file" class="custom-file-input" name="file_Image" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                </div>
            
               
            <label for="validationTooltip03">Upload Briefing</label>
                <div class="custom-file">
                    <input type="file" class="custom-file-input" name="file_Briefing" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                </div>
           
        </div>
    </div>
    <button class="btn btn-primary" type="submit">Submit</button>
    {!! csrf_field() !!}
    
</form>
@endsection
