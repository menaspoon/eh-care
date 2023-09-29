<?php

namespace App\Http\Controllers\Reports;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Category;
use App\Models\Employees;
use App\Models\Recepion;
use App\Models\Companies;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;

use Auth;
use Hash;
use DB;
class QuarteringReportController extends Controller {



function public(Request $request) {
    if($request->start) :
      $start = $request->start; $end = $request->end;
    else :
      $start = 0; $end = 0;
    endif;
    $acount = User::where("id", Auth::id())->first();
    $employees  = Employees::where("hospital", $acount->hospital)->get();
    $insurance  = Recepion::
    join("employees", "employees.insurance_number", "=", "recepion.insurance_number")
    ->join("companies", "companies.id", "=", "employees.company")
    ->join("quartering_booking", "quartering_booking.name", "=", "recepion.id")
    ->join("quartering", "quartering.id", "=", "quartering_booking.medical_examination")
    ->join("users", "users.id", "=", "quartering_booking.doctor")
    ->select("recepion.*", "employees.name as emp_name", "companies.name as company_name", "quartering.name as quartering_name", "quartering_booking.status",  "quartering_booking.status", "quartering.price", "users.name as doctor_name")
    ->where([["recepion.hospital", $acount->hospital], ["type", "insurance"], ['recepion.time_filter', '>=', $start], ['recepion.time_filter', '<=', $end]])->get();
    return view("reports.quartering.public", compact("employees", "insurance"));
}


function company(Request $request) {
    if($request->start) :
        $start = $request->start; $end = $request->end; $company = $request->company;
    else :
        $start = 0; $end = 0; $company = 0;
    endif;
    $acount = User::where("id", Auth::id())->first();
    $companies  = Companies::where("hospital", $acount->hospital)->get();
    $employees  = Employees::where("hospital", $acount->hospital)->get();
    $insurance  = Recepion::
    join("employees", "employees.insurance_number", "=", "recepion.insurance_number")
    ->join("companies", "companies.id", "=", "employees.company")
    ->join("quartering_booking", "quartering_booking.name", "=", "recepion.id")
    ->join("quartering", "quartering.id", "=", "quartering_booking.medical_examination")
    ->join("users", "users.id", "=", "quartering_booking.doctor")
    ->select("recepion.*", "employees.name as emp_name", "companies.name as company_name", "quartering.name as quartering_name", "quartering_booking.status",  "quartering.price", "users.name as doctor_name")
    ->where([["recepion.hospital", $acount->hospital], ["recepion.type", "insurance"], ['recepion.time_filter', '>=', $start], ['recepion.time_filter', '<=', $end], ['recepion.company', $company]])->get();
  return view("reports.quartering.company", compact("companies", "insurance"));
}



function company_with_status(Request $request) {
  if($request->start) :
    $start = $request->start; $end = $request->end; $company = $request->company; $status = $request->status;
  else :
    $start = 0; $end = 0; $company = 0; $status = 0;
  endif;
  $acount = User::where("id", Auth::id())->first();
  $companies  = Companies::where("hospital", $acount->hospital)->get();
  $employees  = Employees::where("hospital", $acount->hospital)->get();
  $insurance  = Recepion::
  join("employees", "employees.insurance_number", "=", "recepion.insurance_number")
  ->join("companies", "companies.id", "=", "employees.company")
  ->join("quartering_booking", "quartering_booking.name", "=", "recepion.id")
  ->join("quartering", "quartering.id", "=", "quartering_booking.medical_examination")
  ->join("users", "users.id", "=", "quartering_booking.doctor")
  ->select("recepion.*", "employees.name as emp_name", "companies.name as company_name", "quartering.name as quartering_name", "quartering_booking.status", "quartering.price", "users.name as doctor_name")
  
  
  ->where([["recepion.hospital", $acount->hospital], ["type", "insurance"], ['recepion.time_filter', '>=', $start], ['recepion.time_filter', '<=', $end], ['recepion.company', $company], ['quartering_booking.status', $status]])->get();
  
  return view("reports.quartering.company_with_status", compact("companies", "insurance", "status"));
}




  function employees(Request $request) {
      if($request->start) :
        $start = $request->start; $end = $request->end; $employeess = $request->employees;
      else :
        $start = 0; $end = 0; $employeess = 0; 
      endif;
      $acount = User::where("id", Auth::id())->first();
      $companies  = Companies::where("hospital", $acount->hospital)->get();
      $employees  = Employees::where("hospital", $acount->hospital)->get();
      $insurance  = Recepion::
      join("employees", "employees.insurance_number", "=", "recepion.insurance_number")
      ->join("companies", "companies.id", "=", "employees.company")
      ->join("quartering_booking", "quartering_booking.name", "=", "recepion.id")
      ->join("quartering", "quartering.id", "=", "quartering_booking.medical_examination")
      ->join("users", "users.id", "=", "quartering_booking.doctor")
      ->select("recepion.*", "employees.name as emp_name", "companies.name as company_name", "quartering.name as quartering_name", "quartering_booking.status",  "quartering.price", "users.name as doctor_name")
      ->where([["recepion.hospital", $acount->hospital], ["type", "insurance"], ['recepion.time_filter', '>=', $start], ['recepion.time_filter', '<=', $end], ['recepion.insurance_number', $employeess]])->get();
      return view("reports.quartering.employees", compact("companies", "insurance"));
  }

  
  function receptionist(Request $request) {
    if($request->start) :
      $start = $request->start; $end = $request->end; $doctor = $request->receptionist;
    else :
      $start = 0; $end = 0; $receptionist = 0; 
    endif;
    $acount = User::where("id", Auth::id())->first();
    $companies  = Companies::where("hospital", $acount->hospital)->get();
    $employees  = Employees::where("hospital", $acount->hospital)->get();
    $receptionists    = User::where([["hospital", $acount->hospital], ["acount", "receptionist"]])->get();
    $insurance  = Recepion::
    join("employees", "employees.insurance_number", "=", "recepion.insurance_number")
    ->join("companies", "companies.id", "=", "employees.company")
    ->join("quartering_booking", "quartering_booking.name", "=", "recepion.id")
    ->join("quartering", "quartering.id", "=", "quartering_booking.medical_examination")
    ->join("users", "users.id", "=", "quartering_booking.doctor")
    ->select("recepion.*", "employees.name as emp_name", "companies.name as company_name", "quartering.name as quartering_name", "quartering_booking.status",  "quartering.price", "users.name as doctor_name")
    ->where([["recepion.hospital", $acount->hospital], ["type", "insurance"], ['recepion.time_filter', '>=', $start], ['recepion.time_filter', '<=', $end], ['recepion.receptionist', $receptionist]])->get();
    return view("reports.quartering.doctor", compact("doctors", "insurance"));
  }




  function employees_with_status(Request $request) {
      if($request->start) :
        $start = $request->start; $end = $request->end; $employeess = $request->employees; $status = $request->status;
      else :
        $start = 0; $end = 0; $employeess = 0; $status = 0;
      endif;
      $acount = User::where("id", Auth::id())->first();
      $companies  = Companies::where("hospital", $acount->hospital)->get();
      $employees  = Employees::where("hospital", $acount->hospital)->get();
      $insurance  = Recepion::
      join("employees", "employees.insurance_number", "=", "recepion.insurance_number")
      ->join("companies", "companies.id", "=", "employees.company")
      ->join("quartering_booking", "quartering_booking.name", "=", "recepion.id")
      ->join("quartering", "quartering.id", "=", "quartering_booking.medical_examination")
      ->join("users", "users.id", "=", "quartering_booking.doctor")
      ->select("recepion.*", "employees.name as emp_name", "companies.name as company_name", "quartering.name as quartering_name", "quartering_booking.status",  "quartering.price", "users.name as doctor_name")
      ->where([["recepion.hospital", $acount->hospital], ["recepion.type", "insurance"], ['recepion.time_filter', '>=', $start], ['recepion.time_filter', '<=', $end], ['recepion.insurance_number', $employeess], ['quartering_booking.status', $status]])->get();
      return view("reports.quartering.employees_with_status", compact("companies", "insurance"));
  }



  function status(Request $request) {
    if($request->start) :
      $start = $request->start; $end = $request->end; $status = $request->status;
    else :
      $start = 0; $end = 0; $status = 0;
    endif;
    $acount = User::where("id", Auth::id())->first();
    $companies  = Companies::where("hospital", $acount->hospital)->get();
    $employees  = Employees::where("hospital", $acount->hospital)->get();
    $insurance  = Recepion::
    join("employees", "employees.insurance_number", "=", "recepion.insurance_number")
    ->join("companies", "companies.id", "=", "employees.company")
    ->join("quartering_booking", "quartering_booking.name", "=", "recepion.id")
    ->join("quartering", "quartering.id", "=", "quartering_booking.medical_examination")
    ->join("users", "users.id", "=", "quartering_booking.doctor")
    ->select("recepion.*", "employees.name as emp_name", "companies.name as company_name", "quartering.name as quartering_name", "quartering_booking.status",  "quartering.price", "users.name as doctor_name")
    ->where([["recepion.hospital", $acount->hospital], ["recepion.type", "insurance"], ['recepion.time_filter', '>=', $start], ['recepion.time_filter', '<=', $end], ['quartering_booking.status', $status]])->get();
    return view("reports.quartering.status", compact("companies", "insurance"));
}




          // شروط ادخال الحقول
          protected function getRule() {
            return $rule = [
              "name"       => "required|string",
            ];
          }
        
         //   رسائل ادخال الحقول
          protected function getMessage()  {
            return $message = [];
          }
  








} // ProdactController Class