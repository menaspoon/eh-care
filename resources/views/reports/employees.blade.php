@extends('master')
@section('content')

<div class="companies container-fuild">

<br>
<h4 class="text-center"> تقارير الموظف  </h4>
<br>

<form action="{{ route('reports.employees') }}">
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
        <option> اختار الشركة </option>
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
    <div class="col-md-12">
      <br>
      <button style="width:100%" class="btn btn-primary"> بحث </button>
    </div>

  </div>
</form>


<br><br>
@if ($insurance)
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">الشركة</th>
      <th scope="col">المريض</th>
      <th scope="col">القسم</th>
      <th scope="col">الكشف</th>
      <th scope="col">السعر</th>
      <th scope="col">الدكتور</th>
      <th scope="col">ميعاد الحجز</th>
      <th scope="col">تحكم</th>
    </tr>
  </thead>
  <tbody>
    @foreach ($insurance as $item)
      <tr>
          <td scope="row">{{ $item->id }}</td>
          <td>{{ $item->company_name }}</td>
          <td>{{ $item->emp_name }} </td>
          <td>{{ $item->category_name }} </td>
          <td>
            @foreach ($MedicalExaminationBooking as $booking)
              @if ($booking->name == $item->id)
                  {{ $booking->booking_name }} - 
                  {!! $booking->status === "ok" ? "<b style='color:green'>مقبولة</b>" : "<b style='color:red'>غير مقبولة</b>" !!}
                  <br>
              @endif
            @endforeach
          </td>
          <td>
            @foreach ($MedicalExaminationBooking as $booking)
              @if ($booking->name == $item->id)
                {{ $booking->price }} +
              @endif
            @endforeach
            دينار </td>
          <td>{{ $item->doctor }} </td>
          <td>{{ $item->created }} </td>
        </tr>
      @endforeach
  </tbody>
</table>
@endif




</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>


$(".select_campany").change(function(){
  var id = $(this).val();
  $.ajax({
      url:"/hospital/ajax.get.employees.campany",
      method:"get",
      data:{id:id},
      success:function(data) {
        $(".employees").html(data);
      }
  });
});   


</script>
@endsection