<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Companies;
use App\Models\Contract;
use App\Models\Employees;

use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
 
use Auth;
use Hash;
use DB;
class CompaniesController extends Controller {



  function index() {
      $acount = User::where("id", Auth::id())->first();
      $companies  = Companies::where("insurance_company", $acount->insurance_company)->get();
      return view("project.companies", compact("companies",));
  }

  


  function get_employees_campany(Request $request) {
      if($request->ajax()) {
        $id = $request->get('id');
        $data = Employees::where('company', $request->id)->get();
        echo "<option value=''></option>";
        foreach ($data as $item) :
          echo "<option value=". $item->insurance_number ." >" . $item->name . "</option>";
        endforeach;
      }
  }

  function  store(Request $request) {

    $acount = User::where("id", Auth::id())->first();
    Companies::insert([
      'name'         => $request->name,
      'email'        => $request->email,
      'phone'        => $request->phone,
      'address'      => $request->address,
      'commercial_register' => $request->commercial_register,
      'tax_card'            => $request->tax_card,
      'issuer'              => $request->issuer,
      'contracting_officer' => $request->contracting_officer,
      'contracting_officer_phone' => $request->contracting_officer_phone,
      'insurance_company'    => $acount->insurance_company,
      'created'      => date("j, n, Y"),

    ]);

    $company = Companies::orderBy("id", "DESC")->first();
    Contract::insert([
      "company" => $company->id,
      "insurance_company" => $acount->insurance_company
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