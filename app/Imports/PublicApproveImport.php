<?php
   
namespace App\Imports;
   
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use App\Models\User;
use App\Models\Approve\PublicApprove;
use Auth;
use DB;


class PublicApproveImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    //private $file_number = PublicApprove::orderBy("id", "DESC")->first();
    //private $number = $file_number->file_number + 1;

    public function  __construct($last_file_number, $insurance_company) {
        $this->last_file_number = $last_file_number;
        $this->insurance_company = $insurance_company;
    }

    public function model(array $row){
        return new PublicApprove([
            'member'       => $row[0],
            'service_provider'      => $row[1],
            'type'         => $row[2],
            'item'         => $row[3],
            'note'         => $row[4],
            'diagnosing'   => $row[5],
            'insurance_company' => $this->insurance_company,
            'file_number'  => $this->last_file_number,
            //'company'    => $row[11],
        ]);
    }
}