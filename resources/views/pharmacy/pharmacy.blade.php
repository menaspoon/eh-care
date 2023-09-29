@extends('master')
@section('content')

<style>
  #EditModal input, #EditModal select {
    text-align: left
  }
</style>

<div class="companies container">
  <div class="row">
    <div class="col-md-6">
      <h2> الصيدلية </h2>
    </div>
    <div class="col-md-6">
      <button type="button" style="float: left" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
          اضافة  منتج
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
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">الاسم</th>
      <th scope="col">نوع</th>
      <th scope="col">tablet</th>
      <th scope="col">strip</th>
      <th scope="col">volume</th>
      <th scope="col">سعر الوحدة الكبري</th>
      <th scope="col">سعر الوحدة الصغري</th>
      <th scope="col">تحكم</th>
    </tr>
  </thead>
  <tbody>
      @foreach ($data as $item)
      <tr>
          <th scope="row">{{ $item->id }}</th>
          <td>{{ $item->name }}</td>
          <td>{{ $item->type }}</td>
          <td>{{ $item->tablet }}</td>
          <td>{{ $item->strip }}</td>
          <td>{{ $item->volume }}</td>
          <td>{{ $item->small_price }} دينار </td>
          <td>{{ $item->large_price }} دينار </td>
          <td>
            <a data-id="{{ $item->id }}" data-table="pharmacy" class="users actions"><i class="far fa-trash-alt"></i></a>
            <a data-id="{{ $item->id }}" class="edit_pharmacy actions" data-bs-toggle="modal" data-bs-target="#EditModal"><i class="far fa-pencil-alt"></i></a>
          </td>
        </tr>
      @endforeach
  </tbody>
</table>





  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <form action="{{ route("store.prodact.pharmacy") }}" method="POST" class="modal-content" enctype="multipart/form-data" >
        @csrf
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel"> اضافة منتج  </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
                <input type="hidden" required name="category" value="{{ request()->route('id') }}" class="form-control" />

                <div class="form-outline">
                    <input type="text" required="" name="name" id="form12" class="form-control">
                    <label class="form-label" for="form12" style="margin-left: 0px;"> اسم المنتج </label>
                <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 68px;"></div><div class="form-notch-trailing"></div></div></div>
                <br>
                <div class="form-outline">
                    <input type="text" required="" name="tablet" id="form12" class="form-control">
                    <label class="form-label" for="form12" style="margin-left: 0px;"> tablet count</label>
                <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 68px;"></div><div class="form-notch-trailing"></div></div></div>
                <br>
                <div class="form-outline">
                    <input type="text" required="" name="strip" id="form12" class="form-control">
                    <label class="form-label" for="form12" style="margin-left: 0px;">strip count</label>
                <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 68px;"></div><div class="form-notch-trailing"></div></div></div>
                <br>
                <div class="form-outline">
                    <input type="text" required="" name="volume" id="form12" class="form-control">
                    <label class="form-label" for="form12" style="margin-left: 0px;">volume	 count</label>
                <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 68px;"></div><div class="form-notch-trailing"></div></div></div>
                <br>

                <div class="form-outline">
                    <select  name="type" id="form12" class="form-control">
                      <option value=""></option>
                      <option value="GREAM">GREAM</option>
                      <option value="TM">TM</option>
                    </select>
                    <input type="hidden" required="">
                    <label class="form-label" for="form12" style="margin-left: 0px;"> نوع المنتج </label>
                <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 68px;"></div><div class="form-notch-trailing"></div></div></div>
                <br>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-outline">
                        <input type="text" required="" name="small_price" id="form12" class="form-control">
                        <label class="form-label" for="form12" style="margin-left: 0px;">  سعر الوحدي الكبري </label>
                    <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 68px;"></div><div class="form-notch-trailing"></div></div></div>
                    <br>
                  </div>
                  <div class="col-md-6">
                    <div class="form-outline">
                        <input type="text" required="" name="large_price" id="form12" class="form-control">
                        <label class="form-label" for="form12" style="margin-left: 0px;">  سعر الوحدة الكبري </label>
                    <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 68px;"></div><div class="form-notch-trailing"></div></div></div>
                    <br>
                  </div>
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
      <form action="{{ route("update.prodact.pharmacy") }}" method="POST" class="modal-content" enctype="multipart/form-data" >
        @csrf
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel"> تحديث البيانات   </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <input type="hidden" required="" name="id" id="id" class="form-control">
          <div class="form-outline">
            <input type="text" required="" name="edit_name" id="edit_name" class="form-control">
            <label class="form-label" for="form12" style="margin-left: 0px;"> اسم المنتج </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 68px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        <div class="form-outline">
            <input type="text" name="edit_tablet" id="edit_tablet" class="form-control">
            <label class="form-label" for="form12" style="margin-left: 0px;"> tablet count</label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 68px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        <div class="form-outline">
            <input type="text"  name="edit_strip" id="edit_strip" class="form-control">
            <label class="form-label" for="form12" style="margin-left: 0px;">strip count</label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 68px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        <div class="form-outline">
            <input type="text"  name="edit_volume" id="edit_volume" class="form-control">
            <label class="form-label" for="form12" style="margin-left: 0px;">volume	 count</label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 68px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        <div class="form-outline">
            <select  name="edit_type"  class="form-control">
              <option value="" id="edit_type"></option>
              <option value="GREAM">GREAM</option>
              <option value="TM">TM</option>
            </select>
            <input type="hidden" required="">
            <label class="form-label" for="form12" style="margin-left: 0px;"> نوع المنتج </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 68px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        <div class="row">
          <div class="col-md-6">
            <div class="form-outline">
                <input type="text"  name="edit_small_price" id="edit_small_price" class="form-control">
                <label class="form-label" for="form12" style="margin-left: 0px;">  سعر الوحدي الكبري </label>
            <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 68px;"></div><div class="form-notch-trailing"></div></div></div>
            <br>
          </div>
          <div class="col-md-6">
            <div class="form-outline">
                <input type="text"  name="edit_large_price" id="edit_large_price" class="form-control">
                <label class="form-label" for="form12" style="margin-left: 0px;">  سعر الوحدة الكبري </label>
            <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 68px;"></div><div class="form-notch-trailing"></div></div></div>
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
        $(document).on("click", ".edit_pharmacy", function(event) {
          event.preventDefault()
          var id     = $(this).data("id");
        $.ajax({
          url: "/ajax.get.pharmacy",
          data:{id:id },
          success:function (html) {
            $("#EditModal .modal-body #id").val(html.data.id);
            $("#edit_name").val(html.data.name);
            $("#edit_tablet").val(html.data.tablet);
            $("#edit_strip").val(html.data.strip);
            $("#edit_volume").val(html.data.volume);
            $("#edit_type").val(html.data.type);
            $("#edit_type").html(html.data.type);
            $("#edit_small_price").val(html.data.small_price);
            $("#edit_large_price").val(html.data.large_price);
          }
        });
      });

</script>
@endsection