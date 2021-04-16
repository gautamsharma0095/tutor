<?php

Breadcrumbs::for('admin.students.index', function ($trail) {
    $trail->push("Students Management", route('admin.students.index'));
});

Breadcrumbs::for('admin.students.create', function ($trail) {
    $trail->parent('admin.students.index');
    $trail->push("Create Student", route('admin.students.create'));
});

Breadcrumbs::for('admin.students.edit', function ($trail, $id) {
    $trail->parent('admin.students.index');
    $trail->push("Edit Student", route('admin.students.edit', $id));
});
