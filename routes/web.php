<?php

use Illuminate\Support\Facades\Route;
//use \app\Http\Controllers\InvoiceController;
//use \app\Http\Controllers\SectionController;
//use \app\Http\Controllers\ProductController;
use \app\Http\Controllers\AjaxController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});


Auth::routes();
//Auth::routes(['register' => false ]);

 


Route::get('/index', 'HomeController@index')->name('home');

Route::resource('invoices','InvoiceController');
Route::resource('sections','SectionController');
Route::resource('products','ProductController');

Route::get('/edit_invoice/{id}','InvoiceController@edit');



Route::get('/section/{id}', 'InvoiceController@getProduct')->name('ajax');

Route::get('/InvoicesDetails/{id}', 'InvoceDetailController@show');

Route::get('download/{invoice_number}/{file_name}', 'InvoceDetailController@get_file');

Route::get('View_file/{invoice_number}/{file_name}', 'InvoceDetailController@open_file');

Route::resource('Attacments','InvoiceAttachmentController');

Route::get('/Status_show/{id}', 'InvoiceController@show')->name('Status_show');

Route::post('/Status_Update/{id}', 'InvoiceController@Status_Update')->name('Status_Update');


Route::get('Invoice_Paid','InvoiceController@Invoice_Paid');

Route::get('Invoice_UnPaid','InvoiceController@Invoice_UnPaid');

Route::get('Invoice_Partial','InvoiceController@Invoice_Partial');

//Archief
Route::resource('Archive', 'InvoiceArchief');

Route::get('Print_invoice/{id}','InvoiceController@Print_invoice')->name('Print_invoice');

Route::post('delete_file', 'InvoceDetailController@destroy')->name('delete_file');
Route::post('update_file', 'InvoceDetailController@update')->name('update_file');

Route::get('/{page}', 'AdminController@index');