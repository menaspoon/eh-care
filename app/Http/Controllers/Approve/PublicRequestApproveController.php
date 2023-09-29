<?php

namespace App\Http\Controllers\Approve;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Companies;
use App\Models\ServiceProvider;
use App\Models\Employees;
use App\Models\Contract;
use App\Models\Pool;

use Auth;
use Hash;
use DB;

class PublicRequestApproveController extends Controller {


  function companies() {
      $acount = User::where("id", Auth::id())->first();
      $companies  = Companies::where("insurance_company", $acount->insurance_company)->get();
      return view("approve.companies", compact("companies"));
  }


  function get_service_provider($id) {
    $acount = User::where("id", Auth::id())->first();
    $service_provider = ServiceProvider::where([["id", $id], ["insurance_company", $acount->insurance_company]])->first();
    echo "<div class='row'>";
      echo "<div class='col-md-3'>";
        echo "<span>   مـــــزود الخدمـــة  </span><br>";
        echo "<strong>" . $service_provider->name . "</strong>";
      echo "</div>";
        echo "<div class='col-md-3'>";
        echo "<span>  العنــــــوان  </span><br>";
        echo "<strong>" . $service_provider->address . "</strong>";
      echo "</div>";
      echo "<div class='col-md-3'>";
        echo "<span>  تاريخ الاشتـــــراك   </span><br>";
        echo "<strong>" . $service_provider->start . " / ". $service_provider->end . "</strong>";
      echo "</div>";
    echo "</div>";
}

function get_employee($id) {
    $acount = User::where("id", Auth::id())->first();
    $employee = Employees::join("companies", "companies.id", "=", "employees.company")
    ->select("employees.*", "companies.name as company_name", "companies.id as company_id")
    ->where('employees.insurance_number', $id)->first();

    $pool  = Pool::join("pool_service", "pool_service.id", "=", "pool.pool")
    ->join("pool_plan", "pool_plan.id", "=", "pool.plan")
    ->select("pool.*", "pool_service.name as pool_name", "pool_plan.name as plan_name")
    ->where("pool.company", $employee->company)->get();

    $contract = Contract::where('company', $employee->company_id)->first();
    $employeeData = "";
    $poolData = "";

    if ($employee) :
      $employeeData .= "<div class='row'>";
      $employeeData .=  "<div class='col-md-2'>";
      $employeeData .=  "<span>الاســــم</span><br>";
      $employeeData .=  "<strong>" . $employee->name . "</strong>";
      $employeeData .=  "</div>";
      $employeeData .=  "<div class='col-md-2'>";
      $employeeData .=  "<span>الشركـــة</span><br>";
      $employeeData .=  "<strong>" . $employee->company_name . "</strong>";
      $employeeData .=  "</div>";
      $employeeData .=  "<div class='col-md-2'>";
      $employeeData .=  "<span>الرصيــــــد</span><br>";
      $employeeData .=  "<strong>" . $employee->balance . " دينار " . "</strong>";
      $employeeData .=  "</div>";
      $employeeData .=  "<div class='col-md-2'>";
      $employeeData .=  "<span>الرصيد المتبقي </span><br>";
      $employeeData .=  "<strong>" . $employee->remaining_amount . " دينار " . "</strong>";
      $employeeData .=  "</div>";
      $employeeData .=  "<div class='col-md-3'>";
      $employeeData .=  "<span>  تاريخ الاشتـــــراك   </span><br>";
      $employeeData .=  "<strong>" . $employee->start . " / ". $employee->end . "</strong>";
      $employeeData .=  "</div>";
      $employeeData .=  "<div class='col-md-3'>";
      $employeeData .=  "<span>الفئـــــة</span><br>";
      $employeeData .=  "<strong>" . $contract->class .  "</strong>";
      $employeeData .=  "</div>";
      $employeeData .=  "<div class='col-md-3'>";
      $employeeData .=  "<span>النوع</span><br>";
      $employeeData .=  "<strong>" . $contract->type .  "</strong>";
      $employeeData .=  "</div>";
      $employeeData .=  "</div>";
      $poolData .= "<option>" . "</option>";
        foreach ($pool as $pool_item) :
          $poolData .= "<option value=" . $pool_item->id . ">" . $pool_item->pool_name . "</option>";
        endforeach;
    else :
      $employeeData .=  '<div style="color:red" class="text-center"> رقم التامين غير موجود في سجلاتنا </div>';
    endif;



    return response()->json([
      "employeeData" => $employeeData,
      "poolData" => $poolData,
    ]);

    /*
    if ($employee) :
      echo "<div class='row'>";
        echo "<div class='col-md-2'>";
          echo "<span>الاســــم</span><br>";
          echo "<strong>" . $employee->name . "</strong>";
        echo "</div>";
        echo "<div class='col-md-2'>";
          echo "<span>الشركـــة</span><br>";
          echo "<strong>" . $employee->company_name . "</strong>";
        echo "</div>";
        echo "<div class='col-md-2'>";
          echo "<span>الرصيــــــد</span><br>";
          echo "<strong>" . $employee->balance . " دينار " . "</strong>";
        echo "</div>";
        echo "<div class='col-md-2'>";
          echo "<span>الرصيد المتبقي </span><br>";
          echo "<strong>" . $employee->remaining_amount . " دينار " . "</strong>";
        echo "</div>";
        echo "<div class='col-md-3'>";
          echo "<span>  تاريخ الاشتـــــراك   </span><br>";
          echo "<strong>" . $employee->start . " / ". $employee->end . "</strong>";
        echo "</div>";
        echo "<div class='col-md-3'>";
          echo "<span>الفئـــــة</span><br>";
          echo "<strong>" . $contract->class .  "</strong>";
        echo "</div>";
        echo "<div class='col-md-3'>";
          echo "<span>النوع</span><br>";
          echo "<strong>" . $contract->type .  "</strong>";
        echo "</div>";
      echo "</div>";
    else :
      echo '<div style="color:red" class="text-center"> رقم التامين غير موجود في سجلاتنا </div>';
    endif;
    */
}

  




  








} // ProdactController Class