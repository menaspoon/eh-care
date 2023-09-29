<?php

namespace App\Http\Controllers\ServiceProvider;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Companies;
use App\Models\Classs;
use App\Models\ServiceProvider;

use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;

use Auth;
use Hash;
use DB;
class ServiceProviderController extends Controller {



  function index() {
    $acount   = User::where("id", Auth::id())->first();
    $company  = Companies::where("id", $acount->hospital)->first();
    $classs   = Classs::where("insurance_company", $acount->insurance_company)->get();
    $data     = ServiceProvider::where("insurance_company", $acount->insurance_company)->get();
    return view("service_provider.service_provider", compact("data", "classs"));
  }

  function edit_hospital() {
      $acount = User::where("id", Auth::id())->first();
      $hospital  = Hospital::where("id", $acount->hospital)->first();
      return view("settings.edit_hospital", compact("hospital"));
  }


  function edit(Request $request) {
    if($request->ajax()) {
      $id = $request->get('id');
      $data = ServiceProvider::where('id', $id)->first();
      return response()->json(["data" => $data]);
    }
  }



  function  store(Request $request) {
    /*
    $rule = $this->getRule();
    $message = $this->getMessage();
    $validator = Validator::make($request->all(), $rule, $message);
    if($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput($request->all());
    }
    */
    $acount   = User::where("id", Auth::id())->first();
    $company  = Companies::where("id", $acount->hospital)->first();
    ServiceProvider::insert([
      'name'         => $request->name,
      'branch'       => $request->branch,
      'class'        => $request->class,
      'tel'          => $request->tel,
      'phone'        => $request->phone,
      'email'        => $request->email,
      'fax'          => $request->fax,
      'tax_record'   => $request->tax_record,
      'tax_registration_number' => $request->tax_registration_number,
      'issuer'      => $request->issuer,
      'city'        => $request->city,
      'address'     => $request->address,

      'start'       => $request->start,
      'end'         => $request->end,
      'insurance_officer'     => $request->insurance_officer,
      'insurance_officer_phone'  => $request->insurance_officer_phone,
      'repayment_period'   => $request->repayment_period,
      'bank'        => $request->bank,
      'bank_acount_number'     => $request->bank_acount_number,
      'insurance'   => $request->insurance,
      'status'      => $request->status,
      'company'     => $company->id,
      //'created'      => date("j, n, Y"),
    ]);

    return back()->with("created", "تم تحديث البيانات بنجاح");
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