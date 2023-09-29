<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Companies;
use App\Models\Employees;
use App\Models\ServiceProvider;
use App\Models\Approve\Approve;

use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use Auth; 
use Hash;

class StatisticsController extends Controller {

  function bar() {
    $acount = User::where("id", Auth::id())->first();

    $count_company = Companies::where("insurance_company", $acount->insurance_company)->count();
    $count_provider = ServiceProvider::where("insurance_company", $acount->insurance_company)->count();
    $count_employees  = Employees::where("insurance_company", $acount->insurance_company)->count();

    
    $bar_ray        = Approve::where([["insurance_company", $acount->insurance_company], ["type", "ray"]])->count();
    $bar_surgery    = Approve::where([["insurance_company", $acount->insurance_company], ["type", "surgery"]])->count();
    $bar_analytics  = Approve::where([["insurance_company", $acount->insurance_company], ["type", "analytics"]])->count();
    $bar_emergency  = Approve::where([["insurance_company", $acount->insurance_company], ["type", "emergency"]])->count();
    $bar_intensive_care  = Approve::where([["insurance_company", $acount->insurance_company], ["type", "intensive_care"]])->count();
    $bar_medical_examination = Approve::where([["insurance_company", $acount->insurance_company], ["type", "medical_examination"]])->count();
    $bar_physical_therapy    = Approve::where([["insurance_company", $acount->insurance_company], ["type", "physical_therapy"]])->count();
    
    //$data  = User::where("hospital", $acount->hospital)->where("acount", $acounts)->get();
    //$companies  = Companies::where("hospital", $acount->hospital)->get();
    return view("statistics.bar", compact(
      "count_company", "count_provider", "count_employees",
      "bar_ray", "bar_analytics", "bar_surgery", "bar_emergency", "bar_intensive_care", "bar_medical_examination", "bar_physical_therapy"));
  }

  function absence_fillter (Request $request) {
    if($request->start) :
      $start = $request->start; $end = $request->end; $user = $request->user; $status = $request->status; $request->user;
    else :
      $start = 0; $end = 0; $user = 0; $status = 0; $user = 0;
    endif;

    $users = User::get();
    if($request->start) :
      $data  = Absence::join("officer", "officer.id", "absence.user")->where([["date", ">=", $start], ["date", "<=", $end], ["status", $status]])->get();
    else :
      $data  = Absence::where([["date", ">=", $start], ["date", "<=", $end], ["status", $status], ["user", $user]])->get();
    endif;

    return view("clinic.absence_fillter", compact("users", "data"));
  }


  function  plus(Request $request) {
    $absence = Absence::where([["user", $request->id],["status", "plus"],["date", date("Y-m-d")]])->first();
    if(!$absence) :
      Absence::insert([
        'user'            => $request->id,
        'status'          => "plus",
        "attendance_time" => date("F j, Y, g:i a"),
        'date'            => date("Y-m-d"),
      ]);
      $data = "succsess";
      return response()->json(["data" => $data]);
    else :
      $data = "faild";
      return response()->json(["data" => $data]);
    endif;
  }

  function  minus(Request $request) {
    $absence = Absence::where([["user", $request->id],["status", "plus"],["date", date("Y-m-d")]])->first();
    if(!$absence) :
      Absence::insert([
        'user'           => $request->id,
        'status'        => "minus",
        "attendance_time" => date("F j, Y, g:i a"),
        'date'           => date("Y-m-d"),
      ]);
    endif;
    return back()->with("created", "تم اضافة الحساب بنجاح");
  }

  function  departure(Request $request) {
    $absence = Absence::where([["user", $request->id],["status", "plus"],["date", date("Y-m-d")]])->first();
    if($absence) :
      Absence::where("id", $absence->id)->update([
        'departure'        => "go",
        "time_departure"   => date("F j, Y, g:i a"),
      ]);
    endif;
    return back()->with("created", "تم اضافة الحساب بنجاح");
  }


  function  vacation(Request $request) {
    $absence = Absence::where([["user", $request->id],["status", "plus"],["date", date("Y-m-d")]])->first();
    if(!$absence) :
      Absence::insert([
        'user'            => $request->id,
        'status'          => "vacation",
        //"attendance_time" => date("F j, Y, g:i a"),
        'date'            => date("Y-m-d"),
      ]);
    endif;
    return back()->with("created", "تم اضافة الحساب بنجاح");
  }


  function  overtime(Request $request) {
    $absence = Absence::where([["user", $request->user_overtime],["status", "plus"],["date", date("Y-m-d")]])->first();
    if($absence) :
      Absence::where("id", $absence->id)->update([
        'user'            => $request->user_overtime,
        'overtime'        => $request->overtime,
      ]);
    endif;
    //return back()->with("created", "تم اضافة الحساب بنجاح");
  }


  

} // ProdactController Class