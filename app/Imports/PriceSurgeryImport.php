<?php
   
namespace App\Imports;
   
use App\Models\Employees;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Auth;
use DB;
use App\Models\Surgery\Surgery;
use App\Models\InsuranceClients;

class PriceSurgeryImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */

    

    public function  __construct($category, $provider, $type, $insurance) {
        $this->category  = $category;
        $this->provider  = $provider;
        $this->type      = $type;
        echo $this->insurance = $insurance;
    }



    public function model(array $row){
        return new Surgery([
            'name'              => $row[0],
            'price'             => ($row[1] == 'السعــــر') ? 0 : $row[1],
            'category'          => $this->category,
            'service_provider'  => $this->provider,
            'insurance_company' => $this->insurance,
        ]);
    }
}