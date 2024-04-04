@extends('admin.admin_dashboard')
@section('admin')
    <div class="page-content">

        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">

            <div class="breadcrumb-title pe-3">All Buy/Sell</div>

            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">All Buy/Sell</li>
                    </ol>
                </nav>
            </div>

            <div class="ms-auto">
                <div class="btn-group">
                    <a href="{{ route('add.buySell') }}" class="btn btn-primary">Add Buy/Sell</a>
                </div>
            </div>

        </div>

        <hr />

        <div class="card">

            <div class="card-body">

                <div class="table-responsive">

                    <table id="example" class="table table-striped table-bordered" style="width:100%">

                        <thead>
                            <tr>
                                <th>Sl</th>
                                <th>Car ID</th>
                                <th>Image</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Model No</th>
                                <th>Engine No</th>
                                <th>Chassis No</th>
                                <th>Horsepower</th>
                                <th>Mileage</th>
                                <th>Seating Capacity</th>
                                <th>Owner Name</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                            @foreach ($buySells as $key => $item)
                                <tr>
                                    <td> {{ $key + 1 }} </td>
                                    <td>{{ $item->id }}</td>
                                    <td> <img src="{{ asset($item->image) }}" style="width: 70px; height:40px;"> </td>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->price }}</td>
                                    <td>{{ $item->model_no }}</td>
                                    <td>{{ $item->engine_no }}</td>
                                    <td>{{ $item->chassis_no }}</td>
                                    <td>{{ $item->horsepower }}</td>
                                    <td>{{ $item->mileage }}</td>
                                    <td>{{ $item->seating_capacity }}</td>
                                    <td>{{ $item->owner_name }}</td>
                                    <td>
                                        <a href="{{ route('edit.buySell', $item->id) }}" class="btn btn-info">Edit</a>
                                        <a href="{{ route('delete.buySell', $item->id) }}" class="btn btn-danger"
                                            id="delete">Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>

                        <tfoot>
                            <tr>
                                <th>Sl</th>
                                <th>Car ID</th>
                                <th>Image</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Model No</th>
                                <th>Engine No</th>
                                <th>Chassis No</th>
                                <th>Horsepower</th>
                                <th>Mileage</th>
                                <th>Seating Capacity</th>
                                <th>Owner Name</th>
                                <th>Action</th>
                            </tr>
                        </tfoot>

                    </table>

                </div>

            </div>

        </div>

    </div>
@endsection
