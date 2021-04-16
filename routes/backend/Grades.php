<?php

// grades Management
Route::group(['namespace' => 'Grades'], function () {
    Route::resource('grades', 'GradesController', ['except' => ['show']]);

    //For DataTables
    Route::post('grades/get', 'GradesTableController')->name('grades.get');
});
