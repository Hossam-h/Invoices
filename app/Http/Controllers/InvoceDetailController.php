<?php

namespace App\Http\Controllers;

use App\InvoceDetail;
use App\Invoice;
use App\InvoiceAttachment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Notifications\InvoiceNotification;
use \App\Notifications\Addinvoice;
use Illuminate\Support\Facades\Notification;
use Illuminate\Notifications\Notifiable;

class InvoceDetailController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\InvoceDetail  $invoceDetail
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

      
            // $userUnreadNotification= auth()->user()->unreadNotifications->first()->data['id'];;
        
            // if($userUnreadNotification) {
            //     $userUnreadNotification->notify();
                
            // }
    
        
    
        

        $invoices = Invoice::where('id',$id)->first();
    
        $details  = InvoceDetail::where('invoice_id',$id)->get();
        $attachments  = InvoiceAttachment::where('invoice_id',$id)->get();

        
        return view('invoices.invoice_details',compact('invoices','details','attachments'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\InvoceDetail  $invoceDetail
     * @return \Illuminate\Http\Response
     */
    public function edit(InvoceDetail $invoceDetail)
    {
        
    }

    

   
    //open file
    


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\InvoceDetail  $invoceDetail
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, InvoceDetail $invoceDetail)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\InvoceDetail  $invoceDetail
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {

       $id =$request->id_file;       
       InvoiceAttachment::destroy($id);
       Storage::disk('public_uploads')->delete($request->invoice_number.'/'.$request->file_name);

       
\session()->flash('delete','تم حذف المرفق بنجاح');
       return \back();
    }


    public function get_file($invoice_number,$file_name)

    {
        $contents= Storage::disk('public_uploads')->getDriver()->getAdapter()->applyPathPrefix($invoice_number.'/'.$file_name);
        return response()->download($contents);
    }


    public function open_file($invoice_number,$file_name){
    
        $files = Storage::disk('public_uploads')->getDriver()->getAdapter()->applyPathPrefix($invoice_number.'\\'.$file_name);
        return response()->file($files);
    }
}
