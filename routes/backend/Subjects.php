<?php

// grades Management
Route::group(['namespace' => 'Subjects'], function () {
    Route::resource('subjects', 'SubjectsController', ['except' => ['show']]);

    //For DataTables
    Route::post('subjects/get', 'SubjectsTableController')->name('subjects.get');
});
