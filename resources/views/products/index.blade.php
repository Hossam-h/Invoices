@extends('layouts.master')
@section('css')
<link href="{{URL::asset('assets/plugins/datatable/css/dataTables.bootstrap4.min.css')}}" rel="stylesheet" />
<link href="{{URL::asset('assets/plugins/datatable/css/buttons.bootstrap4.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('assets/plugins/datatable/css/responsive.bootstrap4.min.css')}}" rel="stylesheet" />
<link href="{{URL::asset('assets/plugins/datatable/css/responsive.dataTables.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('assets/plugins/select2/css/select2.min.css')}}" rel="stylesheet">
@endsection
@section('page-header')
<!-- breadcrumb -->
<div class="breadcrumb-header justify-content-between">
    <div class="my-auto">
        <div class="d-flex">
            <h4 class="content-title mb-0 my-auto">Pages</h4>
        </div>
    </div>

</div>
<!-- breadcrumb -->
@endsection
@section('content')


@error('product_name')
<span class="alert alert-danger">{{$message}}</span>
@enderror


@error('description')
<span class="alert alert-danger">{{$message}}</span>
@enderror

@if (session()->has('Add'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>{{ session()->get('Add') }}</strong>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
@endif

@if (session()->has('delete'))
<div class="alert alert-danger alert-dismissible fade show" role="alert">
    <strong>{{ session()->get('delete') }}</strong>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
@endif

@if (session()->has('edit'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>{{ session()->get('edit') }}</strong>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
@endif

<!-- row -->
<div class="row">
    <div class="col-xl-12">
        <div class="card mg-b-20">
            <div class="card-header pb-0">
                <div class="d-flex justify-content-between">
                    <div class="col-sm-6 col-md-4 col-xl-3">
                        <a class="modal-effect btn btn-outline-primary btn-block" data-effect="effect-scale"
                            data-toggle="modal" href="#modaldemo8">اضافة منتج</a>
                    </div>

                    <i class="mdi mdi-dots-horizontal text-gray"></i>
                </div>
               
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="example" class="table key-buttons text-md-wrap">
                        <thead>
                            <tr>
                                <th class="border-bottom-0">#</th>
                                <th class="border-bottom-0">المنتج</th>
                                <th class="border-bottom-0">القسم</th>
                                <th class="border-bottom-0">ملاحظات</th>
                                <th class="border-bottom-0">العمليات</th>




                            </tr>
                        </thead>
                        <tbody>
                            <?php $i=0 ?>
                            @foreach ($products as $product)
                            <tr>
                                <td>{{$i++}}</td>
                                <td>{{$product->product_name}}</td>
                                <td>{{$product->section->section_name}}</td>
                                <td>{{$product->description}}</td>

                            
                                <td>
                                    <a data-effect="effect-scale" data-toggle="modal" href="#exampleModal2"
                                        data-id="{{$product->id}}" data-product_name="{{$product->product_name}}"
                                        data-description="{{$product->description}}"
                                        data-description="{{$product->section->section_name}}"
                                        class=" modal-effect btn-primary p-1">تعديل</a>

                                    <a data-effect="effect-scale" data-toggle="modal" href="#exampleModa9"
                                        data-id="{{$product->id}}" data-product_name="{{$product->product_name}}"
                                        data-description="{{$product->description}}"
                                        class=" modal-effect btn-danger p-1">حذف</a>

                                </td>
                            </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</div>



<!-- start add modal--->
<div class="modal" id="modaldemo8">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">

            <div class="modal-header">
                <h6 class="modal-title">اضافة منتج</h6><button aria-label="Close" class="close" data-dismiss="modal"
                    type="button"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form action="{{ route('products.store') }}" method="post">
                    {{ csrf_field() }}


                    <div class="form-group">
                        <label for="exampleInputEmail1">اسم المنتج</label>
                        <input type="text" class="form-control" id="product_name" name="product_name">
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">اسم القسم</label>
                        <select name="section_name" class="form-control" id="">
                            @foreach($sections as $section)
                            <option value="{{$section->id}}">{{$section->section_name}}</option>
                            @endforeach
                        </select>
                    </div>



                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">ملاحظات</label>
                        <textarea class="form-control" id="description" name="description" rows="3"></textarea>
                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success">تاكيد</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>
                    </div>
                </form>

            </div>

        </div>
    </div>
</div>
<!--end add modal-->

<!--edit medola-->
<div class="modal" id="exampleModal2">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">

            <div class="modal-header">
                <h6 class="modal-title">تعديل المنتج</h6><button aria-label="Close" class="close" data-dismiss="modal"
                    type="button"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form action="products\update" method="post" autocomplete="off">
                    {{ csrf_field() }}

                    {{ method_field('patch') }}


                    <input type="hidden" name="id" id="id" value="">

                    <div class="form-group">
                        <label for="exampleInputEmail1">اسم المنتج</label>
                        <input type="text" class="form-control" id="product_name" name="product_name">
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">اسم القسم</label>
                        <select name="section_name" class="form-control" id="">
                            @foreach($sections as $section)
                            <option value="{{$section->id}}">{{$section->section_name}}</option>
                            @endforeach
                        </select>
                    </div>


                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">ملاحظات</label>
                        <textarea class="form-control" id="description" name="description" rows="3"></textarea>
                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success">تاكيد</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>
                    </div>
                </form>

            </div>

        </div>
    </div>
</div>
<!-- end edit modal-->

<!--DELETE product-->
<div class="modal" id="exampleModa9">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">

            <div class="modal-header">
                <h6 class="modal-title alert alert-danger">هل تريد ان تحذف هذا المنتج  بالفعل</h6><button
                    aria-label="Close" class="close" data-dismiss="modal" type="button"><span
                        aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form action="products\destroy" method="post" autocomplete="off">
                    {{ csrf_field() }}

                    {{ method_field('delete') }}


                    <input type="hidden" name="id" id="id" value="">

                    <div class="form-group">
                        <label for="exampleInputEmail1">اسم المنتج</label>
                        <input type="text" class="form-control" id="product_name" name="product_name" disabled>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-danger">حذف</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>
                    </div>
                </form>

            </div>

        </div>
    </div>
</div>



<!--end delete-->
<!-- row closed -->
</div>
<!-- Container closed -->
</div>
<!-- main-content closed -->
@endsection
@section('js')
<script src="{{URL::asset('assets/plugins/datatable/js/jquery.dataTables.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/dataTables.dataTables.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/dataTables.responsive.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/responsive.dataTables.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/jquery.dataTables.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/dataTables.bootstrap4.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/dataTables.buttons.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/buttons.bootstrap4.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/jszip.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/pdfmake.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/vfs_fonts.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/buttons.html5.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/buttons.print.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/buttons.colVis.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/dataTables.responsive.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/responsive.bootstrap4.min.js')}}"></script>
<!--Internal  Datatable js -->
<script src="{{URL::asset('assets/js/table-data.js')}}"></script>
<script src="{{URL::asset('assets/js/modal.js')}}"></script>

<script>
$('#exampleModal2').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget)
    var id = button.data('id')
    var product_name = button.data('product_name')
    var description = button.data('description')
    var modal = $(this)
    modal.find('.modal-body #id').val(id);
    modal.find('.modal-body #product_name').val(product_name);
    modal.find('.modal-body #description').val(description);
})
</script>


<script>
$('#exampleModa9').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget)
    var id = button.data('id')
    var product_name = button.data('product_name')
    var modal = $(this)
    modal.find('.modal-body #id').val(id);
    modal.find('.modal-body #product_name').val(product_name);

})
</script>


@endsection