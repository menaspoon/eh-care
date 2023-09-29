@extends('master')
@section('content')
<br><br>



<div class="invoice_detales">
    <div class="container" id="GFG">
        <div class="bg">.</div>
        <div class="box_invoice_detales">
            <div class="row">
                <div class="col-md-6">
                    <div class="company_detales">
                        <div><i class="fal fa-phone"></i> {{  $company->phone }} </div>
                        <div><i class="fal fa-envelope-open-text"></i> {{  $company->email }} </div>
                        <div><i class="fas fa-map-marker-alt"></i> {{  $company->address }} </div>
                    </div>
                </div> <!-- col-md-6 -->
                <div class="col-md-6">
                    <img class="logo" src="{{ asset('/public/hospital/'. $company->logo) }}" alt="">
                </div> <!-- col-md-6 logo -->
            </div> <!-- row -->
            <h2> مراجعة  التحاليل </h2>
            <br>
            <div class="row">
                <div class="col-md-2">
                    <span> العضو  </span> <br>
                    <strong> {{ $number->username }} </strong>
                </div> <!-- col-md-2 -->
                <div class="col-md-2">
                    <span> الرصيد </span> <br>
                    <strong> {{ $number->balance }} دينار </strong>
                </div> <!-- col-md-2 -->
                <div class="col-md-2">
                    <span> الشركة </span> <br>
                    <strong> {{ $number->name }} </strong>
                </div> <!-- col-md-2 -->
                <div class="col-md-2">
                    <span> الفئة </span> <br>
                    <strong> {{ $contract->class }} </strong>
                </div> <!-- col-md-2 -->
                <div class="col-md-2">
                    <span> مزود الخدمـــة </span> <br>
                    <strong> {{ $approve->provider_name }} </strong>
                </div> <!-- col-md-2 -->
            </div> <!-- row -->
            <br>
            <div class="row price">
                <div class="col-md-3">
                    <span>السعر</span> <br>
                    <strong>{{ $approve->total_price }} دينار</strong>
                </div>
                <div class="col-md-3">
                    <span>نسبة الخصم</span> <br>
                    <strong>{{ $approve->discount_percentage }}</strong>
                </div>
                <div class="col-md-3">
                    <span>مبلغ الخصم</span> <br>
                    <strong>{{ $approve->discount_amount }} دينار</strong>
                </div>
                <div class="col-md-3">
                    <span>الاجمالي بعد الخصم</span> <br>
                    <strong>{{ $approve->total_before_discount }} دينار</strong>
                </div>
            </div>


            <br>
            <table class="table border">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>الصتف</th>
                        <th>السعر</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $id = 1; ?>
                    @foreach ($ApproveServiceDetails as $item)
                    <tr>
                        <td>{{ $id++ }}</td>
                        <td>{{ $item->name }}</td>
                        <td>{{ $item->price }} دينار </td>
                    </tr>
                    @endforeach
                    <tr class="diagnosing">
                        <td>التشخيص</td>
                        <td colspan="2">{{ $approve->diagnosing }}</td>
                    </tr>
                    <tr class="diagnosing">
                        <td>ملاحظات</td>
                        <td colspan="2">{{ $approve->note }}</td>
                    </tr>
                </tbody>
            </table>
        </div> <!-- box_invoice_detales -->
    </div> <!-- container -->
    <input type="button" value="طباعـــــــة" onclick="PrintDiv('printContent')" />
    <input type="button" value="click" onclick="printDiv()">

</div> <!-- invoice_detales -->
<script>
    function printDiv() {
        var divContents = document.getElementById("GFG").innerHTML;
        var a = window.open('', '', 'height=1000, width=1000');
        a.document.write('<html>');
        a.document.write('<link href="public/asset/css/style.css" rel="stylesheet" type="text/css" />');
        a.document.write('<body > <h1>Div contents are <br>');
        a.document.write(divContents);
        a.document.write('</body></html>');
        a.document.close();
        a.print();
    }
</script>




@endsection