<?php

namespace App\Http\Controllers\Approve;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Companies;
use App\Models\Hospital;
use App\Models\Pool;

use App\Models\ServiceProvider;
use App\Models\Approve\Approve;
use App\Models\Approve\ApproveServiceDetails;
use App\Models\Employees;
use App\Models\Contract;
use App\Models\Surgery\Surgery;
use Auth;
use Hash;
use DB;

class SurgeryApproveController extends Controller {



  function index() {
      $acount = User::where("id", Auth::id())->first();
      //$company  = Companies::where("id", $company)->first();
      $surgery  = Surgery::where("insurance_company", $acount->insurance_company)->get();
      $service_provider = ServiceProvider::where("insurance_company", $acount->insurance_company)->get();
      $contract = Contract::where("insurance_company", $acount->insurance_company)->first();
      $approve = Approve::orderBy("id", "DESC")->first();
      return view("approve.surgery.index", compact("surgery", "contract",  "approve", "service_provider"));
  }

  
  function details($id) {
      $acount   = User::where("id", Auth::id())->first();
      $company  = Hospital::where("id", $acount->insurance_company)->first();
      $approve  = Approve::join("service_provider", "service_provider.id", "=", "approve.service_provider")
      ->select("approve.*", "service_provider.name as provider_name")
      ->where("approve.id", $id)->first();
      $service_provider = ServiceProvider::where("id", $approve->service_provider)->first();
      $number = Employees::join("companies", "companies.id", "=", "employees.company")
      ->select("employees.*", "employees.name as username", "companies.*")
      ->where("insurance_number", $approve->member)->first();
      $contract = Contract::where("company", $number->company)->first();
      $ApproveServiceDetails = ApproveServiceDetails::join("surgery", "surgery.id", "=", "approve_service_details.service")
      ->where("type", "surgery")->where("approve_id", $approve->id)->get();

      return view("approve.surgery.details", compact("company", "number", "approve", "contract",  "service_provider", "ApproveServiceDetails"));
  }



  function  store(Request $request) {
    $acount = User::where("id", Auth::id())->first();
    $member = Employees::where("insurance_number", $request->member)->first();    
    Approve::insert([
      'member'               => $request->member,
      'bool'                 => $request->bool,
      "type"                 => "surgery",
      'service_provider'     => $request->service_provider,
      'total_price'          => $request->totle_price,
      'discount_percentage'  => $request->discount_percentage,
      'discount_amount'      => $request->discount_amount,
      'total_before_discount'=> $request->total_before_discount,
      'diagnosing'           => $request->diagnosing,
      'note'                 => $request->note,
      'company'              => $member->company,
      'insurance_company'    => $acount->insurance_company,
      'date'                 => date("Y-m-d")

    ]);

    $member = Employees::where("insurance_number", $request->member)->first();
    Employees::where("insurance_number", $request->member)->update([
      "remaining_amount" => $member->remaining_amount - $request->total_before_discount
    ]);
    
    $approve = Approve::orderBy("id", "DESC")->first();
    for ($i = 0; $i < count($request->service); $i++) {
        ApproveServiceDetails::insert([
          "service"    => $request->service[$i],
          "price"      => $request->price[$i],
          "type"       => "surgery",
          "approve_id" => $approve->id,
        ]);
    }
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