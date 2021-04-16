@extends('backend.layouts.app')

@section('title', "Subject Management" . ' | ' . "Create Subject")

@section('breadcrumb-links')
    @include('backend.subjects.includes.breadcrumb-links')
@endsection

@section('content')
    {{ Form::open(['route' => 'admin.subjects.store', 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'post', 'id' => 'create-permission', 'files' => true]) }}

    <div class="card">
        @include('backend.subjects.form')
        @include('backend.components.footer-buttons', ['cancelRoute' => 'admin.subjects.index'])
    </div><!--card-->
    {{ Form::close() }}
@endsection
