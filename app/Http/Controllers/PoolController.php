<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Companies;
use App\Models\Contract;
use App\Models\Pool;
use App\Models\PoolPlans;
use App\Models\PoolService;

use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;

use Auth;
use Hash;
use DB;
class PoolController extends Controller {



  function index($company) {
      $acount = User::where("id", Auth::id())->first();
      $pool_service = PoolService::where("insurance_company", $acount->insurance_company)->get();
      $pool_plan = PoolPlans::where("insurance_company", $acount->insurance_company)->get();
      $pool  = Pool::join("pool_service", "pool_service.id", "=", "pool.pool")
      ->join("pool_plan", "pool_plan.id", "=", "pool.plan")
      ->select("pool.*", "pool_service.name as pool_name", "pool_plan.name as plan_name")
      ->where("pool.company", $company)->get();
      return view("companies.pool", compact("pool_service", "pool", "pool_plan"));
  }


  function  store(Request $request) {
    $acount = User::where("id", Auth::id())->first();

    Pool::insert([
      'number_of_subscribers' => $request->number_of_subscribers,
      'percentage'            => $request->percentage,
      'money'                 => $request->money,
      'plan'                  => $request->plan,
      'pool'                  => $request->pool,
      'company'               => $request->company,
      'insurance_company'     => $acount->insurance_compan,
    ]);
    return back()->with("created", "تم تحديث البيانات بنجاح");
  }



// شروط ادخال الحقول
  protected function getRule() {
    return $rule = [
        "number_of_subscribers" => "string",
        "percentage"            => "string",
        "money"                 => "string",
        "plan"                  => "string",
        "company"               => "string",
    ];
}
        
         //   رسائل ادخال الحقول
          protected function getMessage()  {
            return $message = [];
          }
  








} // ProdactController Class