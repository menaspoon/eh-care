@extends('master')
@section('content')

<div class="companies container-fuild">
<br>
    <table class="table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">#</th>
            <th scope="col">رقم الكشف</th>
            <th scope="col">الشركة</th>
            <th scope="col">المريض</th>
            <th scope="col">الفحص</th>
            <th scope="col">السعر</th>
            <th scope="col">ميعاد الحجز</th>
            <th scope="col">تحكم</th>
          </tr>
        </thead>
        <tbody>
          <?php $num = 1; ?>
          @foreach ($recepion_insurance as $item)
            <tr>
                <td>{{ $num++ }}</td>
                <td>{{ $item->id }}</td>
                <td>{{ $item->company_name }}</td>
                <td>{{ $item->emp_name }} </td>
                <td>
                  @foreach ($MedicalExaminationBooking as $booking)
                    @if ($booking->name == $item->id)
                        <strong style="color: darkcyan;">{{ $booking->booking_name }}</strong> - <strong style="color: #dc3545;">{{ $booking->doctor_name }}</strong> <br>
                    @endif
                  @endforeach
                  @foreach ($analytic as $analy)
                    @if ($analy->name == $item->id)
                        <strong style="color: darkcyan;">{{ $analy->analytics_name }}</strong> - <strong style="color: #dc3545;">{{ $analy->doctor_name }}</strong> <br>
                    @endif
                  @endforeach
                  @foreach ($surgery as $sur)
                    @if ($sur->name == $item->id)
                      <strong style="color: darkcyan;">{{ $sur->surgery_name }}</strong> - <strong style="color: #dc3545;">{{ $sur->doctor_name }}</strong> <br>
                    @endif
                  @endforeach
                  @foreach ($ray as $rayy)
                    @if ($rayy->name == $item->id)
                      <strong style="color: darkcyan;">{{ $rayy->ray_name }}</strong> - <strong style="color: #dc3545;">{{ $rayy->doctor_name }}</strong> <br>
                    @endif
                  @endforeach
                  @foreach ($emergency as $emer)
                    @if ($emer->name == $item->id)
                      <strong style="color: darkcyan;">{{ $emer->emergency_name }}</strong> - <strong style="color: #dc3545;">{{ $emer->doctor_name }}</strong> <br>
                    @endif
                  @endforeach
                  @foreach ($intensiveCare as $intensive)
                    @if ($intensive->name == $item->id)
                      <strong style="color: darkcyan;">{{ $intensive->intensive_care_name }}</strong> - <strong style="color: #dc3545;">{{ $intensive->doctor_name }}</strong> <br>
                    @endif
                  @endforeach
                  @foreach ($quartering as $quar)
                    @if ($quar->name == $item->id)
                      <strong style="color: darkcyan;">{{ $quar->quartering_name }}</strong> - <strong style="color: #dc3545;">{{ $quar->doctor_name }}</strong> <br>
                    @endif
                  @endforeach
                  @foreach ($physical_therapy as $physical)
                    @if ($physical->name == $item->id)
                      <strong style="color: darkcyan;">{{ $physical->physical_therapy_name }}</strong> - <strong style="color: #dc3545;">{{ $physical->doctor_name }}</strong> <br>
                    @endif
                  @endforeach
                </td>
                

                <td>{{ $item->total_due }} دينار </td>
                <td>{{ $item->created }} </td>
                <td><a target="__blank" href="booking.details/{{ $item->id }}">طباعة</a></td>
              </tr>
            @endforeach
        </tbody>
      </table>

</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(document).on("click", ".query_insurance_number", function(event) {
    event.preventDefault()
    var insurance_number     = $("#insurance_number").val();
    $.ajax({
      url: "/query.insurance.number",
      data:{insurance_number:insurance_number },
      success:function (data) {
        $("#result_insurance_number").html(data);
        }
    });
});


// Ø§Ø³ØªØ¯Ø¹Ø§Ø¡ Ø§Ù„Ø§Ù‚Ø³Ø§Ù… Ø§Ù„ÙØ±Ø¹ÙŠØ©
$(".select_category").change(function(){
  var id = $(this).val();
  $.ajax({
      url:"/ajax.get.medical.examination",
      method:"get",
      data:{id:id},
      success:function(data) {
        $(".medical_examination").html(data);
      }
  });
});   

$(".list-category .item").click(function(){
  var category = $(this).data("id");
    $(".links").hide(600);
    $(".examination_" + category).show(600);
});

</script>




<style>
  .select2-container--default .select2-results>.select2-results__options {
    max-height: 200px;
    overflow-y: auto;
    width: 330px;
    background: #fff;
    padding: 10px;
    z-index: 9999999999999999 !important;
    position: absolute !important
}

.modal { z-index: 1045; }



.select2-container--default .select2-selection--multiple .select2-selection__choice { background-color: #ffc107 !important; }
.select2-container--default .select2-results>.select2-results__options { max-height: 500px !important; }





</style>
@endsection