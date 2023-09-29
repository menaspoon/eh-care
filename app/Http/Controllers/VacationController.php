<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Vacation;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use Auth;
use Hash;
use DB;
class VacationController extends Controller {
  
  function index() {
      $acount = User::where("id", Auth::id())->first();
      $data  = Vacation::where("hospital", $acount->hospital)->get();
      return view("project.vacation", compact("data"));
  }

  function edit(Request $request) {
    if($request->ajax()) {
      $id = $request->get('id');
      $data = Vacation::where('id', $id)->first();
      return response()->json(["data" => $data]);
    }
  }


  function  store(Request $request) {
    $rule = $this->storeRule();
    $message = $this->getMessage();
    $validator = Validator::make($request->all(), $rule, $message);
    if($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput($request->all());
    }
    $acount = User::where("id", Auth::id())->first();
    Vacation::insert([
      'user'         => Auth::id(),
      'start'        => $request->start,
      'end'          => $request->end,
      'reason'       => $request->reason,
      'note'         => $request->note,
      'status'       => "wating",
      'created'      => date("F j, Y, g:i a"),
      'date'         => date("j-n-Y"),
      'hospital'     => $acount->hospital,
    ]);
    return back()->with("created", "تم اضافة البيانات بنجاح");
  }



  function  update(Request $request) {
    $rule = $this->updateRule();
    $message = $this->getMessage();
    $validator = Validator::make($request->all(), $rule, $message);
    if($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput($request->all());
    }
    $acount = User::where("id", Auth::id())->first();
    Vacation::where("id", $request->id)->update([
      'user'         => Auth::id(),
      'start'        => $request->edit_start,
      'end'          => $request->edit_end,
      'reason'       => $request->edit_reason,
      'note'         => $request->edit_note,
      'note_admin'   => $request->edit_note_admin,
      'status'       => $request->edit_status,
    ]);
    return back()->with("created", "تم تحديث البيانات بنجاح");
  }




  // شروط ادخال الحقول
  protected function storeRule() {
    return $rule = [
      //"name"       => "required|string",
      "start"     => "required|string",
      "end"       => "required|string",
      "reason"    => "required|string",
      "note"      => "required|string",
    ];
  }

  // شروط ادخال الحقول
  protected function updateRule() {
    return $rule = [
      "id"       => "required|string",
      "edit_start"      => "required|string",
      "edit_end"        => "required|string",
      "edit_reason"     => "required|string",
      "edit_note"       => "required|string",
      "edit_status"     => "required|string",
      "edit_note_admin" => "required|string",
  ];
  }
        
         //   رسائل ادخال الحقول
          protected function getMessage()  {
            return $message = [];
          }
  








} // ProdactController Class