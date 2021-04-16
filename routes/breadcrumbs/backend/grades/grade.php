<?php

Breadcrumbs::for('admin.grades.index', function ($trail) {
    $trail->push("Grades Management", route('admin.grades.index'));
});

Breadcrumbs::for('admin.grades.create', function ($trail) {
    $trail->parent('admin.grades.index');
    $trail->push("Create Grade", route('admin.grades.create'));
});

Breadcrumbs::for('admin.grades.edit', function ($trail, $id) {
    $trail->parent('admin.grades.index');
    $trail->push("Edit Student", route('admin.grades.edit', $id));
});
