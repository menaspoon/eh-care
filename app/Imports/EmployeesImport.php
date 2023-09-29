<?php
   
namespace App\Imports;
   
use App\Models\Employees;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Auth;
use DB;
use App\Models\Insurance;
use App\Models\InsuranceClients;



class EmployeesImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row){

        return new Employees([
            'name'       => $row[0],
            'phone'      => $row[1],
            'email'      => $row[2],
            'address'    => $row[3],
            'sex'        => $row[4],
            'nationality'=> $row[5],
            'blood_type' => $row[6],
            'card_id'    => $row[7],
            'relative_relation' => $row[8],
            'date_of_birth'     => $row[9],
            'balance'    => $row[10],
            'company'    => $row[11],
        ]);
    }
}