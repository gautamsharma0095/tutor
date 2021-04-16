@extends('backend.layouts.app')

@section('title', "Subject Management" . ' | ' . "Edit Subject")

@section('breadcrumb-links')
    @include('backend.subjects.includes.breadcrumb-links')
@endsection

@section('content')
    {{ Form::model($page, ['route' => ['admin.subjects.update', $page], 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'PATCH', 'id' => 'edit-role', 'files' => true]) }}

    <div class="card">
        @include('backend.subjects.form')
        @include('backend.components.footer-buttons', [ 'cancelRoute' => 'admin.subjects.index', 'id' => $page->id ])
    </div><!--card-->
    {{ Form::close() }}
@endsection
