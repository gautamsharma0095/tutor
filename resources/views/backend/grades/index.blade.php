@extends('backend.layouts.app')

@section('title', app_name() . ' | ' . "Grade Managment")

@section('breadcrumb-links')
@include('backend.grades.includes.breadcrumb-links')
@endsection

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0">
                    Grade Management <small class="text-muted">Grade List</small>
                </h4>
            </div>
            <!--col-->
        </div>
        <!--row-->

        <div class="row mt-4">
            <div class="col">
                <div class="table-responsive">
                    <table id="pages-table" class="table" data-ajax_url="{{ route("admin.grades.get") }}">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Created at</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
            <!--col-->
        </div>
        <!--row-->

    </div>
    <!--card-body-->
</div>
<!--card-->
@endsection

@section('pagescript')
<script>
    FTX.Utils.documentReady(function() {
        FTX.Grades.list.init();
    });
</script>
@endsection
