<?php
namespace App\Http\Controllers\Pharmacy;
use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use App\Models\Pharmacy\Pharmacy;
use App\Models\Banks;
use Auth;
use Hash;
use DB;

class PharmacyController extends Controller {


  function index($id) {
      $acount = User::where("id", Auth::id())->first();
      $data  = Pharmacy::where([["insurance_company", $acount->insurance_company], ["category", $id]])->get();
      return view("pharmacy.pharmacy", compact("data"));
  }


  function edit(Request $request) {
    if($request->ajax()) {
      $id = $request->get('id');
      $data = Pharmacy::where('id', $id)->first();
      return response()->json(["data" => $data]);
    }
  }


  function  store(Request $request) {
    $rule = $this->storeRule();
    $message = $this->storeMessage();
    $validator = Validator::make($request->all(), $rule, $message);
    if($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput($request->all());
    }
    $acount = User::where("id", Auth::id())->first();
    Pharmacy::insert([
      'insurance_company' => $acount->insurance_company,
      'name'              => $request->name,
      'type'              => $request->type,
      'tablet'            => $request->tablet,
      'strip'             => $request->strip,
      'volume'            => $request->volume,
      'small_price'       => $request->small_price,
      'large_price'       => $request->large_price,
      'category'          => $request->category,
    ]);
    return back()->with("created", "تم اضافة البيانات بنجاح");
  }
  


  function  update(Request $request) {
    $rule = $this->updateRule();
    $message = $this->storeMessage();
    $validator = Validator::make($request->all(), $rule, $message);
    if($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput($request->all());
    }
    $acount = User::where("id", Auth::id())->first();
    Pharmacy::where("id", $request->id)->update([
      'name'              => $request->edit_name,
      'type'              => $request->edit_type,
      'tablet'            => $request->edit_tablet,
      'strip'             => $request->edit_strip,
      'volume'            => $request->edit_volume,
      'small_price'       => $request->edit_small_price,
      'large_price'       => $request->edit_large_price,
    ]);
    return back()->with("updated", "تم تحديث البيانات بنجاح");
  }

   // شروط ادخال الحقول
  protected function storeRule() {
    return $rule = [
      "name"            => "required|string",
      "type"            => "required|string",
      "tablet"          => "required|string",
      "strip"           => "required|string",
      "volume"          => "required|string",
      "small_price"     => "required|string",
      "large_price"     => "required|string",
      "category"        => "required|string",
    ];
  }



  // شروط ادخال الحقول
  protected function updateRule() {
    return $rule = [
      "id"              => "required|string",
      "edit_name"            => "required|string",
      "edit_type"            => "required|string",
      "edit_tablet"          => "required|string",
      "edit_strip"           => "required|string",
      "edit_volume"          => "required|string",
      "edit_small_price"     => "required|string",
      "edit_large_price"     => "required|string",
    ];
  }
        
         //   رسائل ادخال الحقول
  protected function storeMessage()  { return $message = []; }
  


} // ProdactController Class