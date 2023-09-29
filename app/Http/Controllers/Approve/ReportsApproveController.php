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
use App\Models\Ray\Ray;
use Auth;
use Hash;
use DB;

class ReportsApproveController extends Controller {



  function index() {
      $acount = User::where("id", Auth::id())->first();
      $companies  = Companies::where("insurance_company", $acount->insurance_company)->get();
      $ray  = Ray::where("hospital", $acount->insurance_company)->get();
      $service_provider = ServiceProvider::where("insurance_company", $acount->insurance_company)->get();
      $contract = Contract::where("insurance_company", $acount->insurance_company)->first();
      $approve = Approve::
      join("employees", "employees.insurance_number", "=", "approve.member")
      ->join("companies", "companies.id", "=", "employees.company")
      ->join("service_provider", "service_provider.id", "=", "approve.service_provider")
      ->select("approve.*", "employees.name as username", "companies.name as company_name", "service_provider.name as provider_name")
      ->orderBy("approve.id", "DESC")->get();
      return view("approve.reports", compact("ray", "companies", "contract",  "approve", "service_provider"));
  }





 
  function search(Request $request) {
    $acount = User::where("id", Auth::id())->first();
    $companies  = Companies::where("insurance_company", $acount->insurance_company)->get();
    $ray  = Ray::where("hospital", $acount->insurance_company)->get();
    $service_provider = ServiceProvider::where("insurance_company", $acount->insurance_company)->get();
    $contract = Contract::where("insurance_company", $acount->insurance_company)->first();
    $query = Approve::query();
    $query = Approve::
    join("employees", "employees.insurance_number", "=", "approve.member")
    ->join("companies", "companies.id", "=", "employees.company")
    ->join("service_provider", "service_provider.id", "=", "approve.service_provider")
    ->select("approve.*", "employees.name as username", "companies.name as company_name", "service_provider.name as provider_name")
    ->orderBy("approve.id", "DESC");
    // تاريخ البداية
    (request('start') > 0) ? $query->where("date", '>=', request("start")) : "" ;
    // تاريخ النهاية
    (request('end') > 0) ? $query->where("date", '<=', request("end")) : "" ;
    // الشركة المومن عليها
    (request('company') > 0) ? $query->where("approve.company",  request("company")) : "" ;
    // مزود الخدمة
    (request('service_provider') > 0) ? $query->where("approve.service_provider",  request("service_provider")) : "" ;
    // الموظفين المومن عليها
    (request('employees') > 0) ? $query->where("approve.member",  request("employees")) : "" ;
    // نوع المراجعة
    (request('type') != "") ? $query->where("approve.type",  request("type")) : "" ;
    // اقل سعر 
    (request('min_price') > 0) ? $query->where("total_price", '>=', request("min_price")) : "" ;
    // اعلي سعر 
    (request('max_price') > 0) ? $query->where("total_price", '<=', request("max_price")) : "" ;
    $approve = $query->get();
    return view("approve.reports", compact("ray", "companies", "contract",  "approve", "service_provider"));
   }
  








} // ProdactController Class