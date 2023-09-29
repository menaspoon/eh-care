<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Companies;
use App\Models\Employees;
use App\Models\Category;
use App\Models\User;

use App\Models\Recepion;
use App\Models\Settings;
use App\Models\Message\Notifications;

// الفحوصات 
use App\Models\MedicalExamination\MedicalExamination;
use App\Models\MedicalExamination\MedicalExaminationBooking;
use App\Models\MedicalExamination\MedicalExaminationCompany;

// العمليات
use App\Models\Surgery\Surgery;
use App\Models\Surgery\SurgeryBooking;
use App\Models\Surgery\SurgeryDepartment;
// التحاليل
use App\Models\Analytics\Analytics;
use App\Models\Analytics\AnalyticsBooking;
use App\Models\Analytics\AnalyticsDepartment;


use App\Models\Ray\RayBooking;
use App\Models\Emergency\EmergencyBooking;
use App\Models\Quartering\QuarteringBooking;
use App\Models\IntensiveCare\IntensiveCareBooking;
use App\Models\PhysicalTherapy\PhysicalTherapyBooking;


use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;

use Auth;
use Hash;
use DB;

class BookingController extends Controller {



  function index() {
    $acount = User::where("id", Auth::id())->first();
    $settings  = Settings::where("hospital", $acount->hospital)->first();
      
      // الفحوصات
      $MedicalExaminationBooking = MedicalExaminationBooking::
      join("medical_examination", "medical_examination.id", "=", "medical_examination_booking.medical_examination")
      ->join("users", "users.id", "=", "medical_examination_booking.doctor")
      ->select("medical_examination.name as booking_name", "medical_examination_booking.*", "users.name as doctor_name")
      ->where([["medical_examination_booking.hospital", $acount->hospital], ["medical_examination_booking.created", date("Y-m-j")]])->get();
      
      // التحاليل
      $analytic = AnalyticsBooking::join("analytics", "analytics.id", "=", "analytics_booking.medical_examination")
      ->join("users", "users.id", "=", "analytics_booking.doctor")
      ->select("analytics.name as analytics_name", "analytics_booking.*", "users.name as doctor_name")
      ->where([["analytics_booking.hospital", $acount->hospital], ["analytics_booking.created", date("Y-m-j")]])->get();
      
      // العمليات
      $surgery = SurgeryBooking::join("surgery", "surgery.id", "=", "surgery_booking.medical_examination")
      ->join("users", "users.id", "=", "surgery_booking.doctor")
      ->select("surgery.name as surgery_name", "surgery_booking.*", "users.name as doctor_name")
      ->where([["surgery_booking.hospital", $acount->hospital], ["surgery_booking.created", date("Y-m-j")]])->get();
      
      // الاشعة
      $ray = RayBooking::join("ray", "ray.id", "=", "ray_booking.medical_examination")
      ->join("users", "users.id", "=", "ray_booking.doctor")
      ->select("ray.name as ray_name", "ray_booking.*", "users.name as doctor_name")
      ->where([["ray.hospital", $acount->hospital], ["ray_booking.created", date("Y-m-j")]])->get();
      
      // الطوارئ
      $emergency = EmergencyBooking::join("emergency", "emergency.id", "=", "emergency_booking.medical_examination")
      ->join("users", "users.id", "=", "emergency_booking.doctor")
      ->select("emergency.name as emergency_name", "emergency_booking.*", "users.name as doctor_name")
      ->where([["emergency.hospital", $acount->hospital], ["emergency_booking.created", date("Y-m-j")]])->get();
            
      // الطوارئ
      $intensiveCare = IntensiveCareBooking::join("intensive_care", "intensive_care.id", "=", "intensive_care_booking.medical_examination")
      ->join("users", "users.id", "=", "intensive_care_booking.doctor")
      ->select("intensive_care.name as intensive_care_name", "intensive_care_booking.*", "users.name as doctor_name")
      ->where([["intensive_care.hospital", $acount->hospital], ["intensive_care_booking.created", date("Y-m-j")]])->get();
                  
      // الايـــــــواء
      $quartering = QuarteringBooking::join("quartering", "quartering.id", "=", "quartering_booking.medical_examination")
      ->join("users", "users.id", "=", "quartering_booking.doctor")
      ->select("quartering.name as quartering_name", "quartering_booking.*", "users.name as doctor_name")
      ->where([["quartering.hospital", $acount->hospital], ["quartering_booking.created", date("Y-m-j")]])->get();
      
      // علاج طبيعــــــي
      $physical_therapy = PhysicalTherapyBooking::join("physical_therapy", "physical_therapy.id", "=", "physical_therapy_booking.medical_examination")
      ->join("users", "users.id", "=", "physical_therapy_booking.doctor")
      ->select("physical_therapy.name as physical_therapy_name", "physical_therapy_booking.*", "users.name as doctor_name")
      ->where([["physical_therapy.hospital", $acount->hospital], ["physical_therapy_booking.created", date("Y-m-j")]])->get();
      


      $recepion_insurance  = Recepion::
      join("employees", "employees.insurance_number", "=", "recepion.insurance_number")
      ->join("companies", "companies.id", "=", "employees.company")
      //->join("category", "category.id", "=", "recepion.category")
      //->join("medical_examination", "medical_examination.id", "=", "recepion.medical_examination")
      ->join("users", "users.id", "=", "recepion.author")
      ->select("recepion.*", "employees.name as emp_name", "companies.name as company_name")
      ->where([["recepion.hospital", $acount->hospital], ["type", "insurance"], ["time_filter", date("Y-m-j")]])->get();
    
      return view("project.booking_today", 
      compact("analytic", "surgery", "ray", "emergency", "quartering", "intensiveCare", "physical_therapy", "MedicalExaminationBooking", "recepion_insurance"));
  }





  function details($id) {
    $acount = User::where("id", Auth::id())->first();
    $settings  = Settings::where("hospital", $acount->hospital)->first();
    $settings  = Settings::where("hospital", $acount->hospital)->first();

      // الفحوصات
      $MedicalExaminationBooking = MedicalExaminationBooking::
      join("medical_examination", "medical_examination.id", "=", "medical_examination_booking.medical_examination")
      ->join("users", "users.id", "=", "medical_examination_booking.doctor")
      ->select("medical_examination.name as medical_examination_name", "users.name as doctor_name",  "medical_examination_booking.*")
      ->where("medical_examination_booking.name", $id)->get();
            
      // التحاليل
      $analytics = AnalyticsBooking::join("analytics", "analytics.id", "=", "analytics_booking.medical_examination")
      ->join("users", "users.id", "=", "analytics_booking.doctor")
      ->select("analytics.name as analytics_name", "users.name as doctor_name",  "analytics_booking.*")
      ->where("analytics_booking.name", $id)->get();

      // الاشعة
      $rayBooking = RayBooking::join("ray", "ray.id", "=", "ray_booking.medical_examination")
      ->join("users", "users.id", "=", "ray_booking.doctor")
      ->select("ray.name as ray_name", "users.name as doctor_name",  "ray_booking.*")
      ->where("ray_booking.name", $id)->get();
      
      // العمليات
      $surgery = SurgeryBooking::join("surgery", "surgery.id", "=", "surgery_booking.medical_examination")
      ->join("users", "users.id", "=", "surgery_booking.doctor")
      ->select("surgery.name as ray_name", "users.name as doctor_name",  "surgery_booking.*")
      ->where("surgery_booking.name", $id)->get();

      // العلاج الطبيعي
      $physical_therapy = PhysicalTherapyBooking::join("physical_therapy", "physical_therapy.id", "=", "physical_therapy_booking.medical_examination")
      ->join("users", "users.id", "=", "physical_therapy_booking.doctor")
      ->select("physical_therapy.name as physical_therapy_name", "users.name as doctor_name",  "physical_therapy_booking.*")
      ->where("physical_therapy_booking.name", $id)->get();
      

      // العناية المركزة
      $intensive_care = IntensiveCareBooking::
      join("intensive_care", "intensive_care.id", "=", "intensive_care_booking.medical_examination")
      ->join("users", "users.id", "=", "intensive_care_booking.doctor")
      ->select("intensive_care.name as intensive_care_name", "users.name as doctor_name",  "intensive_care_booking.*")
      ->where("intensive_care_booking.name", $id)->get();
      
      // العناية المركزة
      $quartering = QuarteringBooking::join("quartering", "quartering.id", "=", "quartering_booking.medical_examination")
      ->join("users", "users.id", "=", "quartering_booking.doctor")
      ->select("quartering.name as quartering_name", "users.name as doctor_name",  "quartering_booking.*")
      ->where("quartering_booking.name", $id)->get();
      



      $recepion_insurance  = Recepion::
      join("employees", "employees.insurance_number", "=", "recepion.insurance_number")
      ->join("companies", "companies.id", "=", "employees.company")
      //->join("category", "category.id", "=", "recepion.category")
      //->join("medical_examination", "medical_examination.id", "=", "recepion.medical_examination")
      ->select("recepion.*", "employees.name as emp_name", "companies.name as company_name")
      ->where([["recepion.hospital", $acount->hospital], ["type", "insurance"], ["time_filter", date("Y-m-j")]])->get();
    
      return view("print.booking_detales", 
      compact("settings", "analytics", "surgery", "rayBooking", "surgery", 'physical_therapy', "quartering", "intensive_care",
      "MedicalExaminationBooking", "recepion_insurance"));
  }



} // ProdactController Class