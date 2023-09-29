<?php

namespace App\Http\Controllers\Quartering;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Quartering\QuarteringDepartment;

use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;

use Auth;
use Hash;
use DB;
class QuarteringDepartmentController extends Controller {

  function index() {
      $acount = User::where("id", Auth::id())->first();
      $categories  = QuarteringDepartment::where("hospital", $acount->hospital)->get();
      return view("quartering.quartering_department", compact("categories"));
  }


  function  store(Request $request) {
    $acount = User::where("id", Auth::id())->first();
    $rule = $this->getRule();
    $message = $this->getMessage();
    $validator = Validator::make($request->all(), $rule, $message);
    if($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput($request->all());
    }
    QuarteringDepartment::insert([
      'name'         => $request->name,
      'hospital'     => $acount->hospital,
    ]);
    return back()->with("created", "تم اضافة القســــم بنجاح");
  }


  function edit(Request $request) {
    if($request->ajax()) {
      $id = $request->get('id');
      $data = QuarteringDepartment::where('id', $id)->first();
      return response()->json(["data" => $data]);
    }
  }


  function  update(Request $request) {
    $rule = $this->editRule();
    $message = $this->getMessage();
    $validator = Validator::make($request->all(), $rule, $message);
    if($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput($request->all());
    }
    QuarteringDepartment::where("id", $request->id)->update([
      'name'         => $request->edit_name,
    ]);
    return back()->with("updated", "تم تحديث البيانات  بنجاح");
  }


// شروط ادخال الحقول
protected function getRule() {
  return $rule = [
      "name"       => "required|string",
  ];
}
  
// شروط ادخال الحقول
protected function editRule() {
  return $rule = [
      "edit_name"       => "required|string",
  ];
}

//   رسائل ادخال الحقول
protected function getMessage()  {
    return $message = [];
}
  








} // ProdactController Class