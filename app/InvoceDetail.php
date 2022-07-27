<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InvoceDetail extends Model
{
    // model invice
    protected $fillable = [
        'invoice_id',
        'invoice_number',
        'product',
        'section',
        'status',
        'Value_Status',
        'note',
        'user',
        'Payment_Date',
    ];
    public function invoice()
    {
    return $this->belongsTo(Invoice::class);
    }
 

}
