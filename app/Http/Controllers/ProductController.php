<?php

namespace App\Http\Controllers;

use App\Section;
use App\Product;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sections=Section::all();
        $products=Product::all();
        
        return \view('products.index',[
            'sections'=>$sections,
            'products'=>$products
            ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $validatedData = $request->validate([
            'product_name' => 'required|max:255',
            'description'=>'required'
        ],[

            'product_name.required' =>'يرجي ادخال اسم المنتج',
            'product_name.unique' =>'اسم المنتج مسجل مسبقا',
            'description.required'=>'يرجي ادخال الوصف'

        ]);
    
        Product::create([
                'product_name' => $request->product_name,
                'description' => $request->description,
                'section_id' => $request->section_name,
                

            ]);
            
            session()->flash('Add', 'تم اضافة القسم بنجاح ');
            return redirect()->route('products.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id=$request->id;
        
        $data=$request->all();
        $validatedData = $request->validate([
            'product_name' => 'required|max:255',
            'description'=>'required'
        
        ],[

            'product_name.required' =>'يرجي ادخال اسم المنتج',
            'product_name.unique' =>'اسم المنتج مسجل مسبقا',
            'description.required'=>'يرجي ادخال الوصف'

        ]);
    
            $row=Product::find($id);
            $row->update([
                'product_name'=>$request->product_name,
                'description'=>$request->description,
                'section_id'=>$request->section_name
            ]);
            session()->flash('edit', 'تم تعديل المنتج بنجاح ');
            return redirect()->route('products.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id=$request->id;
        Product::destroy($id);
        session()->flash('delete', 'تم حذف المنتج بنجاح ');
        return redirect()->route('products.index');
    }
}
