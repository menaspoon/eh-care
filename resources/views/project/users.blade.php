
@extends('master')
@section('content')
<br><br><br>
<div>
  <div class="container">
<style>
  svg { display: none !important;}
  .form-check-input[type=checkbox]:checked:after { display: none }
</style>

    <div class="row">
      <div class="col-md-6">
          <h2>الموظفين</h2>
      </div>

      <div class="col-md-6">
        <a style="float: left" data-toggle="modal" data-target="#newModal" class="btn btn-primary btn-new"> اضافة </a>
      </div>
    </div>

    <br>


{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
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

@if (Session::has("deleted"))
  <div class="alert alert-success texe-center text-center" role="alert">
    {{ Session::get("deleted") }}
  </div>
@endif
{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
<br>


    <div class="box-table">
      <table class="table border">
        <thead class="thead-dark">
          <tr class="parent">
            <th scope="col">#</th>
            <th scope="col"> اسم المستخدم </th>
            <th scope="col"> البريد الالكتروني </th>
            <th scope="col"> كلمة المرور  </th>
            <th scope="col"> الحساب  </th>
            <th scope="col"> الفرع  </th>
            <th scope="col"> الملف  </th>
            <th scope="col"> لوحة التحكم </th>
          </tr>
        </thead>
        <tbody > 
          <?php $id = 1 ?>
          @foreach ($users as $item)
           <tr>
              <td>{{ $id++ }}</td>
              <td> {{ $item->name }}</td>
              <td> {{ $item->email }}</td>
              <td> {{ $item->text_password }}</td>
              <td> {{ $item->type }}</td>
              <td> {{ $item->branch_name }}</td>
              <td> <a target="_blank" href="/public/file/{{ $item->file }}">الملف</a> </td>
              <td>
                  <a data-id="{{ $item->id }}" class="btn-action edit_supplier edit-user" data-toggle="modal" data-target="#EditModal"> <i class="fas fa-pencil-alt"></i> </a>
                  <a data-id="{{ $item->id }}" data-table="users" class="btn-action btn-delete delete"> <i class="far fa-trash-alt"></i> </a>
              </td>
            </tr>
          @endforeach
        </tbody>
      </table>

    </div>

  </div>
</div>












<!-- Modal -->
<div class="modal fade" id="newModal" tabindex="-1" role="dialog" aria-labelledby="newModalLabel" aria-hidden="true">
  <form class="modal-dialog" role="document" action="{{ route('store.user') }}" method="POST" enctype="multipart/form-data">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="EditModalLabel">  حســاب حديد  </h5>
      </div>
      <div class="modal-body">

        @csrf

        <div class="form-outline">
            <input required type="text" name="name" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> اسم المستخدم </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        @error('name_ar')
            <div class="text-danger"> {{ $message }} <div>
        @enderror


        @if ($user->type == "suber_admin")
          <input type="hidden" name="type" value="admin" />
          <div class="form-outline">
              <select name="branch" id="" required class="form-control form-control-lg">
                <option value=""></option>
                @foreach ($branch as $item)
                    @if($item->id > 1)
                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                    @endif
                @endforeach
              </select>
              <label class="form-label" for="formControlLg" style="margin-left: 0px;"> الفرع </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
          @error('name_ar')
              <div class="text-danger"> {{ $message }} <div>
          @enderror
        @else
        <input type="hidden" name="branch" value="{{ $user->branch }}" />
        <input type="hidden" name="type" value="muazaf" />
        @endif
        <br>

        <div class="form-outline">
            <input required type="email" name="email" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> البريد الالكتروني </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        @error('count')
            <div class="text-danger"> {{ $message }} <div>
        @enderror
        
        <div class="form-outline">
            <input required type="password" name="password" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> كلمة المرور </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        @error('price')
            <div class="text-danger"> {{ $message }} <div>
        @enderror

        <div class="form-outline">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> ملف </label>
            <input required type="file" name="file" class="form-control form-control-lg">
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        @error('file')
            <div class="text-danger"> {{ $message }} <div>
        @enderror

{{--
        <div class="row">
        @if ($acount->type == "suber_admin" || $permission->stock == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="stock" id="form5Example3"  />
                <label class="form-check-label" for="form5Example3">
                  المخزن
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="stock" />
        @endif
        @if ($acount->type == "suber_admin" || $permission->products == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="products" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  المنتجات
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="products" />
        @endif
        @if ($acount->type == "suber_admin" || $permission->settings == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="settings" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  الاعدادات
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="settings" />
        @endif
        @if ($acount->type == "suber_admin" || $permission->potential_clients == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="potential_clients" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  العملاء المحتمالين
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="potential_clients" />
        @endif
        @if ($acount->type == "suber_admin" || $permission->current_customers == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="current_customers" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  العملاء الحاليين
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="current_customers" />
        @endif
        @if ($acount->type == "suber_admin" || $permission->categories == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="categories" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  الاقسام
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="categories" />
        @endif
        @if ($acount->type == "suber_admin" || $permission->products_migration == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="products_migration" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  ترحيل المنتجات
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="products_migration" />
        @endif
        @if ($acount->type == "suber_admin" || $permission->absence == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="absence" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  الحضور والغياب 
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="absence" />
        @endif
        @if ($acount->type == "suber_admin" || $permission->hr == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="hr" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  الموارد البشرية 
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="hr" />
        @endif
        @if ($acount->type == "suber_admin" || $permission->booking == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="booking" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  المواعيد 
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="booking" />
        @endif
        
        @if ($acount->type == "suber_admin" || $permission->orders == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="orders" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  الاوردارات 
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="orders" />
        @endif
        
        @if ($acount->type == "suber_admin" || $permission->status_clint == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="status_clint" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  حالات العملاء  
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="status_clint" />
        @endif

        @if ($acount->type == "suber_admin" || $permission->waste_management == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="waste_management" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  ادارة الهدر   
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="waste_management" />
        @endif
        @if ($acount->type == "suber_admin" || $permission->branch == "1")
        <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="branch" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  الفروع   
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="branch" />
        @endif
        @if ($acount->type == "suber_admin" || $permission->tasks == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="tasks" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  المهمات   
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="tasks" />
        @endif
        @if ($acount->type == "suber_admin" || $permission->service == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="service" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  الخدمات   
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="service" />
        @endif
        @if ($acount->type == "suber_admin" || $permission->operating_administration == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="operating_administration" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  ادارة التشغيل   
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="operating_administration" />
        @endif
        @if ($acount->type == "suber_admin" || $permission->plans == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="plans" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                   الباقات   
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="plans" />
        @endif
        
        @if ($acount->type == "suber_admin" || $permission->subscribe == "1")
          <div class="col-md-3">
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="1" name="subscribe" id="form5Example3" />
                <label class="form-check-label" for="form5Example3">
                  الاشتركات    
                </label>
              </div>
          </div>
        @else
            <input type="hidden" value="0" name="subscribe" />
        @endif
         --}}

        </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">الغاء</button>
        <button type="submit" class="btn btn-primary save-data update-supplier"> حفــــظ </button>
      </div>
    </div>
  </form>
</div>








<!-- Modal -->
<div class="modal fade" id="EditModal" tabindex="-1" role="dialog" aria-labelledby="EditModalLabel" aria-hidden="true">
  <form class="modal-dialog" role="document" action="{{ route('update.user.acount') }}" method="POST">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="EditModalLabel"> تحديث البيانات </h5>
      </div>
      <div class="modal-body">

        @csrf
        <input type="hidden" id="user_id" name="id">
        <div class="form-outline">
          <input required type="text" name="edit_name" id="edit_name" class="form-control form-control-lg">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> اسم المستخدم </label>
      <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
      @error('name_ar')
          <div class="text-danger"> {{ $message }} <div>
      @enderror


      @if ($user->type == "suber_admin")
        <input type="hidden" name="type" value="admin" />
        <div class="form-outline">
            <select name="edit_branch" id="" required class="form-control form-control-lg">
              <option id="edit_branch" value=""></option>
              @foreach ($branch as $item)
                @if($item->id > 1)
                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                @endif
              @endforeach
            </select>
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> الفرع </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        @error('name_ar')
            <div class="text-danger"> {{ $message }} <div>
        @enderror
      @else
      <input type="hidden" name="branch" value="{{ $user->branch }}" />
      <input type="hidden" name="type" value="muazaf" />
      @endif
      <br>

      <div class="form-outline">
          <input required type="email" name="edit_email" id="edit_email" class="form-control form-control-lg">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> البريد الالكتروني </label>
      <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
      @error('email')
          <div class="text-danger"> {{ $message }} <div>
      @enderror
      
      <div class="form-outline">
          <input required type="text" name="edit_password" id="edit_password" class="form-control form-control-lg">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> كلمة المرور </label>
      <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
      @error('password')
          <div class="text-danger"> {{ $message }} <div>
      @enderror

      <div class="form-outline">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> ملف </label>
          <input  type="file" name="edit_file" class="form-control form-control-lg">
      <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
      @error('edit_file')
          <div class="text-danger"> {{ $message }} <div>
      @enderror



      <div class="row">

        <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_stock" type="checkbox" value="1" name="edit_stock" id="form5Example3 edit_stock"  />
            <label class="form-check-label" for="form5Example3">
              المخزن
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_products" type="checkbox" value="1" name="edit_products" id="form5Example3 edit_products" />
            <label class="form-check-label" for="form5Example3">
              المنتجات
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_settings" type="checkbox" value="1" name="edit_settings" id="form5Example3 edit_settings" />
            <label class="form-check-label" for="form5Example3">
              الاعدادات
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_potential_clients" type="checkbox" value="1" name="edit_potential_clients" id="form5Example3 edit_potential_clients" />
            <label class="form-check-label" for="form5Example3">
              العملاء المحتمالين
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_current_customers" type="checkbox" value="1" name="edit_current_customers" id="form5Example3 edit_current_customers" />
            <label class="form-check-label" for="form5Example3">
              العملاء الحاليين
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_categories" type="checkbox" value="1" name="edit_categories" id="form5Example3 edit_categories" />
            <label class="form-check-label" for="form5Example3">
              الاقسام
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_products_migration" type="checkbox" value="1" name="edit_products_migration" id="form5Example3 edit_products_migration" />
            <label class="form-check-label" for="form5Example3">
              ترحيل المنتجات
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_absence" type="checkbox" value="1" name="edit_absence" id="form5Example3 edit_absence" />
            <label class="form-check-label" for="form5Example3">
              الحضور والغياب 
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_hr" type="checkbox" value="1" name="edit_hr" id="form5Example3 edit_hr" />
            <label class="form-check-label" for="form5Example3">
              الموارد البشرية 
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_booking" type="checkbox" value="1" name="edit_booking" id="form5Example3 edit_booking" />
            <label class="form-check-label" for="form5Example3">
              المواعيد 
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_orders" type="checkbox" value="1" name="edit_orders" id="form5Example3 edit_orders" />
            <label class="form-check-label" for="form5Example3">
              الاوردارات 
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_status_clint" type="checkbox" value="1" name="edit_status_clint" id="form5Example3 edit_status_clint" />
            <label class="form-check-label" for="form5Example3">
              حالات العملاء  
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_contact" type="checkbox" value="1" name="edit_contact" id="form5Example3 edit_contact" />
            <label class="form-check-label" for="form5Example3">
              تحديث بيانات الاتصال   
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_waste_management" type="checkbox" value="1" name="edit_waste_management" id="form5Example3 edit_waste_management" />
            <label class="form-check-label" for="form5Example3">
              ادارة الهدر   
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_branch" type="checkbox" value="1" name="edit_branch" id="form5Example3 edit_branch" />
            <label class="form-check-label" for="form5Example3">
              الفروع   
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_tasks" type="checkbox" value="1" name="edit_tasks" id="form5Example3 edit_tasks" />
            <label class="form-check-label" for="form5Example3">
              المهمات   
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_service" type="checkbox" value="1" name="edit_service" id="form5Example3 edit_service" />
            <label class="form-check-label" for="form5Example3">
              الخدمات   
            </label>
          </div>
      </div>
      <div class="col-md-3">
          <div class="form-check d-flex justify-content-center mb-4">
            <input class="form-check-input me-2 edit_operating_administration" type="checkbox" value="1" name="edit_operating_administration" id="form5Example3 edit_operating_administration" />
            <label class="form-check-label" for="form5Example3">
              ادارة التشغيل   
            </label>
          </div>
      </div>

      </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">الغاء</button>
        <button type="submit" class="btn btn-primary save-data update-supplier"> حفــــظ </button>
      </div>
    </div>
  </form>
</div>





<style>
  input, select {
    text-align: left
  }
</style>




  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
$(document).on("click", ".edit-user", function() {
    var id = $(this).data("id");
    var token  = $("input[name='_token']").val();

    $.ajax({
        url: "/get.user.acount",
        data:{token:token, id:id },
        success:function (html) {
          $("#user_id").val(html.data.id);
          $("#edit_name").val(html.data.name);
          $("#edit_email").val(html.data.email);
          $("#edit_password").val(html.data.text_password);
          $("#edit_branch").val(html.data.branch);
          $("#edit_branch").html(html.data.branch_name);

          if(html.permission.stock == 1) {
            $("#edit_stock").val(html.permission.stock);
            $('.edit_stock').prop('checked', true)
          }
          if(html.permission.products == 1) {
            $("#edit_products").val(html.permission.products);
            $('.edit_products').prop('checked', true)
          }
          if(html.permission.settings == 1) {
            $("#edit_settings").val(html.permission.settings);
            $('.edit_settings').prop('checked', true)
          }
          if(html.permission.potential_clients == 1) {
            $("#edit_potential_clients").val(html.permission.potential_clients);
            $('.edit_potential_clients').prop('checked', true)
          }
          if(html.permission.current_customers == 1) {
            $("#edit_current_customers").val(html.permission.current_customers);
            $('.edit_current_customers').prop('checked', true)
          }
          if(html.permission.categories == 1) {
            $("#edit_categories").val(html.permission.categories);
            $('.edit_categories').prop('checked', true)
          }
          if(html.permission.products_migration == 1) {
            $("#edit_products_migration").val(html.permission.products_migration);
            $('.edit_products_migration').prop('checked', true)
          }
          if(html.permission.absence == 1) {
            $("#edit_absence").val(html.permission.absence);
            $('.edit_absence').prop('checked', true)
          }
          if(html.permission.hr == 1) {
            $("#edit_hr").val(html.permission.hr);
            $('.edit_hr').prop('checked', true)
          }
          if(html.permission.booking == 1) {
            $("#edit_booking").val(html.permission.booking);
            $('.edit_booking').prop('checked', true)
          }
          if(html.permission.orders == 1) {
            $("#edit_orders").val(html.permission.orders);
            $('.edit_orders').prop('checked', true)
          }
          if(html.permission.status_clint == 1) {
            $("#edit_status_clint").val(html.permission.status_clint);
            $('.edit_status_clint').prop('checked', true)
          }
          if(html.permission.contact == 1) {
            $("#edit_contact").val(html.permission.contact);
            $('.edit_contact').prop('checked', true)
          }
          if(html.permission.waste_management == 1) {
            $("#edit_waste_management").val(html.permission.waste_management);
            $('.edit_waste_management').prop('checked', true)
          }
          if(html.permission.branch == 1) {
            $("#edit_waste_branch").val(html.permission.branch);
            $('.edit_waste_branch').prop('checked', true)
          }
          if(html.permission.tasks == 1) {
            $("#edit_tasks").val(html.permission.tasks);
            $('.edit_tasks').prop('checked', true)
          }
          if(html.permission.service == 1) {
            $("#edit_service").val(html.permission.service);
            $('.edit_service').prop('checked', true)
          }
          if(html.permission.operating_administration == 1) {
            $("#edit_operating_administration").val(html.permission.operating_administration);
            $('.edit_operating_administration').prop('checked', true)
          }

        }
      });
});



$(document).on("click", ".btn-plus", function() {
    var id = $(this).data("id");
    $.ajax({
        url: "/user.store.plus",
        data:{id:id},
        success:function (html) { alert("تم تحضير الموظف ") }
      });
});

$(document).on("click", ".btn-mins", function() {
    var id = $(this).data("id");
    $.ajax({
        url: "/user.store.minus",
        data:{id:id},
        success:function (html) { alert("تم اضافة الموظف الي لائحة الغياب") }
      });
});

$(document).on("click", ".btn-departure", function() {
    var id = $(this).data("id");
    $.ajax({
        url: "/user.store.departure",
        data:{id:id},
        success:function (html) { alert("تم اقلاع الموظف ") }
      });
});

$(document).on("click", ".add-overtime", function() {

    var user_overtime = $("#user_overtime").val();
    var overtime = $("#overtime").val();

    $.ajax({
        url: "/user.store.overtime",
        data:{user_overtime:user_overtime, overtime:overtime},
        success:function (html) { alert("تم الوقت الاضافي الموظف ") }
      });
});

$(document).on("click", ".btn-vacation", function() {
    var id = $(this).data("id");
    $.ajax({
        url: "/user.store.vacation",
        data:{id:id},
        success:function (html) { alert("تم اضافة الاجازة الموظف ") }
      });
});




$(document).on("click", ".btn-time-overtime", function() {
    var id = $(this).data("id");
    $(".getID").val(id);
});
</script>




@endsection
