<?php
namespace App\Http\Controllers\Pharmacy;
use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use App\Models\Pharmacy\Pharmacy;
use App\Models\Pharmacy\PharmacyDepartment;
use App\Models\Banks;
use Auth;
use Hash;
use DB;

class PharmacyDepartmentController extends Controller {


  function index() {
      $acount = User::where("id", Auth::id())->first();
      $data  = PharmacyDepartment::where("hospital", $acount->hospital)->get();
      return view("pharmacy.pharmacy_department", compact("data"));
  }


  function edit(Request $request) {
    if($request->ajax()) {
      $id = $request->get('id');
      $data = PharmacyDepartment::where('id', $id)->first();
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
    PharmacyDepartment::insert([
      'hospital'         => $acount->hospital,
      'name'             => $request->name,
    ]);
    return back()->with("updated", "تم اضافة البيانات بنجاح");
  }



  function  update(Request $request) {
    $rule = $this->updateRule();
    $message = $this->storeMessage();
    $validator = Validator::make($request->all(), $rule, $message);
    if($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput($request->all());
    }
    $acount = User::where("id", Auth::id())->first();
    PharmacyDepartment::where("id", $request->id)->update([
      'name'             => $request->edit_name,
    ]);
    return back()->with("updated", "تم تحديث البيانات بنجاح");
  }

   // شروط ادخال الحقول
  protected function storeRule() {
    return $rule = [
      "name"            => "required|string",
    ];
  }



  // شروط ادخال الحقول
  protected function updateRule() {
    return $rule = [
      "id"            => "required|string",
      "edit_name"     => "required|string",
    ];
  }
        
         //   رسائل ادخال الحقول
  protected function storeMessage()  { return $message = []; }
  


} // ProdactController Class