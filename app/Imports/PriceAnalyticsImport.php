<?php
   
namespace App\Imports;
   
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use App\Models\Analytics\Analytics;
use Auth;
use DB;

class PriceAnalyticsImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */

    

    public function  __construct($category, $provider, $insurance) {
        $this->category  = $category;
        $this->provider  = $provider;
        echo $this->insurance = $insurance;
    }



    public function model(array $row){
        return new Analytics([
            'name'              => $row[0],
            'price'             => ($row[1] == 'السعــــر') ? 0 : $row[1],
            'category'          => $this->category,
            'service_provider'  => $this->provider,
            'insurance_company' => $this->insurance,
        ]);
    }
}