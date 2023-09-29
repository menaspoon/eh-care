@extends('master')
@section('content')

<style>
  #input, select {
    text-align: left
  }
</style>

<form action="{{ url("update.contract") }}" method="POST" class="companies container">
  <h3> بيانات التعاقد </h3>
  @csrf
  <div class="row">
      <div class="col-md-2">
        <div class="form-outline">
            <input type="hidden"  name="company" value="{{ request()->route('company') }}" />
            <input type="date" value="{{ $contract->start_date }}"  name="start_date" id="form12" class="form-control" />
            <label class="form-label" for="form12"> بداية التعاقد  </label>
        </div> <br>
      </div> <!-- col-md-3 -->
      <div class="col-md-2">
        <div class="form-outline">
            <input type="date" value="{{ $contract->end_date }}"  name="end_date" id="form12" class="form-control" />
            <label class="form-label" for="form12"> نهاية التعاقد  </label>
        </div><br>
      </div> <!-- col-md-3 -->
      <div class="col-md-2">
        <div class="form-outline">
            <input type="number" value="{{ $contract->number_of_subscribers }}" name="number_of_subscribers" id="form12" class="form-control" />
            <label class="form-label" for="form12"> عدد المشتركين  </label>
        </div><br>
      </div> <!-- col-md-3 -->
      <div class="col-md-2">
        <div class="form-outline">
            <input type="number" value="{{ $contract->annual_capita }}" name="annual_capita" id="form12" class="form-control" />
            <label class="form-label" for="form12"> السقف السنوي للفرد  </label>
        </div><br>
      </div> <!-- col-md-3 -->
      <div class="col-md-2">
        <div class="form-outline">
            <input type="number" value="{{ $contract->singles_premium }}" name="singles_premium" id="form12" class="form-control" />
            <label class="form-label" for="form12"> القســــط  </label>
        </div><br>
      </div> <!-- col-md-3 -->
      <div class="col-md-2">
        <div class="form-outline">
            <select name="class"  id="form12" class="form-control">
              <option value="{{ $contract->class }}">{{ $contract->class }}</option>
              @foreach($classs as $item)
                <option value="{{ $item->name }}">{{ $item->name }}</option>
              @endforeach
            </select>
            <input type="hidden" />
            <label class="form-label" for="form12"> الفئــــــة  </label>
        </div><br>
      </div> <!-- col-md-3 -->
      

      <div class="col-md-2">
        <div class="form-outline">
            <select name="medical_network" id="form12" class="form-control">
              <option value="{{ $contract->medical_network }}">{{ $contract->medical_network }}</option>
              @foreach($medical_network as $item)
                <option value="{{ $item->name }}">{{ $item->name }}</option>
              @endforeach
            </select>
            <input type="hidden" />
            <label class="form-label" for="form12">  الشبكــــة الطبيـــة  </label>
        </div><br>
      </div> <!-- col-md-3 -->
      
      <div class="col-md-2">
        <div class="form-outline">
            <select name="degree_of_residence" id="form12" class="form-control">
              <option value="">{{ $item->degree_of_residence }}</option>
              @foreach($degree_of_residence as $item)
                <option value="{{ $item->id }}">{{ $item->name }}</option>
              @endforeach
            </select>
            <input type="hidden" />
            <label class="form-label" for="form12">  درجة الاقامة </label>
        </div><br>
      </div> <!-- col-md-3 -->
      
      <div class="col-md-2">
        <div class="form-outline">
            <input type="number" name="administrative_expenses" id="form12" class="form-control" />
            <label class="form-label" for="form12">  المصروفات الإدارية</label>
        </div><br>
      </div> <!-- col-md-3 -->        

      <div class="col-md-2">
        <div class="form-outline">
            <input type="number" name="network_coverage" id="form12" class="form-control" />
            <label class="form-label" for="form12"> تغطية الشبكة  </label>
        </div><br>
      </div> <!-- col-md-3 -->   

      <div class="col-md-2">
        <div class="form-outline">
            <input type="number" name="issuance_expenses" id="form12" class="form-control" />
            <label class="form-label" for="form12"> مصاريف الإصدار </label>
        </div><br>
      </div> <!-- col-md-3 -->   

      <div class="col-md-2">
        <div class="form-outline">
            <input type="number" name="hospital_collection_rate" id="form12" class="form-control" />
            <label class="form-label" for="form12">  معدل تحصيل المستشفى </label>
        </div><br>
      </div> <!-- col-md-3 -->
      
  </div>





  <br>
  <h4>الفحوصـــــات</h4>
  <br>
  <div class="row">
    <div class="col-md-2">
      <div class="form-outline">
          <select name="medical_examinations_type"  id="form12" class="form-control">
            <option value="{{ $contract->medical_examinations_type }}">{{ $contract->medical_examinations_type != "" ? $contract->medical_examinations_type == "directly" ? "مباشر" : "غير مباشر" : " " }}</option>
            <option value="directly">مباشر</option>
            <option value="not_directly">غير مباشر</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> نوع  </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <select name="medical_examinations_coverage" id="form12" class="form-control">
            <option value="{{ $contract->medical_examinations_coverage }}">{{ $contract->medical_examinations_coverage != "" ? $contract->medical_examinations_coverage == "coverage" ? "مباشر" : "غير مباشر" : " " }}</option>
            <option value="coverage">مغطي</option>
            <option value="not_coverage">غير مغطي</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> التغطية </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="medical_examinations_discount" value="{{ $contract->medical_examinations_discount }}" id="form12" class="form-control" />
          <label class="form-label" for="form12"> نسبـــة الخصم </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="medical_examinations_count" value="{{ $contract->medical_examinations_count }}" id="form12" class="form-control" />
          <label class="form-label" for="form12"> الحد الاعلي  لكل فرد </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="medical_examinations_collection" value="{{ $contract->medical_examinations_collection }}"  id="form12" class="form-control" />
          <label class="form-label" for="form12">  التحصيل % </label>
      </div><br>
    </div> <!-- col-md-3 -->
  </div>


  


  <br>
  <h4>التحاليـــــل</h4>
  <div class="row">
    <div class="col-md-2">
      <div class="form-outline">
          <select name="analysis_type" id="form12" class="form-control">
            <option value="{{ $contract->analysis_type }}">{{ $contract->analysis_type != "" ? $contract->analysis_type == "directly" ? "مباشر" : "غير مباشر" : " " }}</option>
            <option value="directly">مباشر</option>
            <option value="not_directly">غير مباشر</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> نوع  </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <select name="analysis_coverage" id="form12" class="form-control">
            <option value="{{ $contract->analysis_coverage }}">{{ $contract->analysis_coverage != "" ? $contract->analysis_coverage == "coverage" ? "مغطي" : "غير مغطي" : " " }}</option>
            <option value="coverage">مغطي</option>
            <option value="not_coverage">غير مغطي</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> التغطية </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="analysis_discount" value="{{ $contract->analysis_discount }}" id="form12" class="form-control" />
          <label class="form-label" for="form12"> نسبـــة الخصم </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="analysis_count" value="{{ $contract->analysis_count }}"  id="form12" class="form-control" />
          <label class="form-label" for="form12"> الحد الاعلي  لكل فرد </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="analysis_collection" value="{{ $contract->analysis_collection }}" id="form12" class="form-control" />
          <label class="form-label" for="form12">  التحصيل % </label>
      </div><br>
    </div> <!-- col-md-3 -->
  </div>


  <br>
  <h4>الاشعــــــة</h4>
  <div class="row">
    <div class="col-md-2">
      <div class="form-outline">
          <select name="ray_type" id="form12" class="form-control">
            <option value="{{ $contract->ray_type }}">{{ $contract->ray_type != "" ? $contract->ray_type == "directly" ? "مباشر" : "غير مباشر" : " " }}</option>
            <option value="directly">مباشر</option>
            <option value="not_directly">غير مباشر</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> نوع  </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <select name="ray_coverage" id="form12" class="form-control">
            <option value="{{ $contract->ray_coverage }}">{{ $contract->ray_coverage != "" ? $contract->ray_coverage == "coverage" ? "مغطي" : "غير مغطي" : " " }}</option>
            <option value="coverage">مغطي</option>
            <option value="not_coverage">غير مغطي</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> التغطية </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="ray_discount" value="{{ $contract->ray_discount }}" id="form12" class="form-control" />
          <label class="form-label" for="form12"> نسبـــة الخصم </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="ray_count" value="{{ $contract->ray_count }}"  id="form12" class="form-control" />
          <label class="form-label" for="form12"> الحد الاعلي  لكل فرد </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="ray_collection" value="{{ $contract->ray_collection }}" id="form12" class="form-control" />
          <label class="form-label" for="form12">  التحصيل % </label>
      </div><br>
    </div> <!-- col-md-3 -->
  </div>



  <br>
  <h4>العمليـــــــــات</h4>
  <div class="row">
    <div class="col-md-2">
      <div class="form-outline">
          <select name="surgery_type" id="form12" class="form-control">
            <option value="{{ $contract->surgery_type }}">{{ $contract->surgery_type != "" ? $contract->surgery_type == "directly" ? "مباشر" : "غير مباشر" : " " }}</option>
            <option value="directly">مباشر</option>
            <option value="not_directly">غير مباشر</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> نوع  </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <select name="surgery_coverage" id="form12" class="form-control">
            <option value="{{ $contract->surgery_coverage }}">{{ $contract->surgery_coverage != "" ? $contract->surgery_coverage == "coverage" ? "مغطي" : "غير مغطي" : " " }}</option>
            <option value="coverage">مغطي</option>
            <option value="not_coverage">غير مغطي</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> التغطية </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="surgery_discount" value="{{ $contract->surgery_discount }}" id="form12" class="form-control" />
          <label class="form-label" for="form12"> نسبـــة الخصم </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="surgery_count" value="{{ $contract->surgery_count }}"  id="form12" class="form-control" />
          <label class="form-label" for="form12"> الحد الاعلي  لكل فرد </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="surgery_collection" value="{{ $contract->surgery_collection }}" id="form12" class="form-control" />
          <label class="form-label" for="form12">  التحصيل % </label>
      </div><br>
    </div> <!-- col-md-3 -->
  </div>




  <br>
  <h4>العلاج الطبيعــــــي</h4>
  <div class="row">
    <div class="col-md-2">
      <div class="form-outline">
          <select name="physical_therapy_type" id="form12" class="form-control">
            <option value="{{ $contract->physical_therapy_type }}">{{ $contract->physical_therapy_type != "" ? $contract->physical_therapy_type == "directly" ? "مباشر" : "غير مباشر" : " " }}</option>
            <option value="directly">مباشر</option>
            <option value="not_directly">غير مباشر</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> نوع  </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <select name="physical_therapy_coverage" id="form12" class="form-control">
            <option value="{{ $contract->physical_therapy_coverage }}">{{ $contract->physical_therapy_coverage != "" ? $contract->physical_therapy_coverage == "coverage" ? "مغطي" : "غير مغطي" : " " }}</option>
            <option value="coverage">مغطي</option>
            <option value="not_coverage">غير مغطي</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> التغطية </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="physical_therapy_discount" value="{{ $contract->physical_therapy_discount }}" id="form12" class="form-control" />
          <label class="form-label" for="form12"> نسبـــة الخصم </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="physical_therapy_count" value="{{ $contract->physical_therapy_count }}"  id="form12" class="form-control" />
          <label class="form-label" for="form12"> الحد الاعلي  لكل فرد </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="physical_therapy_collection" value="{{ $contract->physical_therapy_collection }}" id="form12" class="form-control" />
          <label class="form-label" for="form12">  التحصيل % </label>
      </div><br>
    </div> <!-- col-md-3 -->
  </div>



  <br>
  <h4> الطـــــــــوارئ</h4>
  <div class="row">
    <div class="col-md-2">
      <div class="form-outline">
          <select name="emergency_type" id="form12" class="form-control">
            <option value="{{ $contract->emergency_type }}">{{ $contract->emergency_type != "" ? $contract->emergency_type == "directly" ? "مباشر" : "غير مباشر" : " " }}</option>
            <option value="directly">مباشر</option>
            <option value="not_directly">غير مباشر</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> نوع  </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <select name="emergency_coverage" id="form12" class="form-control">
            <option value="{{ $contract->emergency_coverage }}">{{ $contract->emergency_coverage != "" ? $contract->emergency_coverage == "coverage" ? "مغطي" : "غير مغطي" : " " }}</option>
            <option value="coverage">مغطي</option>
            <option value="not_coverage">غير مغطي</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> التغطية </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="emergency_discount" value="{{ $contract->emergency_discount }}" id="form12" class="form-control" />
          <label class="form-label" for="form12"> نسبـــة الخصم </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="emergency_count" value="{{ $contract->emergency_count }}"  id="form12" class="form-control" />
          <label class="form-label" for="form12"> الحد الاعلي  لكل فرد </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="emergency_emergency" value="{{ $contract->emergency_emergency}}" id="form12" class="form-control" />
          <label class="form-label" for="form12">  التحصيل % </label>
      </div><br>
    </div> <!-- col-md-3 -->
  </div>



  <br>
  <h4> العناية المركزة</h4>
  <div class="row">
    <div class="col-md-2">
      <div class="form-outline">
          <select name="intensive_are_type" id="form12" class="form-control">
            <option value="{{ $contract->intensive_are_type }}">{{ $contract->intensive_are_type != "" ? $contract->intensive_are_type == "directly" ? "مباشر" : "غير مباشر" : " " }}</option>
            <option value="directly">مباشر</option>
            <option value="not_directly">غير مباشر</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> نوع  </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <select name="intensive_are_coverage" id="form12" class="form-control">
            <option value="{{ $contract->intensive_are_coverage }}">{{ $contract->intensive_are_coverage != "" ? $contract->intensive_are_coverage == "coverage" ? "مغطي" : "غير مغطي" : " " }}</option>
            <option value="coverage">مغطي</option>
            <option value="not_coverage">غير مغطي</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> التغطية </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="intensive_are_discount" value="{{ $contract->intensive_are_discount }}" id="form12" class="form-control" />
          <label class="form-label" for="form12"> نسبـــة الخصم </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="intensive_are_count" value="{{ $contract->intensive_are_count }}"  id="form12" class="form-control" />
          <label class="form-label" for="form12"> الحد الاعلي  لكل فرد </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="intensive_are_intensive_are" value="{{ $contract->intensive_are_intensive_are}}" id="form12" class="form-control" />
          <label class="form-label" for="form12">  التحصيل % </label>
      </div><br>
    </div> <!-- col-md-3 -->
  </div>




  <br>
  <h4> الايــــــواء </h4>
  <div class="row">
    <div class="col-md-2">
      <div class="form-outline">
          <select name="quartering_type" id="form12" class="form-control">
            <option value="{{ $contract->quartering_type }}">{{ $contract->quartering_type != "" ? $contract->quartering_type == "directly" ? "مباشر" : "غير مباشر" : " " }}</option>
            <option value="directly">مباشر</option>
            <option value="not_directly">غير مباشر</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> نوع  </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <select name="quartering_coverage" id="form12" class="form-control">
            <option value="{{ $contract->quartering_coverage }}">{{ $contract->quartering_coverage != "" ? $contract->quartering_coverage == "coverage" ? "مغطي" : "غير مغطي" : " " }}</option>
            <option value="coverage">مغطي</option>
            <option value="not_coverage">غير مغطي</option>
          </select>
          <input type="hidden" />
          <label class="form-label" for="form12"> التغطية </label>
      </div><br>
    </div> <!-- col-md-3 -->   
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="quartering_discount" value="{{ $contract->quartering_discount }}" id="form12" class="form-control" />
          <label class="form-label" for="form12"> نسبـــة الخصم </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="quartering_count" value="{{ $contract->quartering_count }}"  id="form12" class="form-control" />
          <label class="form-label" for="form12"> الحد الاعلي  لكل فرد </label>
      </div><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-2">
      <div class="form-outline">
          <input type="number" name="quartering_quartering" value="{{ $contract->quartering_quartering}}" id="form12" class="form-control" />
          <label class="form-label" for="form12">  التحصيل % </label>
      </div><br>
    </div> <!-- col-md-3 -->
  </div>
  
  <button type="submit" class="btn btn-primary btn-sm">تحديث البيانات</button>

</form>

@endsection