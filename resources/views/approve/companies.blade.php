@extends('master')
@section('content')

<div class="companies container-fuild">
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    فلتر المراجعة بواسطة الشركات
</button>
<br><br>
    <table class="table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">#</th>
            <th scope="col">الشركة</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($companies as $item)
            <tr>
                <th scope="row">{{ $item->id }}</th>
                <td>{{ $item->name }}</td>
              </tr>
            @endforeach
        </tbody>
      </table>













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