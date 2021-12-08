<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Invoice;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $number1=Invoice::count();

         $number_Paid=number_format (\App\Invoice::where('Value_Status',1)->count()  / \App\Invoice::count() * (100) ,2);
         $number_nonPaid=number_format (\App\Invoice::where('Value_Status',2)->count()  / \App\Invoice::count() * (100) ,2);
         $number_partialPaid=number_format (\App\Invoice::where('Value_Status',3)->count()  / \App\Invoice::count() * (100) ,2);
              //  dd($number_Paid+$number_nonPaid+$number_partialPaid);
      
        // ExampleController.php

$chartjs =  app()->chartjs
->name('pieChartTest')
->type('pie')
->size(['width' => 400, 'height' => 200])
->labels(['الفواتير المدفوعه', 'الفواتير الغير مدفوعه','الفواتير المدفوعه جزئيا'])
->datasets([
    [
        'backgroundColor' => ['#3dcc9e', '#FF6384','#f48241'],
        'hoverBackgroundColor' => ['#3dcc9e', '#FF6384','#f48241'],
        'data' => [$number_Paid, $number_nonPaid,$number_partialPaid]
    ]
])
->options([]);

return view('home',['chartjs'=>$chartjs]);


// example.blade.php

    }
}
