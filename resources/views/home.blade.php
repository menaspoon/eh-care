@extends('master')
@section('content')

<style>
.count_dash .box  {
    background: #007bff;
    padding: 59px;
    text-align: center;
    color: #fff;
}
</style>



<div class="count_dash">
  <div class="container">
    <div class="row">

      <div class="col-md-3">
        <div class="box">
          <span>الشركات</span>
          <strong>{{ $count_company }}</strong>
        </div>
      </div>

      <div class="col-md-3">
        <div class="box">
          <span>مزود الخدمة</span>
          <strong>{{ $count_provider }}</strong>
        </div>
      </div>

      <div class="col-md-3">
        <div class="box">
          <span> المستفيدين </span>
          <strong>{{ $count_employees }}</strong>
        </div>
      </div>
      
      <div class="col-md-3">
        <div class="box">
          <span> الموظفين </span>
          <strong>{{ $count_users }}</strong>
        </div>
      </div>
      
      
    </div>
  </div>
</div>


<div class="container">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<canvas id="myChart" style="width:100%;"></canvas>

<script>
//const xValues = ["Italy", "France", "Spain", "USA", "Argentina"];
const xValues = ["التحاليل", "الاشعة", "العمليات", "الطــــــوارئ", " عناية مركزة ", "الفحوصات", " علاج طبيعي"];

const yValues = [{{ $bar_analytics }},  {{$bar_ray}}, {{ $bar_surgery }},   {{ $bar_emergency }},  {{ $bar_intensive_care }}, {{ $bar_medical_examination }}, {{ $bar_physical_therapy }}  ];
const barColors = ["red", "green","blue","orange","brown"];

new Chart("myChart", {
  type: "bar",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: "World Wine Production 2018"
    }
  }
});
</script>
</div>
@endsection