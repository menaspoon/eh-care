<?php

namespace App\Exports;

use App\Models\Employees;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class EmployeesExport implements FromCollection, WithHeadings {
    /**
    * @return \Illuminate\Support\Collection
    */

    public function headings():array {
        return ['الاسم', 'الهاتف', 'البريد الالكتروني', 'العنوان', 'الجنس', 'الجنسية', 'فصيلة الدم', 'رقم الهاوية', 'العلاقة','تاريخ الميلاد','الرصيد ','الرصيد المتاح',];
    }
    
    public function collection() {
        return collect(Employees::getEmployees());
    }
}
