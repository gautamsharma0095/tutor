@extends('backend.layouts.app')

@section('title', "Grade Management" . ' | ' . "Create Grade")

@section('breadcrumb-links')
    @include('backend.grades.includes.breadcrumb-links')
@endsection

@section('content')
    {{ Form::open(['route' => 'admin.grades.store', 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'post', 'id' => 'create-permission', 'files' => true]) }}

    <div class="card">
        @include('backend.grades.form')
        @include('backend.components.footer-buttons', ['cancelRoute' => 'admin.grades.index'])
    </div><!--card-->
    {{ Form::close() }}
@endsection
