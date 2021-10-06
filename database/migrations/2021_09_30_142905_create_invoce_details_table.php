<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInvoceDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('invoce_details', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('invoice_id');
            $table->string('invoice_number',50);
            $table->foreign('invoice_id')->references('id')->on('invoices')->onDelete('cascade');
            $table->string('product');
            $table->string('section');
            $table->Integer('value_status');
            $table->string('status', 50);
            $table->date('payment_date')->nullable();
            $table->text('note')->nullable();
            $table->string('user',200);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('invoce_details');
    }
}
