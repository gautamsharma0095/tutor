<?php

namespace App\Models;

use App\Models\Traits\ModelAttributes;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Traits\Attributes\SubjectAttributes;

class Subject extends BaseModel
{
    use SoftDeletes, ModelAttributes, SubjectAttributes;

    protected $table = 'subjects';

    protected $guarded = ['id'];


    /**
     * Fillable.
     *
     * @var array
     */
    protected $fillable = [
        "name",
        'created_by',
        'updated_by',
    ];
}
