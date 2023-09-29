@extends('master')
@section('content')

<form method="POST" action="{{ url('update.my.acount') }}" class="container" enctype="multipart/form-data" >
  <div class="row justify-content-center">
    <div class="col-md-6">
      <h4 class="text-center"> تحديث  الحساب </h4>
      {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
      @if (Session::has("updated"))
        <script>
          swal("رســــالة تاكيد", "تم تحديث البيانات بنجاح", "success")
        </script>
      @endif
      {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}

        @csrf

      <div class="">
          <label class="form-label" for="form12"> الاســــــم  </label>
          <input type="text" required name="edit_name" class="form-control" value="{{ $acount->name }}" />
          <input type="hidden" required name="id" value="{{ $acount->id }}" class="form-control" />
      </div>
      <br>
      <div class="">
          <label class="form-label" for="form12"> البريد الالكتروني  </label>
          <input type="email" required name="edit_email" id="form12" class="form-control" value="{{ $acount->email }}" />
      </div>
      <br>
      <div class="">
          <label class="form-label" for="form12"> رقم الهاتف  </label>
          <input type="text" required name="edit_phone" id="form12" class="form-control" value="{{ $acount->phone }}" />
      </div>
      <br>
      <div class="">
          <label class="form-label" for="form12"> كلمة المرور  </label>
          <input type="text" required name="edit_password" id="form12" class="form-control" value="{{ $acount->text_password }}" />
      </div>
      <br>
      <div class="">
        <button style="width: 100%" class="btn btn-primary" type="submit"> تعديل البيانات </button>
      </div>
      <br>
    </div>
  </div>
</form>

@endsection