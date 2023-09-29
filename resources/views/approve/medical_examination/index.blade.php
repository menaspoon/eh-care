@extends('master')
@section('content')

<style>
  #input, select {
    text-align: left
  }

  .form-contract {
      background: #f0f8ff91;
      padding: 27px;
      box-shadow: 0px 0px 12px 0px #cccccc9c;
      border-radius: 7px;
  }
</style>

{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
<br>
@if (Session::has("created"))
  <script>
    swal("رســــالة تاكيد", "تم اضافة البيانات بنجاح", "success")
  </script>
@endif
{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}

<form  action="{{ url("store.approve.medical.examination.service") }}" method="POST" class="companies container form-contract">
  <br>
  <div class="row">
    @csrf
    <div class="col-md-6">
      <h3> مراجعة  الفحوصات  </h3>
      <br><br>
    </div> <!-- col-md-3 -->
    <div class="col-md-6">
      @if (Session::has("created"))
        <a style="float: left" class="text-center btn btn-primary" href="approve.analytics.service.details/{{ $approve->id }}">  طباعة المراجعــــة  </a>
      @endif
    </div> <!-- col-md-3 -->

      <div class="col-md-4">
        <div class="form-outline">
            <input type="text"   name="member" id="form12" class="form-control get_employee_details" />
            <label class="form-label" for="form12">  رقم تامين الموظف </label>
        </div> <br>
      </div> <!-- col-md-3 -->
      <div class="col-md-4">
        <div class="form-outline">
          <select name="pool" id="form12" class="form-control get_pool">
          </select>
          <input type="hidden"  />
          <label class="form-label" for="form12">  الخدمات </label>
        </div> <br>
      </div> <!-- col-md-3 -->
      <div class="col-md-4">
        <div class="form-outline">
          <select name="service_provider" id="form12" class="form-control get_service_provider">
            <option value=""></option>
            @foreach ($service_provider as $item)
              <option value="{{ $item->id }}">{{ $item->name }}</option>
            @endforeach
          </select>
          <input type="hidden"  />
          <label class="form-label" for="form12">  مـــــزود الخدمـــة </label>
        </div> <br>
      </div> <!-- col-md-3 -->

      <div class="col-md-6">
        <div class="form-outline">
          <label class="form-label" for="form12">  التشخيص </label>
          <textarea name="diagnosing"  cols="1" rows="1" id="form12" class="form-control"></textarea>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-outline">
          <label class="form-label" for="form13">  ملاحظات </label>
          <textarea name="note"  cols="1" rows="1" id="form13" class="form-control"></textarea>
        </div>
      </div>
      
    </div>
  <div class="print_employee_details"></div>
  <br>
  <div class="print_service_provider"></div>
  <br>

  




  <div class="container new-invoice">
    <form method="POST" >
  
  
      <div class="box-fatora">
        <table class="table" id="invoice_detales">
  
          <tbody>
            <tr class="invoice_parent_row">
              <td>#</td>
              <td>
                <select id="SelExample" name="service[]" class="get_service_price  form-control">
                  <option value=""></option>
                  @foreach ($medical_examination as $item)
                    <option data-price="{{ $item->price }}" 
                            data-id="{{ $item->id }}" 
                            value="{{ $item->id }}">
                            {{ $item->name }}
                      </option>
                  @endforeach
                </select>
              </td>
              <td>
                <input  type="number" name="price[]" id="price" value="0" class="price form-control">
              </td>
              <td style="display: none">
                <input type="" name="count[]" id="count" value="1" class="count form-control">
              </td>
              <td>
                <input type="number" name="subtotal[]" id="subtotal" class="subtotal form-control" readonly>
              </td>
            </tr>

          </tbody>
  

  
        </table>
        <tr>
          <td>#</td>
          <td colspan="3"><button type="button" class="btn btn-primary btn-sm new_row"> صف جديد </button></td>
        </tr>
        <br><br>
  
        <table>
          <tr>
            <th> السعر </th>
            <th> نسبة الخصم  </th>
            <th> مبلغ الخصم  </th>
            <th> الاجمالي بعد الخصم </th>
          </tr>
          <tr>
            <td><input class="form-control" readonly="" name="totle_price" id="all_title" name="all_title" placeholder="0.00"  > </td>
            <td><input class="form-control" readonly="" name="discount_percentage" value="%{{ $contract->ray_discount }}"></td>
            <td><input class="form-control" readonly="" name="discount_amount" id="discount_val"  value=""></td>
            <td><input class="form-control" readonly="" name="total_before_discount" id="before_discount" value="0.00"></td>
          </tr>
        </table>
  
      </div>
  
        <br>
  
        <button type="submit" class="btn btn-success btn-sm"> حفظ الفاتورة  </button>
      </tr>
  
      
  
  
      
      
  
    </form>
  </div>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
  <script>
/*
$("#price").on('change keyup paste input', function () {
    alert("k")
});
*/
$(document).on("change", ".get_service_price", function () {
    var price =  $(this).find(':selected').data('price')
    $(this).parent().next().children().val(price)
    //alert($(this).select2('data').text;)
});

      $(document).on("click", ".new_row", function () {
        $("#invoice_detales").find("tbody").append("<tr>" + $(".invoice_parent_row").html() + "</tr>");
      });
  </script>
  
  
  
  
  
  <script>
    $(document).ready(function(){
      
      


      $(document).on("change keydown keyup", ".price", function () {
        let $row = $(this).closest("tr");
        let price = $row.find(".price").val() || 0;
        let count = $row.find(".count").val() || 0;
        $row.find(".subtotal").val((price * count).toFixed(2));
        //alert(price)

        $("#all_title").val(all_title("#all_title"))
        $("#vat_value").val(collect_flag())
        $("#total_due").val(sum_do_total())
  
      });
  
      $(document).on("change", ".price", function () {
        let $row = $(this).closest("tr");
        let price = $row.find(".price").val() || 0;
        let count = $row.find(".count").val() || 0;
        $row.find(".subtotal").val((price * count).toFixed(2));
        $("#all_title").val(all_title(".subtotal"))
        $("#vat_value").val(collect_flag())
        $("#total_due").val(sum_do_total())
  
      });
  
  
      $(document).on("keyup blur change", "#discount_type", function () {
        $("#vat_value").val(collect_flag())
        $("#total_due").val(sum_do_total())
      });
  
      $("#invoice_detales").on("keyup blur change", "#discount_value", function () {
        $("#vat_value").val(collect_flag())
        $("#total_due").val(sum_do_total())
      });
  
      $("#invoice_detales").on("keyup blur change", ".shipping", function () {
        $("#vat_value").val(collect_flag())
        $("#total_due").val(sum_do_total())
      });
  
      
      $("#invoice_detales").on("keyup blur change", "#discount_val", function () {
        $("#vat_value").val(collect_flag())
        $("#total_due").val(sum_do_total())
        console.log(this.value);
      });
  
      let all_title = function($selector) {
        let sum = 0;
        $($selector).each(function () {
          let selectorval = $(this).val() != "" ? $(this).val() : 0;
          sum += parseFloat(selectorval);
        });
        return sum.toFixed(2)
      }
  
  
  
  
      let collect_flag = function () {
        let all_title     =  $("#all_title").val() || 0;
        let discount_type =  parseFloat($("#discount_type").val()) || 0;
        let discount_val  =  parseFloat($("#discount_val").val()) || 0;
        let discountVal   =  parseFloat($("#discount_val").val()) || 0;
        
  
        $('#discount_type').on('change', function() {
          if(discount_val != 0) {
              if(this.value == "percentage") {
                discountVal = all_title * (discount_val / 100)
              } else {
                discountVal = discount_val
                console.log(discountVal);
              } // discount_type == "percentage"
          } else {
            discountVal = 0
          } // discount_val != 0
        });
  
        let vatVal = (all_title - discountVal) * 0.05;
        return vatVal.toFixed(2)
  
      }
  
  
  
      let sum_do_total = function () {
        let sum = 0;
        let all_title     =  $("#all_title").val() || 0;
        let discount_type =  parseFloat($("#discount_type").val()) || 0;
        let discount_val  =  parseFloat($("#discount_val").val()) || 0;
        let discountVal   =  parseFloat($("#discount_val").val()) || 0;
  
        $('#discount_type').on('change', function() {
          if(discount_val != 0) {
              if(this.value == "percentage") {
                discountVal = all_title * (discount_val / 100)
              } else {
                discountVal = discount_val
                console.log(discountVal);
              } // discount_type == "percentage"
          } else {
            discountVal = 0
          } // discount_val != 0
        });
  
        let vatVal = parseFloat($("#vat_value").val()) || 0;
        let shipping = $(".shipping").val() || 0;
        let discount = all_title / 100 * {{ $contract->ray_discount }}
        $("#discount_val").val(discount)
        $("#before_discount").val(all_title - discount)

        sum += all_title;
        sum -= discountVal;
        sum += vatVal;
        sum += shipping;
        return sum.toFixed(2)
  
  
      }    
  
  
  
    });
  
  
  </script>
  
  

  
  

</form>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
$(document).on("keyup", ".get_employee_details", function(event) {
  event.preventDefault()
  var id = $(this).val();
  $.ajax({
    url: "/get.employee.details/" + id,
    data:{id:id },
    success:function (html) {
      $(".print_employee_details").html(html.employeeData);
      $(".get_pool").html(html.poolData);
    }
  });
});

$(document).on("change", ".get_service_provider", function(event) {
  event.preventDefault()
  var id = $(this).val();
  $.ajax({
    url: "/get.service.provider/" + id,
    data:{id:id },
    success:function (html) {
      $(".print_service_provider").html(html);

    }    
  });
});
</script>


@endsection