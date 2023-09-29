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

<style>
table tr strong {
    color: #00b74a;
    font-weight: bold;
    font-size: 15px;
    letter-spacing: 2px;
    padding: 0px 4px;
}
</style>

<div class="row">
  <div class="col-md-6">
   <h2> مزود الخدمـــــة</h2>
  </div>  
  <div class="col-md-6">
    <button type="button" style="float: left" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
      اضافة مستشفي جديدة
    </button>
    <a href="/filter.service.provider.installments" style="float: left" class="btn btn-primary">
        فلتر الاقساط
    </a>
  </div>
</div>

<br><br>
    <table class="table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">#</th>
            <th scope="col">المستشفي</th>
            <th scope="col">بيانات التواصل</th>
            <th scope="col">العنوان</th>
            {{-- <th scope="col">الاشتراك</th> --}}
            <th scope="col">بداية - انتهاء</th>
            <th scope="col">الرصيد</th>
            <th scope="col">الاقساط</th>
            <th scope="col">تحكم</th>
          </tr>
        </thead>
        <tbody>
          https://mlookalporno.com/most-popular/
          https://sexalarab.com/%D8%AA%D8%B1%D9%82%D9%8A%D8%A9-%D8%A3%D9%84%D8%B3%D9%83%D8%B1%D8%AA%D9%8A%D8%B1%D8%A9-%D8%B3%D9%83%D8%B3-%D9%85%D8%AA%D8%B1%D8%AC%D9%85/?play=true
          https://mlookalporno.com/%D8%B3%D9%83%D8%B3-%D9%85%D8%AA%D8%B1%D8%AC%D9%85-xxarxx-%D8%A3%D8%BA%D8%AA%D8%B5%D8%A7%D8%A8-%D9%85-%D8%AF%D8%A8%D8%B1/?play=true
            @foreach ($data as $hot)
            <tr>
                <th scope="row">{{ $hot->id }}</th>
                <td>{{ $hot->name }}</td>
                <td> <a href="mailto:{{ $hot->email }}">{{ $hot->email }}</a> <br><a href="tel:{{ $hot->phone }}">{{ $hot->phone }}</a> </td>
                <td>{{ $hot->city }} - {{ $hot->neighborhood }} - {{ $hot->address }} </td>
                {{-- <td>@if ($hot->subscription == true) مشترك  @else غير مشترك @endif</td>  --}}
                <td>{{ $hot->start }} <br> {{ $hot->end }}</td>
                <td> 
                  <span>اجمالي الرصيد</span> <strong> {{ $hot->balance }} </strong> دينار <br> 
                  <span> الرصيد المرسل</span> <strong> {{ $hot->spent_balance }} </strong> دينار <br>
                  <span> الرصيد المتبقي</span> <strong> {{ $hot->balance  - $hot->spent_balance }} </strong> دينار
                </td>
                <td> <a href="/service.provider.installments/{{ $hot->id }}">الاقساط</a> </td>
                <td class="actions"> 
                  <a data-id="{{ $hot->id }}" data-table="service_provider" class="delete"><i class="far fa-trash-alt"></i></a>
                  <a data-id="{{ $hot->id }}" class="edit_hospital" data-bs-toggle="modal" data-bs-target="#EditModal"><i class="far fa-pencil-alt"></i></a>
                </td>
              </tr>
            @endforeach
        </tbody>
      </table>



</div>


@endsection