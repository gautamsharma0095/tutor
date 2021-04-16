@extends('backend.layouts.app')

@section('title', "Grade Management" . ' | ' . "Edit Grade")

@section('breadcrumb-links')
    @include('backend.grades.includes.breadcrumb-links')
@endsection

@section('content')
    {{ Form::model($page, ['route' => ['admin.grades.update', $page], 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'PATCH', 'id' => 'edit-role', 'files' => true]) }}

    <div class="card">
        @include('backend.grades.form')
        @include('backend.components.footer-buttons', [ 'cancelRoute' => 'admin.grades.index', 'id' => $page->id ])
    </div><!--card-->
    {{ Form::close() }}
@endsection
