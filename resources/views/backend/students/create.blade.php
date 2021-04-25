@extends('backend.layouts.app')

@section('title', "Student Management" . ' | ' . 'Create Student')

@section('breadcrumb-links')
    @include('backend.students.includes.breadcrumb-links')
@endsection

@section('content')
    {{ Form::open(['route' => 'admin.students.store', 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'post', 'id' => 'create-permission', 'files' => true]) }}

    <div class="card">
        @include('backend.students.form')
        @include('backend.components.footer-buttons', ['cancelRoute' => 'admin.students.index'])
    </div><!--card-->
    {{ Form::close() }}
@endsection
