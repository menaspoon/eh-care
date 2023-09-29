@extends('master')
@section('content')

<div class="companies container-fuild">

  {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
<br>
@if (Session::has("created"))
  <div class="alert alert-success texe-center text-center" role="alert">
    {{ Session::get("created") }}
  </div>
@endif
@if (Session::has("updated"))
  <div class="alert alert-success texe-center text-center" role="alert">
    {{ Session::get("updated") }}
  </div>
@endif
{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}




<div class="row">
  <div class="col-md-6">
   <h2> اسعار مزود الخدمـــــة </h2>
  </div>  

</div>

<br><br>
    <table class="table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">#</th>
            <th scope="col">المستشفي</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($data as $hot)
            <tr>
                <th scope="row">{{ $hot->id }}</th>
                <td> <a href="/{{ request()->route('type') }}/{{ $hot->id }}/{{ request()->route('category') }}">{{ $hot->name }}</a> </td>
              </tr>
            @endforeach
        </tbody>
      </table>










  
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <form action="{{ url("store.service.provider") }}" method="POST" class="modal-content" enctype="multipart/form-data" >
        @csrf
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel"> بيانات المستشفي  </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">

          <div class="row">

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="name" id="form12" class="form-control" />
                  <label class="form-label" for="form12"> اسم مزود الخدمة  </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="branch" id="form12" class="form-control" />
                  <label class="form-label" for="form12">  الفرع </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <select name="" id="form12" class="form-control">
                    @foreach ($classs as $item)
                      <option value="{{ $item->id }}"> {{ $item->name }} </option>
                    @endforeach
                  </select>
                  <input type="hidden" id="form12" class="form-control" />
                  <label class="form-label" for="form12"> </label>
              </div> <br>
            </div>

            
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="tel" id="form12" class="form-control" />
                  <label class="form-label" for="form12">  الهاتف </label>
              </div> <br>
            </div>   

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="phone" id="form12" class="form-control" />
                  <label class="form-label" for="form12">  موبايل </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="email" id="form12" class="form-control" />
                  <label class="form-label" for="form12">  البريد الالكتروني </label>
              </div> <br>
            </div>
            
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="email" id="form12" class="form-control" />
                  <label class="form-label" for="form12">  البريد الالكتروني </label>
              </div> <br>
            </div> 
                       
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="fax" id="form12" class="form-control" />
                  <label class="form-label" for="form12">  فاكس  </label>
              </div> <br>
            </div>       

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="tax_record" id="form12" class="form-control" />
                  <label class="form-label" for="form12">   السجل التجاري  </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="tax_registration_number" id="form12" class="form-control" />
                  <label class="form-label" for="form12">  رقم السجل التجاري  </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="issuer" id="form12" class="form-control" />
                  <label class="form-label" for="form12">  issuer </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="city" id="form12" class="form-control" />
                  <label class="form-label" for="form12"> المدينة </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="address" id="form12" class="form-control" />
                  <label class="form-label" for="form12"> العنوان </label>
              </div> <br>
            </div>

            <div class="col-md-12">
              <h3>بيانات التامين</h3> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="date" required name="start" id="form12" class="form-control" />
                  <label class="form-label" for="form12"> البدء </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="date"  name="start" id="form12" class="form-control" />
                  <label class="form-label" for="form12"> موعد الانتهاء </label>
              </div> <br>
            </div> 

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="insurance_officer" id="form12" class="form-control" />
                  <label class="form-label" for="form12"> موظف التامين </label>
              </div> <br>
            </div> 

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="insurance_officer_phone" id="form12" class="form-control" />
                  <label class="form-label" for="form12">  هاتف موظف التامين </label>
              </div> <br>
            </div> 

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text" name="type_contract" id="form12" class="form-control" />
                  <label class="form-label" for="form12">  نوع التعاقد   </label>
              </div> <br>
            </div> 
            
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="number"  name="discount" id="form12" class="form-control" />
                  <label class="form-label" for="form12"> خصم   </label>
              </div> <br>
            </div> 
            
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="consultation_period" id="form12" class="form-control" />
                  <label class="form-label" for="form12">   فترة الاستشارة</label>
              </div> <br>
            </div>  

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="administrative_expenses" id="form12" class="form-control" />
                  <label class="form-label" for="form12"> المصروفات الإدارية </label>
              </div> <br>
            </div> 

            
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="number"  name="repayment_period" id="form12" class="form-control" />
                  <label class="form-label" for="form12"> مدة الدفع </label>
              </div> <br>
            </div> 

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="bank" id="form12" class="form-control" />
                  <label class="form-label" for="form12"> البنك </label>
              </div> <br>
            </div> 
            
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="number"  name="bank_acount_number" id="form12" class="form-control" />
                  <label class="form-label" for="form12"> رقم الحساب </label>
              </div> <br>
            </div>
            
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="insurance" id="form12" class="form-control" />
                  <label class="form-label" for="form12"> التامين </label>
              </div> <br>
            </div> 
  
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="status" id="form12" class="form-control" />
                  <label class="form-label" for="form12"> الحالة </label>
              </div> <br>
            </div> 

          </div>     







        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">اغلاق</button>
          <button type="summit" class="btn btn-primary"> حفظ البيانات </button>
        </div>
      </form>
    </div>
  </div>






  <!-- Modal -->
  <div class="modal fade" id="EditModal"  tabindex="-1" aria-labelledby="EditModalLabel" aria-hidden="true">
    <div class="modal-dialog  modal-lg">
      <form action="{{ url("update.service.provider") }}" method="POST" class="modal-content" enctype="multipart/form-data" >
        @csrf
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">  تعديل البيانات  </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <input type="hidden" name="id" id="id">
        <div class="modal-body">


          <div class="row">

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_name" id="name" class="form-control" />
                  <label class="form-label" for="form12"> اسم مزود الخدمة  </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_branch"  id="branch" id="form12" class="form-control" />
                  <label class="form-label" for="form12">  الفرع </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <select name="" id="form12" class="form-control">
                    <option value="{{ $item->id }}">  </option>

                    @foreach ($classs as $item)
                      <option value="{{ $item->id }}"> {{ $item->name }} </option>
                    @endforeach
                  </select>
                  <input type="hidden" id="form12" class="form-control" />
                  <label class="form-label" for="form12">الفئـــة </label>
              </div> <br>
            </div>

            
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_tel" id="tel" class="form-control" />
                  <label class="form-label" for="form12">  الهاتف </label>
              </div> <br>
            </div>   

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_phone" id="phone" class="form-control" />
                  <label class="form-label" for="form12">  موبايل </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_email" id="email" class="form-control" />
                  <label class="form-label" for="form12">  البريد الالكتروني </label>
              </div> <br>
            </div>
            
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_email" id="email" class="form-control" />
                  <label class="form-label" for="form12">  البريد الالكتروني </label>
              </div> <br>
            </div> 
                       
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_fax" id="fax" class="form-control" />
                  <label class="form-label" for="form12">  فاكس  </label>
              </div> <br>
            </div>       

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_tax_record" id="tax_record" class="form-control" />
                  <label class="form-label" for="form12">   السجل التجاري  </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_tax_registration_number" id="tax_registration_number" class="form-control" />
                  <label class="form-label" for="form12">  رقم السجل التجاري  </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_issuer" id="issuer" class="form-control" />
                  <label class="form-label" for="form12">  issuer </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_city" id="city" class="form-control" />
                  <label class="form-label" for="form12"> المدينة </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_address" id="address" class="form-control" />
                  <label class="form-label" for="form12"> العنوان </label>
              </div> <br>
            </div>

            <div class="col-md-12">
              <h3>بيانات التامين</h3> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="date" name="edit_start" id="start" class="form-control" />
                  <label class="form-label" for="form12"> البدء </label>
              </div> <br>
            </div>

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="date"  name="edit_end" id="end" class="form-control" />
                  <label class="form-label" for="form12"> موعد الانتهاء </label>
              </div> <br>
            </div> 

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_insurance_officer" id="insurance_officer" class="form-control" />
                  <label class="form-label" for="form12"> موظف التامين </label>
              </div> <br>
            </div> 

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_insurance_officer_phone" id="insurance_officer_phone" class="form-control" />
                  <label class="form-label" for="form12">  هاتف موظف التامين </label>
              </div> <br>
            </div> 

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text" name="edit_type_contract" id="type_contract" class="form-control" />
                  <label class="form-label" for="form12">  نوع التعاقد   </label>
              </div> <br>
            </div> 

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="number"  name="edit_discount" id="discount" class="form-control" />
                  <label class="form-label" for="form12"> خصم   </label>
              </div> <br>
            </div> 
            
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_consultation_period" id="consultation_period" class="form-control" />
                  <label class="form-label" for="form12">   فترة الاستشارة</label>
              </div> <br>
            </div>  

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_administrative_expenses" id="administrative_expenses" class="form-control" />
                  <label class="form-label" for="form12"> المصروفات الإدارية </label>
              </div> <br>
            </div> 

            
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="number"  name="edit_repayment_period" id="repayment_period" class="form-control" />
                  <label class="form-label" for="form12"> مدة الدفع </label>
              </div> <br>
            </div> 

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_bank" id="bank" class="form-control" />
                  <label class="form-label" for="form12"> البنك </label>
              </div> <br>
            </div> 

            <div class="col-md-4">
              <div class="form-outline">
                  <input type="number"  name="edit_bank_acount_number" id="bank_acount_number" class="form-control" />
                  <label class="form-label" for="form12"> رقم الحساب </label>
              </div> <br>
            </div>
            
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_insurance" id="insurance" class="form-control" />
                  <label class="form-label" for="form12"> التامين </label>
              </div> <br>
            </div> 
  
            <div class="col-md-4">
              <div class="form-outline">
                  <input type="text"  name="edit_status" id="status" class="form-control" />
                  <label class="form-label" for="form12"> الحالة </label>
              </div> <br>
            </div> 

          </div>    



        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">اغلاق</button>
          <button type="summit" class="btn btn-primary"> حفظ البيانات </button>
        </div>
      </form>
    </div>
  </div>


</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
        $(document).on("click", ".edit_hospital", function(event) {
          event.preventDefault()
          var id     = $(this).data("id");
        $.ajax({
          url: "/ajax.get.service.provider",
          data:{id:id },
          success:function (html) {
            $("#EditModal #id").val(html.data.id);
            $("#EditModal #name").val(html.data.name);
            $("#EditModal #branch").val(html.data.branch);
            $("#EditModal #class").val(html.data.class);
            $("#EditModal #tel").val(html.data.tel);
            $("#EditModal #phone").val(html.data.phone);
            $("#EditModal #email").val(html.data.email);
            $("#EditModal #fax").val(html.data.fax);
            $("#EditModal #tax_record").val(html.data.tax_record);
            $("#EditModal #tax_registration_number").val(html.data.tax_registration_number);
            $("#EditModal #issuer").val(html.data.issuer);
            $("#EditModal #city").val(html.data.city);
            $("#EditModal #address").val(html.data.address);

            $("#EditModal #start").val(html.data.start);
            $("#EditModal #end").val(html.data.end);
            $("#EditModal #insurance_officer").val(html.data.insurance_officer);
            $("#EditModal #insurance_officer_phone").val(html.data.insurance_officer_phone);
            $("#EditModal #repayment_period").val(html.data.repayment_period);
            $("#EditModal #bank").val(html.data.bank);
            $("#EditModal #bank_acount_number").val(html.data.bank_acount_number);
            $("#EditModal #insurance").val(html.data.insurance);
            $("#EditModal #status").val(html.data.status);

            $("#EditModal #type_contract").val(html.data.type_contract);
            $("#EditModal #discount").val(html.data.discount);
            $("#EditModal #consultation_period").val(html.data.consultation_period);
            $("#EditModal #administrative_expenses").val(html.data.administrative_expenses);


            $("#EditModal .modal-body #notifications").val(html.data.notifications);
            $("#EditModal .modal-body .form-label").css("top", "-12px")
            $("#EditModal .modal-body .form-label").css("background", "#fff")
            $("#EditModal .modal-body .form-label").css("padding", "0px 10px")
            $("#EditModal .modal-body .form-label").css("z-index", "100")
          }
        });
      });

</script>
@endsection