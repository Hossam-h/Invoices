<?php
namespace App;

class Cart{
    public $item=array();
    public function insert($item){
       $this->$item[]=$item;
    }

    public function getcount(){
        return count($this->item);
    }
}