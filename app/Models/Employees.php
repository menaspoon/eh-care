<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Auth;

class Employees extends Model {

    protected $table = "employees";
    protected $fillable = ["name"];

    public static function getEmployees(){
        $acount = User::where("id", Auth::id())->first();
        $record = Employees::
                    //select("name", "phone", "email", "address", "sex", "nationality", "blood_type", "card_id", "relative_relation", "date_of_birth", "balance", "remaining_amount")
                    where("insurance_company", $acount->insurance_company)
                    ->get()->toArray();
        return $record;
    }


}




 

