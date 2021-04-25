@extends('backend.layouts.app')

@section('title', "Student Management" . ' | ' . 'Edit Student')

@section('breadcrumb-links')
    @include('backend.students.includes.breadcrumb-links')
@endsection

@section('content')
    {{ Form::model($page, ['route' => ['admin.students.update', $page], 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'PATCH', 'id' => 'edit-role', 'files' => true]) }}

    <div class="card">
        @include('backend.students.form')
        @include('backend.components.footer-buttons', [ 'cancelRoute' => 'admin.students.index', 'id' => $page->id ])
    </div><!--card-->
    {{ Form::close() }}
@endsection
