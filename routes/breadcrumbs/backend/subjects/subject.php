<?php

Breadcrumbs::for('admin.subjects.index', function ($trail) {
    $trail->push("Subjects Management", route('admin.subjects.index'));
});

Breadcrumbs::for('admin.subjects.create', function ($trail) {
    $trail->parent('admin.subjects.index');
    $trail->push("Create Subject", route('admin.subjects.create'));
});

Breadcrumbs::for('admin.subjects.edit', function ($trail, $id) {
    $trail->parent('admin.subjects.index');
    $trail->push("Edit Subject", route('admin.subjects.edit', $id));
});
