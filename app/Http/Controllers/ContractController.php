<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Companies;
use App\Models\Contract;
use App\Models\Classs;
use App\Models\MedicalNetwork;
use App\Models\DegreeOfResidence;

use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;

use Auth;
use Hash;
use DB;

class ContractController extends Controller {



  function index($company) {
      $acount = User::where("id", Auth::id())->first();
      $company  = Companies::where("id", $company)->first();
      $classs  = Classs::where("insurance_company", $acount->insurance_company)->get();
      $degree_of_residence  = DegreeOfResidence::where("insurance_company", $acount->insurance_company)->get();
      $medical_network  = MedicalNetwork::where("insurance_company", $acount->insurance_company)->get();
      $contract  = Contract::where("company", $company->id)->first();
      return view("companies.contract", compact("contract", "classs", "degree_of_residence", "medical_network"));
  }

  


  function get_employees_campany(Request $request) {
      if($request->ajax()) {
        $id = $request->get('id');
        $data = Employees::where('company', $request->id)->get();
        foreach ($data as $item) :
          echo "<option value=". $item->insurance_number ." >" . $item->name . "</option>";
        endforeach;
      }
  }

  function  update(Request $request) {
    $acount = User::where("id", Auth::id())->first();
    Contract::where("company", $request->company)->update([
      'start_date'               => $request->start_date,
      'end_date'                 => $request->end_date,
      'annual_ceiling'           => $request->annual_ceiling,
      'number_of_subscribers'    => $request->number_of_subscribers,
      'singles_premium'          => $request->singles_premium,
      'class'                    => $request->class,
      'annual_capita'            => $request->annual_capita,
      
      'degree_of_residence'      => $request->degree_of_residence,
      'hospital_collection_rate' => $request->hospital_collection_rate,
      'medical_network'          => $request->medical_network,
      'administrative_expenses'  => $request->administrative_expenses,
      'issuance_expenses'        => $request->issuance_expenses,
      'network_coverage'         => $request->network_coverage,


      // الاشعــــــة
      'ray_type'         => $request->ray_type,
      'ray_count'        => $request->ray_count,
      'ray_coverage'     => $request->ray_coverage,
      'ray_discount'     => $request->ray_discount,
      'ray_collection'   => $request->ray_collection,
      // العمليات
      'surgery_type'         => $request->surgery_type,
      'surgery_count'        => $request->surgery_count,
      'surgery_coverage'     => $request->surgery_coverage,
      'surgery_discount'     => $request->surgery_discount,
      'surgery_collection'   => $request->surgery_collection,
      // التحاليل
      'analysis_type'         => $request->analysis_type,
      'analysis_count'        => $request->analysis_count,
      'analysis_coverage'     => $request->analysis_coverage,
      'analysis_discount'     => $request->analysis_discount,
      'analysis_collection'   => $request->analysis_collection,
      // الايـــــــواء
      'quartering_type'        => $request->quartering_type,
      'quartering_count'       => $request->quartering_count,
      'quartering_coverage'    => $request->quartering_coverage,
      'quartering_discount'    => $request->quartering_discount,
      'quartering_collection'  => $request->quartering_collection,
      // طــــــــــواري
      'emergency_type'        => $request->emergency_type,
      'emergency_count'       => $request->emergency_count,
      'emergency_coverage'    => $request->emergency_coverage,
      'emergency_discount'    => $request->emergency_discount,
      'emergency_collection'  => $request->emergency_collection,
      // العناية المركزة
      'intensive_are_type'        => $request->intensive_are_type,
      'intensive_are_count'       => $request->intensive_are_count,
      'intensive_are_coverage'    => $request->intensive_are_coverage,
      'intensive_are_discount'    => $request->intensive_are_discount,
      'intensive_are_collection'  => $request->intensive_are_collection,
      // العلاج الطبيعـــــي
      'physical_therapy_type'         => $request->physical_therapy_type,
      'physical_therapy_count'        => $request->physical_therapy_count,
      'physical_therapy_coverage'     => $request->physical_therapy_coverage,
      'physical_therapy_discount'     => $request->physical_therapy_discount,
      'physical_therapy_collection'   => $request->physical_therapy_collection,
      // الفحوصات
      'medical_examinations_type'         => $request->medical_examinations_type,
      'medical_examinations_count'        => $request->medical_examinations_count,
      'medical_examinations_coverage'     => $request->medical_examinations_coverage,
      'medical_examinations_discount'     => $request->medical_examinations_discount,
      'medical_examinations_collection'   => $request->medical_examinations_collection,
      // الصيدلية
      'pharmacy_type'               => $request->pharmacy_type,
      'pharmacy_discount'           => $request->pharmacy_discount,
      'pharmacy_coverage'           => $request->pharmacy_coverage,
      'pharmacy_collection'         => $request->pharmacy_collection,
      'pharmacy_chronic_treatment'  => $request->pharmacy_chronic_treatment,

    ]);

    return back()->with("created", "تم تحديث البيانات بنجاح");
  }



          // شروط ادخال الحقول
          protected function getRule() {
            return $rule = [
              "name"       => "string",
              "email"      => "string",
              "phone"      => "tring",
              "address"    => "string",
              "commercial_register"       => "string",
              "tax_card"      => "string",
              "issuer"      => "string",
              "contracting_officer"      => "string",
              "contracting_officer_phone"        => "string",


            ];
          }
        
         //   رسائل ادخال الحقول
          protected function getMessage()  {
            return $message = [];
          }
  








} // ProdactController Class