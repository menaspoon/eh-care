<?php

namespace App\Http\Controllers\ServiceProvider;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Companies;
use App\Models\ServiceProvider\ServiceProvider;
use App\Models\ServiceProvider\ServiceProviderInstallments;


use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;

use Auth;
use Hash;
use DB;
class ServiceProviderInstallmentsController extends Controller {



  function index($provider) {
      $acount = User::where("id", Auth::id())->first();
      $data  = ServiceProviderInstallments::where("provider", $provider)->get();
      return view("service_provider.service_provider_installments", compact("data"));
  }


  function  store(Request $request) {
    $rule = $this->getRule();
    $message = $this->getMessage();
    $validator = Validator::make($request->all(), $rule, $message);
    if($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput($request->all());
    }
    $acount = User::where("id", Auth::id())->first();

    


    ServiceProviderInstallments::insert([
      'provider'     => $request->provider,
      'agent'        => $request->agent,
      'balance'      => $request->money,
      'created'      => $request->created,
      'insurance_company'      => $acount->insurance_company,
    ]);
    $provider = ServiceProvider::where("id", $request->provider)->first();
    ServiceProvider::where("id", $request->provider)->update([
      'spent_balance'      => $provider->spent_balance + $request->money,
    ]);
    return back()->with("created", "تم اضافة القسط  بنجاح");
  }

  
  function filter (Request $request) {
    $acount = User::where("id", Auth::id())->first();
    $provider = ServiceProvider::where("insurance_company", $acount->insurance_company)->get();
    $data = ServiceProviderInstallments::where("insurance_company", $request->insurance_company)->get();

    $query = ServiceProviderInstallments::query();
    $query = ServiceProviderInstallments::orderBy("service_provider_installments.id", "DESC");
    // تاريخ البداية
    (request('start') > 0) ? $query->where("created", '>=', request("start")) : "" ;
    // تاريخ النهاية
    (request('end') > 0) ? $query->where("created", '<=', request("end")) : "" ;
    // مزود الخدمة
    (request('provider') > 0) ? $query->where("provider", request("provider")) : "" ;
    
    $data = $query->get();

    return view("service_provider.filter_service_provider_installments", compact("provider", "data"));
  }

  // شروط ادخال الحقول
  protected function getRule() {
    return $rule = [
      "provider"    => "required|string",
      "agent"      => "required|string",
      "money"      => "required|string",
      "created"    => "required|string",
    ];
  }
        
  //   رسائل ادخال الحقول
  protected function getMessage()  {
      return $message = [];
  }
  








} // ProdactController Class