@extends('master')
@section('content')

<div class="companies container-fuild">
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    اضافة شركة جديدة
</button>
<br><br>
    <table class="table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">#</th>
            <th scope="col">الشركة</th>
            <th scope="col">بيانات التواصل</th>
            <th scope="col">العنوان</th>
            <th scope="col">مسؤل التامين</th>
            <th scope="col"> السجل التجاري </th>
            <th scope="col"> البطاقة الضريبية </th>
            <th scope="col"> جهة التعاقد </th>
            <th scope="col"> الرصيد </th>
            <th scope="col">تحكم</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($companies as $item)
            <tr>
                <th scope="row">{{ $item->id }}</th>
                <td>{{ $item->name }}</td>
                <td> <a href="mailto:{{ $item->email }}">{{ $item->email }}</a> <br> <a href="mailto:{{ $item->phone }}">{{ $item->phone }}</a> </td>
                {{-- <td> <a href="companies.status/{{ $item->id }}">الحالات</a> </td>--}}
                <td>{{ $item->address }}</td>
                <td>{{ $item->contracting_officer }} - {{ $item->contracting_officer_phone }}</td>
                <td>{{ $item->commercial_register }}</td>
                <td>{{ $item->tax_card }}</td>
                <td>{{ $item->issuer }} </td>
                <td> 
                  <span>الرصيد</span> <strong>{{ $item->balance }}</strong> <br>
                  <span> الرصيد المستهلك </span> <strong>{{ $item->spent_balance }} </strong> <br>
                  <span> الرصيد المتاح </span> <strong>{{ $item->balance - $item->spent_balance }} </strong> <br>
                </td>
                <td> 
                    <a href="/pool/{{ $item->id }}"> pool </a> <br>
                    <a href="/contract/{{ $item->id }}">العقد</a> <br>
                    <a href="employees/{{ $item->id }}">الموظفين</a> <br>
                    <a href="corporate.premiums/{{ $item->id }}">الاقساط</a>
                    
                </td>

              </tr>
            @endforeach
        </tbody>
      </table>










  
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <form action="{{ route("store.company") }}" method="POST" class="modal-content" enctype="multipart/form-data" >
        @csrf
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel"> بيانات الشركة  </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">

          
            <div class="row">
              <div class="col-md-6">
                <div class="form-outline">
                    <input type="text" required name="name" id="form12" class="form-control" />
                    <label class="form-label" for="form12"> اسم الشركة </label>
                </div>
                <br>
              </div>
              <div class="col-md-6">
                <div class="form-outline">
                    <input type="email" required name="email" id="form12" class="form-control" />
                    <label class="form-label" for="form12"> البريد الالكتروني </label>
                </div>
                <br>
              </div>
              <div class="col-md-6">
                  <div class="form-outline">
                    <input type="text" required name="phone" id="form12" class="form-control" />
                    <label class="form-label" for="form12"> رقم الهاتف </label>
                </div>
                <br>
              </div>


              <div class="col-md-6">
                <div class="form-outline">
                    <input type="text" required name="address" id="form12" class="form-control" />
                    <label class="form-label" for="form12"> العنوان </label>
                </div><br>
              </div>

              <div class="col-md-6">
                <div class="form-outline">
                    <input type="text" required name="commercial_register" id="form12" class="form-control" />
                    <label class="form-label" for="form12"> السجل التجاري </label>
                </div><br>
              </div>

              <div class="col-md-6">
                <div class="form-outline">
                    <input type="text" required name="tax_card" id="form12" class="form-control" />
                    <label class="form-label" for="form12"> البطاقة التجارية </label>
                </div>
                <br>
              </div>

              <div class="col-md-6">
                <div class="form-outline">
                    <input type="text" required name="issuer" id="form12" class="form-control" />
                    <label class="form-label" for="form12"> جهة التعاقد </label>
                </div>
                <br>
              </div>
              <div class="col-md-6">
                <div class="form-outline">
                    <input type="text" required name="contracting_officer" id="form12" class="form-control" />
                    <label class="form-label" for="form12"> مسؤل التعاقد </label>
                </div>
                <br>
              </div>

              <div class="col-md-6">
                <div class="form-outline">
                    <input type="text" required name="contracting_officer_phone" id="form12" class="form-control" />
                    <label class="form-label" for="form12">  هاتف مسؤل التعاقد </label>
                </div><br>
              </div>

              {{--
              <div class="col-md-6">
                <div class="form-outline">
                    <input type="number" required  name="total" id="form12" class="form-control" />
                    <label class="form-label" for="form12"> مبلغ التامين </label>
                </div>
                <br>
              </div>
              <div class="col-md-6">
                <div class="form-outline">
                    <input type="date" required name="start" id="form12" class="form-control" />
                    <label class="form-label" for="form12"> بداية التامين </label>
                </div>
                <br>
              </div>
              <div class="col-md-6">
                <div class="form-outline">
                    <input type="date" required name="end" id="form12" class="form-control" />
                    <label class="form-label" for="form12"> نهاية التامين </label>
                </div>
              </div>

              <div class="col-md-6">
                <div class="form-outline">
                    <input type="number" required name="discount_percentage" id="form12" class="form-control" />
                    <label class="form-label" for="form12">  نسبة الخصم </label>
                </div>
                <br>
              </div>
            --}}

              <div class="col-md-6">
                <div class="form-outline">
                  <select required name="part" id="form12" class="form-control">
                      <option value="1"> صحي </option>
                      <option value="2"> انشات </option>
                  </select>
                  <label class="form-label" for="form12"> قطاع الشركة </label>
              </div>
              <br>
            </div>




        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">اغلاق</button>
          <button type="summit" class="btn btn-primary"> حفظ البيانات </button>
        </div>
      </form>
    </div>
  </div>



<style>
  .checking {
    background: #eee;
    position: relative;
    padding-right: 25px;
    border-radius: 16px;
}
</style>



</div>



@endsection