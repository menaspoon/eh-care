<?php

namespace App\Http\Controllers\Approve;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Companies;
use App\Models\Hospital;
use App\Models\Employees;
use App\Models\Pool;
use App\Imports\PublicApproveImport;
use App\Models\Approve\PublicApprove;

use App\Models\ServiceProvider;
use App\Models\Approve\Approve;
use App\Models\Approve\ApproveServiceDetails;
use Excel;
use Auth;
use Hash;
use DB;

class PublicApproveController extends Controller {



  function index() {
      $acount = User::where("id", Auth::id())->first();
      $companies  = Companies::where("insurance_company", $acount->insurance_company)->get();
      $service_provider = ServiceProvider::where("insurance_company", $acount->insurance_company)->get();
      return view("approve.public", compact("companies", "service_provider"));
  }



  function  import(Request $request) {
    $acount = User::where("id", Auth::id())->first();
    $lastExcelFile = PublicApprove::orderBy("id", "DESC")->where("insurance_company", $acount->insurance_company)->first();
    $last_file_number = $lastExcelFile->file_number + 1;
    $insurance_company = $acount->insurance_company;
    //Excel::import(new PublicApproveImport($last_file_number, $insurance_company), request()->file('file')); 
    $PublicApprove = PublicApprove::where([["file_number", $lastExcelFile->file_number], ["insurance_company", $acount->insurance_company]])->get();
    $PublicApproveNull = PublicApprove::where("member", null)->get();
    $PublicApproveNum = PublicApprove::where("member", "رقم العميل")->get();

    foreach($PublicApproveNull as $item) :
      PublicApprove::where("id", $item->id)->delete();
    endforeach;

    foreach($PublicApproveNum as $item) :
      PublicApprove::where("id", $item->id)->delete();
    endforeach;
    
    //$acount = User::where("id", Auth::id())->first();
    
    foreach($PublicApprove as $item) :

      $employees = Employees::where([["name", $item->member]])->first();
      $provider = ServiceProvider::where([["name", $item->service_provider]])->first();
      $acount = User::where("id", Auth::id())->first();
      $member = Employees::where("insurance_number", $request->member)->first();
      Approve::insert([
        'member'               => $employees->insurance_number,
        //'bool'                 => $request->bool,
        "type"                 => $item->type,
        'service_provider'     => $provider->id,
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
    endforeach;
    /*
    $member = Employees::where("insurance_number", $request->member)->first();
    Employees::where("insurance_number", $request->member)->update([
      "remaining_amount" => $member->remaining_amount - $request->total_before_discount
    ]);
  
    $approve = Approve::orderBy("id", "DESC")->first();
    for ($i = 0; $i < count($request->service); $i++) {
        ApproveServiceDetails::insert([
          "service"    => $request->service[$i],
          "price"      => $request->price[$i],
          "type"       => "emergency",
          "approve_id" => $approve->id,
        ]);
    }
    return back()->with("created", "تم تحديث البيانات بنجاح");
  */
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