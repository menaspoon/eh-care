@extends('master')
@section('content')

<div class="companies container">
  <div class="row">
    <div class="col-md-6">
      <h2>العلاج الطبيعي</h2>
    </div>
    <div class="col-md-6">
      <button type="button" style="float: left" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
          اضافة
      </button>
      <button type="button" style="float: left" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#uploadModal">
          رفع ملف اكسل  
      </button>
    </div>
  </div>
{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
@if (Session::has("created"))
  <script>
    swal("رســــالة تاكيد", "تم اضافة البيانات بنجاح", "success")
  </script>
@endif
@if (Session::has("updated"))
  <script>
    swal("رســــالة تاكيد", "تم تحديث البيانات بنجاح", "success")
  </script>
@endif
{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}

<table class="table">
        <thead class="" style="background-color: #9c27b0;">
          <tr>
            <th scope="col">#</th>
            <th scope="col">الكشف</th>
            <th scope="col">السعر</th>
            <th scope="col">الحالة</th>
            <th scope="col">تحكم</th>
          </tr>
        </thead>
        <tbody>
            <?php $num = 1; ?>
            @foreach ($data as $item)
            <tr>
                <th scope="row">{{ $num++ }}</th>
                <td> <a href="{{ $item->id }}">{{ $item->name }}</a>  </td>
                <td> {{ $item->price }} دينار  </td>
                <td class="actions"> 
                  <a data-id="{{ $item->id }}" data-table="physical_therapy" class="delete"><i class="far fa-trash-alt"></i></a>
                  <a data-id="{{ $item->id }}" class="edit_physical_therapy" data-bs-toggle="modal" data-bs-target="#EditModal"><i class="far fa-pencil-alt"></i></a>
                </td>
              </tr>
            @endforeach
        </tbody>
      </table>




  <!-- Modal -->
  <div class="modal fade" id="uploadModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <form action="{{ url("import.excel.sheet.price") }}" method="POST" class="modal-content" enctype="multipart/form-data" >
        @csrf
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">  اضافة قسم  </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">

          <input type="hidden" required name="category" value="{{ request()->route("category") }}" />
          <input type="hidden" required name="service_provider" value="{{ request()->route("service_provider") }}" />
          <input type="hidden" required name="type" value="physical_therapy" />
          
          <div class="upload-file">
            <label for="upload-file">
              <img src="{{ asset('/asset/img/upload-image-icon-png-3.jpg') }}" alt="">
              <p>يرجي رفع الملف </p>
            </label>
            <input type="file" name="file" id="upload-file">
          </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">اغلاق</button>
          <button type="summit" class="btn btn-primary"> رفـــــع الملف  </button>
        </div>
      </form>
    </div>
  </div>

      


  
  
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <form action="{{ route("store.physical.therapy") }}" method="POST" class="modal-content" enctype="multipart/form-data" >
        @csrf
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">  اضافة قسم  </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="form-outline">
                <input type="hidden" required name="category" value="{{ request()->route("category") }}" />
                <input type="hidden" required name="service_provider" value="{{ request()->route("service_provider") }}" />
                
                <input type="text" required name="name" id="form12" class="form-control" />
                <label class="form-label" for="form12"> اسم الكشف </label>
            </div>
            <br>
            <div class="form-outline">
                <input type="number" required name="price" id="form12" class="form-control" />
                <label class="form-label" for="form12"> السعر  </label>
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






    <!-- Modal -->
    <div class="modal fade" id="EditModal" tabindex="-1" aria-labelledby="EditModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <form action="{{ route("update.physical.therapy") }}" method="POST" class="modal-content" enctype="multipart/form-data" >
          @csrf
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">  اضافة قسم  </h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
              <div class="form-outline">
                  <input type="hidden" required id="id" name="id"  />
                  <input type="text" required name="edit_name" id="name" class="form-control" />
                  <label class="form-label" for="form12"> اسم الكشف </label>
              </div>
              <br>
              <div class="form-outline">
                  <input type="number" required name="edit_price" id="price" class="form-control" />
                  <label class="form-label" for="form12"> السعر  </label>
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
        $(document).on("click", ".edit_physical_therapy", function(event) {
          event.preventDefault()
          var id     = $(this).data("id");
        $.ajax({
          url: "/ajax.get.physical.therapy",
          data:{id:id },
          success:function (html) {
            $("#EditModal .modal-body #id").val(html.data.id);
            $("#EditModal .modal-body #name").val(html.data.name);
            $("#EditModal .modal-body #price").val(html.data.price);
            
            $("#EditModal .modal-body .form-label").css("top", "-12px")
            $("#EditModal .modal-body .form-label").css("background", "#fff")
            $("#EditModal .modal-body .form-label").css("padding", "0px 10px")
            $("#EditModal .modal-body .form-label").css("z-index", "100")
          }
        });
      });

</script>

@endsection