<?php

namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Prodact;
use App\Models\Absence;
use App\Models\Branch;
use App\Models\Permission;

use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use Auth;
use Hash;

class UsersController extends Controller {



  function index() {
      $acount = User::where("id", Auth::id())->first();
      $users = User::where("insurance_company", $acount->insurance_company)->get();
      return view("project.users", compact("users", "acount"));
  }

  // انشاء حساب جديد
  function register() {
      return view("project/register");
  }

  function edit_acount() {
      $acount = User::where("id", Auth::id())->first();
      return view("users.edit_acount", compact("acount"));
  }

  // الملف الشخصي 
  function profile() {
    $profile = User::where("id", Auth::user()->id)->first();
    return view("project.profile", compact("profile"));
  }



  function  store(Request $request) {
    $rule = $this->storeUser();
    $message = $this->getMessage();
    $validator = Validator::make($request->all(), $rule, $message);
    if($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput($request->all());
    }

    User::insert([
      'name'           => $request->name,
      'email'          => $request->email,
      'type'           => $type,
      "branch"         => $request->branch,
      'text_password'  => $request->password,
      'password'       => Hash::make($request->password),
    ]);

    $user = User::orderBy("id", "DESC")->first();

    Permission::insert([
      "user"               => $user->id, 
      "stock"              => $request->stock,
      "products"           => $request->products,
      "settings"           => $request->settings,
      "potential_clients"  => $request->potential_clients,
      "current_customers"  => $request->current_customers,
      "categories"         => $request->categories,
      "products_migration" => $request->products_migration,
      "absence"            => $request->absence,
      "hr"                 => $request->hr,
      "booking"            => $request->booking,
      "orders"             => $request->orders,
      "status_clint"       => $request->status_clint,
      "contact"            => $request->contact,
      "waste_management"   => $request->waste_management,
      "branch"             => $request->branch,
      "tasks"              => $request->tasks,
      "service"            => $request->service,
      "plans"              => $request->plans,
      "subscribe"          => $request->subscribe,
      "operating_administration"  => $request->operating_administration,
    ]);


    return back()->with("created", "تم اضافة الحساب بنجاح");
  }
    
// https://www.youtube.com/shorts/_P1GF866Gsc
  function absence_fillter (Request $request) {
    if($request->start) :
      $start = $request->start; $end = $request->end; $user = $request->user; $status = $request->status; $request->user;
    else :
      $start = 0; $end = 0; $user = 0; $status = 0; $user = 0;
    endif;

    $users = User::get();
    if($request->user) :
      $data  = Absence::join("users", "users.id", "=", "absence.user")->where([["date", ">=", $start], ["date", "<=", $end], ["status", $status]])->select("users.*", "absence.*")->get();
    else :
      $data  = Absence::join("users", "users.id", "=", "absence.user")->where([["date", ">=", $start], ["date", "<=", $end], ["status", $status], ["user", $user]])->select("users.*", "absence.*")->get();
    endif;

    return view("admin.absence_fillter", compact("users", "data"));
  }
  


  function  update_acount(Request $request) {
    if($request->edit_file) :
      $fileExtintion = $request->edit_file->getclientoriginalextension();
      $fileName = time() . "." . $fileExtintion;
      $path = "public/file";
      $request->edit_file->move($path, $fileName);
    else :
      $user = User::where("id", $request->id)->first();
      $fileName = $user->file;
    endif;
      User::where("id", $request->id)->update([
        'name'           => $request->edit_name,
        'email'          => $request->edit_email,
        'phone'          => $request->edit_phone,
        'text_password'  => $request->edit_password,
        'password'       => Hash::make($request->edit_password),
      ]);
/*
      Permission::where("user", $request->id)->update([
        "stock"              => $request->edit_stock,
        "products"           => $request->edit_products,
        "settings"           => $request->edit_settings,
        "potential_clients"  => $request->edit_potential_clients,
        "current_customers"  => $request->edit_current_customers,
        "categories"         => $request->edit_categories,
        "products_migration" => $request->edit_products_migration,
        "absence"            => $request->edit_absence,
        "hr"                 => $request->edit_hr,
        "booking"            => $request->edit_booking,
        "orders"             => $request->edit_orders,
        "status_clint"       => $request->edit_status_clint,
        "contact"            => $request->edit_contact,
        "waste_management"   => $request->edit_waste_management,
        "branch"             => $request->edit_branch,
        "tasks"              => $request->edit_tasks,
        "service"            => $request->edit_service,
        "operating_administration"  => $request->edit_operating_administration,
      ]);
*/
    return back()->with("updated", "تم تحديث البيانات بنجاح");
  }
  



  // حذف الحساب 
  function delete($id) {
    User::where("id", $id)->delete();
    return back()->with("deleted", "تم حذف الحساب بنجاح");
  }


  function edit(Request $request) {
    if($request->ajax()) {
      $id = $request->get('id');
      $data = User::join("branch", "branch.id", "=", "users.branch")->select("users.*", "branch.name as branch_name")->where('users.id', $id)->first();
      $permission = Permission::where("user", $id)->first();
      return response()->json(["data" => $data, "permission" => $permission]);
    }
 }






 

  // شروط ادخال الحقول
  protected function storeUser() {
    return $rule = [
        "name"       => "required|string",
        //"phone"      => "required|string",
        "email"      => "required|string",
        "branch"     => "required|string",
        "password"   => "required|string",
        //"file"       => "required|string",
        'file'       => 'required|max:10000|mimes:rar,pdf,zip'
    ];
  }

  // شروط ادخال الحقول
  protected function updateRule() {
    return $rule = [
      "id"              => "required|string",
      "edit_name"       => "required|string",
      "edit_email"      => "required|string",
      "edit_branch"     => "required|string",
      "edit_file"       => "required|string",
      "edit_password"   => "required|string",
      'edit_file'       => 'max:10000|mimes:rar,pdf,zip'

  ];
  }
        
//   رسائل ادخال الحقول
protected function getMessage()  {
  return $message = [];
}
  




} // ProdactController Class