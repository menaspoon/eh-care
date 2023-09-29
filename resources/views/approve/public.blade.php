@extends('master')
@section('content')

<div class="companies container-fuild">

{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
@if (Session::has("created"))
  <script>
    swal("رســــالة تاكيد", "تم رفع البيانات بنجاح", "success")
  </script>
@endif
{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}

<style>
  .upload-file {
    text-align: center;
    background: #f0ffff4a;
  }
  
  .upload-file p, .upload-file button, .upload-file img  {
    display: block;
  }

  .upload-file input {
    display: none
  }

  .upload-file img {
      width: 120px;
      text-align: center;
      display: table;
      margin: auto;
      margin-bottom: 20px;
  }

  .upload-file {
      border: 3px dashed #007bff;
      padding: 50px;
  }

  .upload-file button {
      display: block;
      margin: auto;
  }

  .download-excel-form {
      display: block;
      padding: 10px;
      text-align: center;
      border: 3px dashed #1266f1;
      margin-top: 30px;
      background: #f0ffff4a;
  }

</style>

<div class="row  justify-content-center">
  <div class="col-md-5">
    <form class="upload-file" action="{{ url('import.approve.public.service') }}" method="POST" enctype="multipart/form-data">
      @csrf
      <label for="upload-file">
        <img src="{{ asset('/asset/img/upload-image-icon-png-3.jpg') }}" alt="">
        <p>يرجي رفع الملف </p>
      </label>
      <input type="file" name="file" id="upload-file">
      <button class="btn btn-primary">رفـــــع الملف</button>
    </form>

    <a class="download-excel-form" href=""> تحميل فورم Excel </a>
    <br>
    <h4>الشركـــــــات</h4>
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th scope="col">الاســـم</th>
          <th scope="col"> الرقم التعريفي  </th>
        </tr>
      </thead>
      <tbody>
          @foreach ($companies as $item)
          <tr>
              <td>{{ $item->name }}</td>
              <td>{{ $item->id }}</td>
            </tr>
          @endforeach
      </tbody>
    </table>
    <br>
    <h4>مزود الخدمة</h4>
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th scope="col">الاســـم</th>
          <th scope="col"> الرقم التعريفي  </th>
        </tr>
      </thead>
      <tbody>
          @foreach ($service_provider as $item)
          <tr>
              <td>{{ $item->name }}</td>
              <td>{{ $item->id }}</td>
            </tr>
          @endforeach
      </tbody>
    </table>

  </div>
</div>




















<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
        $(document).on("click", ".edit_employees", function(event) {
          event.preventDefault()
          var id     = $(this).data("id");
        $.ajax({
          url: "/hospital/ajax.get.edit.employees",
          data:{id:id },
          success:function (html) {
            $("#id").val(html.data.id);
            $("#editModal .modal-body #name").val(html.data.name);
            $("#editModal .modal-body #phone").val(html.data.phone);
            $("#editModal .modal-body #email").val(html.data.email);
            $("#editModal .modal-body #address").val(html.data.address);
            $("#editModal .modal-body #sex").val(html.data.sex);
            $("#editModal .modal-body #nationality").val(html.data.nationality);
            $("#editModal .modal-body #blood_type").val(html.data.blood_type);
            $("#editModal .modal-body #card_id").val(html.data.card_id);
            $("#editModal .modal-body #date_of_birth").val(html.data.date_of_birth);
            $("#editModal .modal-body #relative_relation").val(html.data.relative_relation);
            $("#editModal .modal-body #insurance_number").val(html.data.insurance_number);
            $("#editModal .modal-body #balance").val(html.data.balance);

            $("#EditModal .modal-body .form-label").css("top", "-12px")
            $("#EditModal .modal-body .form-label").css("background", "#fff")
            $("#EditModal .modal-body .form-label").css("padding", "0px 10px")
            $("#EditModal .modal-body .form-label").css("z-index", "100")
          }
        });
      });

</script>
@endsection