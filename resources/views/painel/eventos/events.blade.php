@extends('painel.template.template_painel')
@section('admin-title')Event Admin @endsection
@section('title')Create Event @endsection
@section('content')
@section('pagetitle') Event List <i class="fas fa-list-ul"></i> @endsection
<a class="btn btn-info" href="{{route('event.create')}}" role="button">Create <i class="fas fa-plus"></i></a>
<table class="table table-striped">
    <thead>
        <tr>
            <th scope="col">
                Title
            </th>
            <th scope="col">
                Description
            </th>
            <th scope="col">
                Date
            </th>
            <th scope="col">
                Actions
            </th>
        </tr>
    </thead>
    <tbody>
        @foreach($events as $event)
        <tr>
            <td>
                {{$event->title}}
            </td>
            <td>
                {{$event->description}}
            </td>
            <td>
                {{$event->date}}
            </td>
            <td>
                <a class="edit" href="{{route('event.edit', $event->id)}}">
                    <i class="fas fa-edit"></i></a>
                <i class="fas fa-grip-lines-vertical"></i>
                <a class="delete" href="">
                    <i class="fas fa-trash-alt"></i></a>
            </td>
        </tr>
        @endforeach()
    </tbody>
</table>
@endsection
