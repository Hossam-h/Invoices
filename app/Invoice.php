<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Invoice extends Model
{
    use SoftDeletes;
    protected $fillable = [
        'invoice_number',
        'invoice_Date',
        'Due_date',
        'product',
        'section_id',
        'Amount_collection',
        'Amount_Commission',
        'Discount',
        'Value_VAT',
        'Rate_VAT',
        'Total',
        'Status',
        'Value_Status',
        'note',
        'Payment_Date',
    ];

    public function section()
    {
    return $this->belongsTo(Section::class);
    }

    //Detail
    public function invoiceDetail()
    {
    return $this->hasMany(InvoceDetail::class);
    }

    //Attach
    public function Attachment()
    {     
    return $this->hasMany(InvoiceAttachment::class);
    }
 
}
