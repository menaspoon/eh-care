<?php

namespace App\Models\MedicalExamination;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MedicalExamination extends Model {
    protected $table = "medical_examination";
    protected $fillable = ["name", "category", "price", "insurance_company", "service_provider"];
}




