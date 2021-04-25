<div class="card-body">
    <div class="row">
        <div class="col-sm-5">
            <h4 class="card-title mb-0">
                Student Management
                <small class="text-muted">{{ (isset($page)) ? "Edit Student" : "Create Student" }}</small>
            </h4>
        </div>
        <!--col-->
    </div>
    <!--row-->

    <hr>

    <div class="row mt-4 mb-4">
        <div class="col">
            <div class="form-group row">
                {{ Form::label('full_name', 'Full Name', ['class' => 'col-md-2 from-control-label required']) }}

                <div class="col-md-10">
                    {{ Form::text('full_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Full Name', 'required' => 'required']) }}
                </div>
                <!--col-->
            </div>
            <!--form-group-->

            <div class="form-group row">
                {{ Form::label('email_id', 'Email Id', ['class' => 'col-md-2 from-control-label required']) }}

                <div class="col-md-10">
                    {{ Form::text('email_id', null, ['class' => 'form-control', 'placeholder' => 'Enter Email Id']) }}
                </div>
                <!--col-->
            </div>
            <!--form-group-->

            <div class="form-group row">
                {{ Form::label('mobile_no', 'Mobile Number', ['class' => 'col-md-2 from-control-label required']) }}

                <div class="col-md-10">
                    {{ Form::text('mobile_no', null, ['class' => 'form-control', 'placeholder' => 'Mobile Number']) }}
                </div>
                <!--col-->
            </div>
            <!--form-group-->

            <div class="form-group row">
                {{ Form::label('description', trans('validation.attributes.backend.access.pages.description'), ['class' => 'col-md-2 from-control-label required']) }}

                <div class="col-md-10">
                    {{ Form::textarea('description', null, ['class' => 'form-control', 'placeholder' => trans('validation.attributes.backend.access.pages.description')]) }}
                </div>
                <!--col-->
            </div>
            <!--form-group-->

            <div class="form-group row">
                {{ Form::label('cannonical_link', trans('validation.attributes.backend.access.pages.cannonical_link'), ['class' => 'col-md-2 from-control-label required']) }}

                <div class="col-md-10">
                    {{ Form::text('cannonical_link', null, ['class' => 'form-control', 'placeholder' => trans('validation.attributes.backend.access.pages.cannonical_link')]) }}
                </div>
                <!--col-->
            </div>
            <!--form-group-->

            <div class="form-group row">
                {{ Form::label('seo_title', trans('validation.attributes.backend.access.pages.seo_title'), ['class' => 'col-md-2 from-control-label required']) }}

                <div class="col-md-10">
                    {{ Form::text('seo_title', null, ['class' => 'form-control', 'placeholder' => trans('validation.attributes.backend.access.pages.seo_title')]) }}
                </div>
                <!--col-->
            </div>
            <!--form-group-->

            <div class="form-group row">
                {{ Form::label('seo_keyword', trans('validation.attributes.backend.access.pages.seo_keywords'), ['class' => 'col-md-2 from-control-label required']) }}

                <div class="col-md-10">
                    {{ Form::text('seo_keyword', null, ['class' => 'form-control', 'placeholder' => trans('validation.attributes.backend.access.pages.seo_keywords')]) }}
                </div>
                <!--col-->
            </div>
            <!--form-group-->

            <div class="form-group row">
                {{ Form::label('seo_description', trans('validation.attributes.backend.access.pages.seo_description'), ['class' => 'col-md-2 from-control-label required']) }}

                <div class="col-md-10">
                    {{ Form::textarea('seo_description', null, ['class' => 'form-control', 'placeholder' => trans('validation.attributes.backend.access.pages.seo_description')]) }}
                </div>
                <!--col-->
            </div>
            <!--form-group-->

            <div class="form-group row">
                {{ Form::label('status', trans('validation.attributes.backend.access.pages.status'), ['class' => 'col-md-2 from-control-label required']) }}

                <div class="col-md-10">
                    <div class="checkbox d-flex align-items-center">
                        @php
                        $status = isset($page) ? '' : 'checked';
                        @endphp
                        <label class="switch switch-label switch-pill switch-primary mr-2" for="role-1"><input class="switch-input" type="checkbox" name="status" id="role-1" value="1" {{ (isset($page->status) && $page->status === 1) ? "checked" : $status }}><span class="switch-slider" data-checked="on" data-unchecked="off"></span></label>
                    </div>
                </div>
                <!--col-->
            </div>
            <!--form-group-->
        </div>
        <!--col-->
    </div>
    <!--row-->
</div>
<!--card-body-->

@section('pagescript')
<script type="text/javascript">
    FTX.Utils.documentReady(function() {
        FTX.Pages.edit.init("{{ config('locale.languages.' . app()->getLocale())[1] }}");
    });
</script>
@stop
