<?php
   
namespace App\Imports;
   
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use App\Models\Emergency\Emergency;
use Auth;
use DB;

class PriceEmergencyImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */

    

    public function  __construct($category, $provider,$insurance) {
        $this->category  = $category;
        $this->provider  = $provider;
        $this->insurance = $insurance;
    }



    public function model(array $row){
        return new Emergency([
            'name'              => $row[0],
            'price'             => ($row[1] == 'السعــــر') ? 0 : $row[1],
            'category'          => $this->category,
            'service_provider'  => $this->provider,
            'insurance_company' => $this->insurance,
        ]);
    }
}