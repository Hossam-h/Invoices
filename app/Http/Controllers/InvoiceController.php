<?php

namespace App\Http\Controllers;


use App\Invoice;
use App\Section;
use App\Product;
use App\User;
use App\InvoceDetail;
use App\InvoiceAttachment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Notifications\InvoiceNotification;
use Illuminate\Support\Facades\Notification;
use App\Exports\InvoiceExport;
use Maatwebsite\Excel\Facades\Excel;


class InvoiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $invoices=Invoice::all();
        
        return view('invoices.invoices' ,['invoices'=>$invoices]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $products=Product::all();
        $sections=Section::all();
        return view('invoices.add_invoice', 
        [
            'sections'=>$sections,
            'products'=>$products
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
     $request->validate([
        "invoice_number" => "required",
        "invoice_Date" => "required",
        "Due_date" => "required",
        "Section" => "required",
        "product" => "required",
        "Amount_collection" => "required",
        "Amount_Commission" => "required",
        "Discount" => "required",
        "Rate_VAT" => "required",
        "Value_VAT" => "required",
        "Total" => "required",
        "note" => "required",
      
     ]);
        
        Invoice::create([
                'invoice_number' => $request->invoice_number,
                'invoice_Date' => $request->invoice_Date,
                'Due_date' => $request->Due_date,
                'product' => $request->product,
                'section_id' => $request->Section,
                'Amount_collection' => $request->Amount_collection,
                'Amount_Commission' => $request->Amount_Commission,
                'Discount' => $request->Discount,
                'Value_VAT' => $request->Value_VAT,
                'Rate_VAT' => $request->Rate_VAT,
                'Total' => $request->Total,
                'Status' => 'غير مدفوعة',
                'Value_Status' => 2,
                'note' => $request->note,
            ]);

           $invoice_id=Invoice::latest()->first()->id;
           InvoceDetail::create([
               'invoice_id'=>$invoice_id,
               'invoice_number' => $request->invoice_number,
               'product' => $request->product,
               'Value_Status' => 2,
               'status' => 'غير مدفوعة',
               'section' => $request->Section,
               'note' => $request->note,
               'user'=>Auth::user()->name
           ]);

if($request->hasFile('pic')){
  
           $this->validate($request, [

            'pic' => 'mimes:pdf,jpeg,png,jpg',
    
            ], [
                'pic.mimes' => 'صيغة المرفق يجب ان تكون   pdf, jpeg , png , jpg',
            ]);
                  
            $image = $request->file('pic');
    
            $file_name = $image->getClientOriginalName();
    
            $attachments =  new InvoiceAttachment();
            $attachments->file_name = $file_name;
            $attachments->invoice_number = $request->invoice_number;
            $attachments->invoice_id = $invoice_id;
            $attachments->Created_by = Auth::user()->name;
            $attachments->save();
               
            // move pic
            $imageName = $request->pic->getClientOriginalName();
            $image->move(public_path('Attachments/'. $request->invoice_number), $imageName);
            
        }
       
            $user=User::first();
    
            $user->notify(new InvoiceNotification($invoice_id));
             //Notification::send($user,new InvoiceNotification($invoice_id));
            session()->flash('Add', 'تم اضافة المرفق بنجاح');
            return back();
    


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, $id)
    {
        $invoices=Invoice::find($id);

        return view('invoices.status_update', compact('invoices'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $invoices=Invoice::find($id);
      $sections=Section::all();
    return view('invoices.edit',['invoices'=>$invoices,'sections'=>$sections]);

        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {

        $request->validate([
            "invoice_number" => "required",
            "invoice_Date" => "required",
            "Due_date" => "required",
            "Section" => "required",
            "product" => "required",
            "Amount_collection" => "required",
            "Amount_Commission" => "required",
            "Discount" => "required",
            "Rate_VAT" => "required",
            "Value_VAT" => "required",
            "Total" => "required",
            "note" => "required",
          
         ]);
        
        $invoices = Invoice::findOrFail($request->invoice_id);
        $invoices->update([
            'invoice_number' => $request->invoice_number,
            'invoice_Date' => $request->invoice_Date,
            'Due_date' => $request->Due_date,
            'product' => $request->product,
            'section_id' => $request->Section,
            'Amount_collection' => $request->Amount_collection,
            'Amount_Commission' => $request->Amount_Commission,
            'Discount' => $request->Discount,
            'Value_VAT' => $request->Value_VAT,
            'Rate_VAT' => $request->Rate_VAT,
            'Total' => $request->Total,
            'note' => $request->note,
        ]);
        
        session()->flash('edit', 'تم تعديل الفاتورة بنجاح');
        return back();

    }

    //download file
    

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id = $request->invoice_id;

         $invoices = Invoice::find($id);
          $Details = InvoiceAttachment::where('invoice_id', $id)->first();
          
         //to delete by archief

        
         
         $id_page =$request->id_page;
        
        if ($id_page != 2) {
            
            if (!empty($Details->invoice_number)) {

                Storage::disk('public_uploads')->deleteDirectory($Details->invoice_number);
            }
            
        $invoices->forceDelete();
        session()->flash('delete_invoice');
        return redirect('/invoices');

        }

        else {

            $invoices->delete();
            session()->flash('archive_invoice');
            return redirect('/Archive');
        }


    }
    public function getProduct($id){
       
        $products=DB::table('products')->where('section_id',$id)->pluck('product_name');

        return \json_encode($products);
    }


    public function Status_Update($id, Request $request)
    {
        $invoices = Invoice::findOrFail($id);

        if ($request->Status === 'مدفوعة') {

            $invoices->update([
                'Value_Status' => 1,
                'Status' => $request->Status,
                'Payment_Date' => $request->Payment_Date,
            ]);

            InvoceDetail::create([
                'invoice_id' => $request->invoice_id,
                'invoice_number' => $request->invoice_number,
                'product' => $request->product,
                'section' => $request->Section,
                'status' => $request->Status,
                'Value_Status' => 1,
                'note' => $request->note,
                'Payment_Date' => $request->Payment_Date,
                'user' => (Auth::user()->name),
            ]);
        }

        else {
            $invoices->update([
                'Value_Status' => 3,
                'Status' => $request->Status,
                'Payment_Date' => $request->Payment_Date,
            ]);
            InvoceDetail::create([
                'invoice_id' => $request->invoice_id,
                'invoice_number' => $request->invoice_number,
                'product' => $request->product,
                'section' => $request->Section,
                'status' => $request->Status,
                'Value_Status' => 3,
                'note' => $request->note,
                'Payment_Date' => $request->Payment_Date,
                'user' => (Auth::user()->name),
            ]);
        }
        session()->flash('Status_Update');
        return redirect('/invoices');

    }

    public function Invoice_Paid()
    {
        
        $invoices = Invoice::where('Value_Status', 1)->get();
        return view('invoices.paid',compact('invoices'));
    }

    public function Invoice_unPaid()
    {
        $invoices = Invoice::where('Value_Status',2)->get();
        return view('invoices.unPaid',compact('invoices'));
    }

    public function Invoice_Partial()
    {
        $invoices = Invoice::where('Value_Status',3)->get();
        return view('invoices.partial',compact('invoices'));
    }

    public function Print_invoice($id)
    {
        $invoices = Invoice::find( $id);
        return view('invoices.print_invoice',compact('invoices'));
    }

    //for exceport to excel
    public function export() 
    {
        //dd(1);
        return Excel::download(new InvoiceExport, 'Invoice.xlsx');
    }
   

}
