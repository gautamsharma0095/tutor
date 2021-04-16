<?php

namespace App\Models;

use App\Models\Traits\ModelAttributes;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Traits\Attributes\GradeAttributes;

class Grade extends BaseModel
{
    use SoftDeletes, ModelAttributes, GradeAttributes;

    protected $table = 'grades';

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
