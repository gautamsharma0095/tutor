<?php

namespace App\Models;

use App\Models\Traits\ModelAttributes;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Traits\Relationships\StudentRelationships;
use App\Models\Traits\Attributes\StudentAttributes;

class Student extends BaseModel
{
    use SoftDeletes, ModelAttributes, StudentRelationships, StudentAttributes;

    protected $guarded = ['id'];


    /**
     * Fillable.
     *
     * @var array
     */
    protected $fillable = [
        'profile',
        'user_type',
        'full_name',
        'email_id ',
        'mobile_no ',
        'otp',
        'grade_id',
        'gender',
        'user_id',
        'created_by',
        'updated_by',
    ];
}
