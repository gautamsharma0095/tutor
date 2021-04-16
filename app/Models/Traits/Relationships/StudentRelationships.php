<?php

namespace App\Models\Traits\Relationships;

use App\Models\Auth\User;

trait StudentRelationships
{
    /**
     * Student belongs to relationship with user.
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
