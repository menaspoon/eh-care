@extends('master')
@section('content')

<style>
  #input, select {
    text-align: left
  }
  .form-check {
    margin: 20px 0px;
    font-size: 14px;
  }
</style>

<form action="{{ url("store.pool") }}" method="POST" class="companies container">
  <h3> بيانات التعاقد </h3>
  @csrf
  <input type="hidden" value="{{ request()->route("company")}}">
  <input type="hidden" name="company" value="{{ request()->route('company') }}">
  <div class="row">


    @foreach ($pool_plan as $item)
    <div class="col-md-3">
      <div class="form-check">
        <input class="form-check-input" type="radio" name="plan" value="{{ $item->id }}" id="flexRadioDefault{{ $item->id }}"/>
        <label class="form-check-label" for="flexRadioDefault{{ $item->id }}">{{ $item->name }}</label>
      </div>
    </div>
    @endforeach

    <br><br>

      <div class="col-md-3">
        <div class="form-outline">
            <select name="pool"  id="form12" class="form-control">
              <option value=""></option>
              @foreach($pool_service as $item)
                <option value="{{ $item->id }}">{{ $item->name }}</option>
              @endforeach
            </select>
            <input type="hidden" />
            <label class="form-label" for="form12"> اختــــر الخدمة  </label>
        </div><br>
      </div> <!-- col-md-3 -->

      <div class="col-md-3">
        <div class="form-outline">
            <input type="number"  name="money" id="form12" class="form-control" />
            <label class="form-label" for="form12"> المبلــــــغ  </label>
        </div><br>
      </div> <!-- col-md-3 -->

      <div class="col-md-3">
        <div class="form-outline">
            <input type="number"  name="percentage" id="form12" class="form-control" />
            <label class="form-label" for="form12"> النسبـــــة  </label>
        </div><br>
      </div> <!-- col-md-3 -->

      <div class="col-md-3">
        <div class="form-outline">
            <input type="number"  name="number_of_subscribers" id="form12" class="form-control" />
            <label class="form-label" for="form12"> عدد المشتركين  </label>
        </div><br>
      </div> <!-- col-md-3 -->


  </div> <!-- row -->


  <button type="submit" class="btn btn-primary btn-sm">تحديث البيانات</button>

</form>
<br><br>

<table class="table">
  <thead class="table-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col"> الخطـــة </th>
      <th scope="col">الخدمة</th>
      <th scope="col">المبلــــــغ</th>
      <th scope="col">العدد</th>
    </tr>
  </thead>
  <tbody>
    <?php $number = 1; ?>
    @foreach ($pool as $item)
      <tr>
        <th scope="row">{{ $number++ }}</th>
        <td>{{ $item->plan_name }}</td>
        <td>{{ $item->pool_name }}</td>
        <td>{{ $item->money }}</td>
        <td>{{ $item->number_of_subscribers }}</td>
      </tr>
    @endforeach
  </tbody>
</table>

@endsection