<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Companies;
use App\Models\Classs;
use App\Models\ServiceProvider;

use App\Imports\PriceSurgeryImport;
use App\Imports\PriceAnalyticsImport;
use App\Imports\PriceEmergencyImport;
use App\Imports\PriceIntensiveCareImport;
use App\Imports\PriceRayImport;
use App\Imports\PricePhysicalTherapyImport;
use App\Imports\PriceQuarteringImport;
use App\Imports\PriceMedicalExaminationImport;

use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use Excel;
use Auth;
use Hash;
use DB;
class ServiceProviderDataEntryController extends Controller {



  function index($category) {
    $acount   = User::where("id", Auth::id())->first();
    $company  = Companies::where("id", $acount->hospital)->first();
    $classs   = Classs::where("insurance_company", $acount->insurance_company)->get();
    $data     = ServiceProvider::where("insurance_company", $acount->insurance_company)->get();
    return view("project.service_provider_data_entry", compact("data", "classs"));
  }




  function  import(Request $request) {
    /*
    $rule = $this->getRule();
    $message = $this->getMessage();
    $validator = Validator::make($request->all(), $rule, $message);
    if($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput($request->all());
    }
    */
    $acount    = User::where("id", Auth::id())->first();
    $category  = $request->category;
    $provider  = $request->service_provider;
    $type  = $request->type;
    $insurance = $acount->insurance_company;

    if($type == "surgery") :
        Excel::import(new PriceSurgeryImport($category, $provider, $insurance), request()->file('file')); 
    elseif($type == "emergency") :
        Excel::import(new PriceEmergencyImport($category, $provider, $insurance), request()->file('file')); 
    elseif($type == "analytics") :
        Excel::import(new PriceAnalyticsImport($category, $provider,$insurance), request()->file('file')); 
    elseif($type == "intensive_care") :
        Excel::import(new PriceIntensiveCareImport($category, $provider,$insurance), request()->file('file')); 
    elseif($type == "ray") :
        Excel::import(new PriceRayImport($category, $provider,$insurance), request()->file('file')); 
    elseif($type == "physical_therapy") :
        Excel::import(new PricePhysicalTherapyImport($category, $provider,$insurance), request()->file('file')); 
    elseif($type == "quartering") :
        Excel::import(new PriceQuarteringImport($category, $provider,$insurance), request()->file('file'));     
    elseif($type == "medical_examination") :
        Excel::import(new PriceMedicalExaminationImport($category, $provider,$insurance), request()->file('file'));     
        else :
    endif;

    return back()->with("created", "تم اضافة البيانات بنجاح");
  }
  



  function  update(Request $request) {
    ServiceProvider::where("id", $request->id)->update([
      'name'         => $request->edit_name,
      'branch'       => $request->edit_branch,
      'class'        => $request->edit_class,
      'tel'          => $request->edit_tel,
      'phone'        => $request->edit_phone,
      'email'        => $request->edit_email,
      'fax'          => $request->edit_fax,
      'tax_record'   => $request->edit_tax_record,
      'tax_registration_number' => $request->edit_tax_registration_number,
      'issuer'      => $request->edit_issuer,
      'city'        => $request->edit_city,
      'address'     => $request->edit_address,

      'start'       => $request->edit_start,
      'end'         => $request->edit_end,
      'insurance_officer'     => $request->edit_insurance_officer,
      'insurance_officer_phone'  => $request->edit_insurance_officer_phone,
      'repayment_period'   => $request->edit_repayment_period,
      'bank'        => $request->edit_bank,
      'bank_acount_number'     => $request->edit_bank_acount_number,
      'insurance'   => $request->edit_insurance,
      'status'      => $request->edit_status,

      'type_contract'           => $request->edit_type_contract,
      'discount'                => $request->edit_discount,
      'consultation_period'     => $request->edit_consultation_period,
      'administrative_expenses' => $request->edit_administrative_expenses,

    ]);
    return back()->with("updated", "تم تحديث البيانات بنجاح");
  }

/*
  function  update(Request $request) {
    $rule = $this->getRuleUpdate();
    $message = $this->getMessage();
    $validator = Validator::make($request->all(), $rule, $message);
    if($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput($request->all());
    }
    Hospital::where("id", $request->id)->update([
      'start'        => $request->start,
      'end'          => $request->end,
      'notifications'=> $request->notifications,
    ]);
    return back()->with("updated", "تم تحديث البيانات بنجاح");
  }
*/


  // شروط ادخال الحقول
  protected function getRule() {
    return $rule = [
      "name"       => "required|string",
      "email"      => "required|string",
      "phone"      => "required|string",
      "city"       => "required|string",
      "neighborhood"    => "required|string",
      "address"    => "required|string",
      "discount_percentage" => "required|string",
    ];
  }
    
  
    // شروط ادخال الحقول
    protected function getRuleUpdate() {
      return $rule = [
        "start"       => "required|string",
        "end"      => "required|string",
        "notifications"      => "required|string",
        "id"       => "required|string",
      ];
    }
  //   رسائل ادخال الحقول
  protected function getMessage()  {
      return $message = [];
  }
  








} // ProdactController Class