<?php

namespace Tests\Feature;


use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Product;

class UserTest extends TestCase
{
    use RefreshDatabase;
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function getProduct()
    {

        Product::insert([
         'section_name'=>'riad',
         'description'=>'very dgood',
         'Created_by'=>'hoss'
        ]);
        $response = $this->get('/products');

        $response->assertStatus(200);
    }
}
