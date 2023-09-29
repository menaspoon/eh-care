@extends('master')
@section('content')

<div class="companies container">
  <form action="{{ url('filter.service.provider.installments')  }}" class="row">
    <div class="col-md-4">
      @csrf
      <label for="">تاريخ البدء</label>
      <input type="date" name="start" class="form-control">
    </div>

    <div class="col-md-4">
      <label for="">تاريخ الانتهاء</label>
      <input type="date" name="end" class="form-control">
    </div>

    <div class="col-md-4">
      <label for=""> مزود الخدمة </label>
      <select name="provider" class="form-control">
        <option value=""></option>
        @foreach ($provider as $item)
          <option value="{{ $item->id }}"> {{ $item->name }} </option>
        @endforeach
      </select>
    </div>

    <div class="col-md-12">
      <br>
      <button d type="submit" style="float: left; width:100%" class="btn btn-primary ripple-surface" >
        بحـــــــــــث 
    </button>
    </div>
  </form>
<br>

<br>
{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
@if (Session::has("created"))
  <script>
    swal("رســــالة تاكيد", "تم اضافة البيانات بنجاح", "success")
  </script>
@endif
@if (Session::has("created"))
  <script>
    swal("رســــالة تاكيد", "تم تحديث البيانات بنجاح", "success")
  </script>
@endif
{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
    <table class="table">
        <thead class="" style="background-color: #be9311;">
          <tr>
            <th scope="col">#</th>
            <th scope="col">المندوب</th>
            <th scope="col">القسط</th>
            <th scope="col">التوقيت</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($data as $item)
            <tr>
                <th>{{ $item->id }}</th>
                <td>{{ $item->agent }}  </td>
                <td>{{ $item->balance }} دينار </td>
                <td>{{ $item->created }}  </td>
              </tr>
            @endforeach
        </tbody>
      </table>










  
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <form action="{{ url("store.service.provider.installments") }}" method="POST" class="modal-content" enctype="multipart/form-data" >
        @csrf
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">  اضافة قسط  </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="">
            <label class="form-label" for="form12"> المندوب </label>
            <input type="hidden" required name="provider" value="{{ request()->route('provider')}}" class="form-control" />
            <input type="text" required name="agent" id="form12" class="form-control" />
          </div>
          <br>
          <div class="">
              <label class="form-label" for="form12"> المبلغ </label>
              <input type="number" required name="money" id="form12" class="form-control" />
          </div>
          <br>
          <div class="">
              <label class="form-label" for="form12"> التاريخ </label>
              <input type="date" required name="created" id="form12" class="form-control" />
          </div>
          <br>
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
        $(document).on("click", ".edit_category", function(event) {
          event.preventDefault()
          var id     = $(this).data("id");
        $.ajax({
          url: "/hospital/ajax.get.category",
          data:{id:id },
          success:function (html) {
            $("#EditModal .modal-body #id").val(html.data.id);
            $("#EditModal .modal-body #name").val(html.data.name);
            
            $("#EditModal .modal-body .form-label").css("top", "-12px")
            $("#EditModal .modal-body .form-label").css("background", "#fff")
            $("#EditModal .modal-body .form-label").css("padding", "0px 10px")
            $("#EditModal .modal-body .form-label").css("z-index", "100")
          }
        });
      });

</script>
@endsection