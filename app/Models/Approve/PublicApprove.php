<?php

namespace App\Models\Approve;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PublicApprove extends Model {
    protected $table = "approve_public";
    protected $fillable = ["member", "service_provider", "type", "item", "note", "diagnosing", "file_number"];
}
