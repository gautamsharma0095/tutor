<?php

// Students Management
Route::group(['namespace' => 'Students'], function () {
    Route::resource('students', 'StudentsController', ['except' => ['show']]);

    //For DataTables
    Route::post('students/get', 'StudentsTableController')->name('pages.get');
});
