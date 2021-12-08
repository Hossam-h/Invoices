<?php

namespace Tests\Unit;

use PHPUnit\Framework\TestCase;

use App\Cart;
class CartTest extends TestCase
{
    public  $cart;
    /**
     * A basic unit test example.
     *
     * @return void
     */
    /** 
     * @test 
     * */
    public function Add_item()
    {

        

        $cart = new Cart;

        $item = array(
            'id' => 'sku_123ABC',
            'qty' => 1,
            'price' => 39.95,
            'name' => 'T-Shirt',
            'options' => array('Size' => 'L', 'Color' => 'Red')
        );

        $cart->insert($item);

         $this->cart = $cart;

        $this->assertEquals(1,$cart->getcount());


    }
}
