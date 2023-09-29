@extends('master')
@section('content')


{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
<br>
@if (Session::has("created"))
  <div class="alert alert-success texe-center text-center" role="alert">
    {{ Session::get("created") }}
  </div>
  <a href="approve.ray.service.details/{{ $approve->id }}"> صباعة  </a>
@endif
{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
<h3> مراجعة التقارير  </h3>

<form action="{{ url('search.reports.approve') }}" >
  <div class="row">
    <div class="col-md-3">
      <label for="">بداية التاريخ</label>
      <input type="date" name="start" class="form-control">
    </div>
    <div class="col-md-3">
      <label for="">نهاية التاريخ</label>
      <input type="date" name="end" class="form-control">
    </div>
    <div class="col-md-3">
      <label for=""> الشركة </label>
      <select name="company" class="form-control select_campany">
        <option value="0"> اختار الشركة </option>
        @foreach ($companies as $item)
          <option value="{{ $item->id }}"> {{ $item->name }} </option>
        @endforeach
      </select>
    </div>
    <div class="col-md-3">
      <label for=""> الموظفين </label>
      <select name="employees" class="form-control employees" >

      </select>
    </div>

    <div class="col-md-3">
      <br>
      <label for="">  مزود الخدمة  </label>
      <select name="service_provider" class="form-control">
        <option>  مزود الخدمة </option>
        @foreach ($service_provider as $item)
          <option value="{{ $item->id }}"> {{ $item->name }} </option>
        @endforeach
      </select>
    </div>

    <div class="col-md-3">
      <br>
      <label for="">  نوع المراجعة  </label>
      <select name="type" class="form-control">
        <option> </option>
        <option value="ray"> اشعــة </option>
        <option value="physical_therapy">  علاج الطبيعي  </option>
        <option value="medical_examination"> فحوصات </option>
        <option value="intensive_care"> عناية مركزة </option>
        <option value="emergency"> الطــــــوارئ </option>
        <option value="analytics"> التحاليل </option>
        <option value="quartering"> الإيواء </option>
        <option value="surgery"> العمليات </option>
        <option value="ray"> صيدلية </option>
      </select>
    </div>

    <div class="col-md-3">
      <br>
      <label for="">  اصغر السعر  </label>
      <input type="text" name="min_price" class="form-control">
    </div>
    <div class="col-md-3">
      <br>
      <label for="">  اعلي سعر  </label>
      <input type="text" name="max_price" class="form-control">
    </div>

    <div class="col-md-12">
      <br>
      <button style="width:100%" class="btn btn-primary"> بحث </button>
    </div>

  </div>
</form>

<br><br>
    <table class="table">
        <thead class="" style="background-color: #9c27b0;">
          <tr>
            <th scope="col">#</th>
            <th scope="col">العضو</th>
            <th scope="col">الشركة</th>
            <th scope="col">نوع المراجعة</th>
            <th scope="col">مزود الخدمة</th>
            <th scope="col"> السعر </th>
            <th scope="col"> بعد الخصم </th>
            <th scope="col">تفاصيل</th>
          </tr>
        </thead>
        <tbody>
          <?php $id = 1; $total = 0; ?>
            @foreach ($approve as $item)
            <tr>
                <th scope="row">{{ $id++ }}</th>
                <td> <a href="{{ $item->id }}">{{ $item->username }}</a>  </td>
                <td> <a href="{{ $item->id }}">{{ $item->company_name }}</a>  </td>
                @if($item->type == "ray")
                  <td> <a href="{{ $item->type }}">اشعــة</a></td>
                @elseif($item->type == "physical_therapy")
                  <td> <a href="{{ $item->type }}">علاج الطبيعي</a></td>
                @elseif($item->type == "medical_examination")
                  <td> <a href="{{ $item->type }}">فحوصات</a></td>
                @elseif($item->type == "intensive_care")
                  <td> <a href="{{ $item->type }}">عناية مركزة</a></td>    
                @elseif($item->type == "emergency")
                  <td> <a href="{{ $item->type }}"> الطــــــوارئ </a></td>        
                @elseif($item->type == "analytics")
                  <td> <a href="{{ $item->type }}"> التحاليل </a></td>       
                @elseif($item->type == "quartering")
                  <td> <a href="{{ $item->type }}"> الإيواء </a></td>       
                @elseif($item->type == "surgery")
                  <td> <a href="{{ $item->type }}">العمليات</a></td>
                @else
                @endif
                <td> <a href="{{ $item->id }}">{{ $item->provider_name }}</a>  </td>
                <td> {{ $item->total_price }} دينار  </td>
                <td> {{ $item->total_before_discount }} دينار  </td>

                @if($item->type == "ray")
                  <td> <a target="__blank" href="/approve.ray.service.details/{{ $item->id }}">تفاصيل</a></td>
                @elseif($item->type == "physical_therapy")
                <td> <a href="/approve.physical.therapy.service.details/{{ $item->id }}">تفاصيل</a></td>
                @elseif($item->type == "medical_examination")
                <td> <a href="/approve.medical.examination.service.details/{{ $item->id }}">تفاصيل</a></td>
                @elseif($item->type == "intensive_care")
                <td> <a href="/approve.intensive.care.service.details/{{ $item->id }}">تفاصيل</a></td>
                @elseif($item->type == "emergency")
                <td> <a href="/approve.emergency.service.details/{{ $item->id }}">تفاصيل</a></td>
                @elseif($item->type == "analytics")
                <td> <a href="/approve.analytics.service.details/{{ $item->id }}">تفاصيل</a></td>
                @elseif($item->type == "quartering")
                <td> <a href="/approve.quartering.service.details/{{ $item->id }}">تفاصيل</a></td>
                @elseif($item->type == "surgery")
                <td> <a href="/approve.surgery.service.details/{{ $item->id }}">تفاصيل</a></td>
                @else
                @endif
              </tr>
              <?php $total += $item->total_before_discount; ?>
            @endforeach
        </tbody>
      </table>
      <div>
        <br>
        <h4> اجمالــــي السعـــر {{ $total += $item->total_before_discount; }} دينار </h4>
      </div>



@endsection