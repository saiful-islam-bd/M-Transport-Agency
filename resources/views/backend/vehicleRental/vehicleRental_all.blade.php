@extends('admin.admin_dashboard')
@section('admin')
    <div class="page-content">

        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">

            <div class="breadcrumb-title pe-3">All Vehicle Rental</div>

            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">All Vehicle Rental</li>
                    </ol>
                </nav>
            </div>

            <div class="ms-auto">
                <div class="btn-group">
                    <a href="{{ route('add.vehicleRental') }}" class="btn btn-primary">Add Vehicle Rental</a>
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
                                <th>Image</th>
                                <th>Name</th>
                                <th>Details</th>
                                <th>Rate</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                            @foreach ($vehicleRentals as $key => $item)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td><img src="{{ asset($item->image) }}" style="width: 70px; height:40px;"></td>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->details }}</td>
                                    <td>{{ $item->rate }}</td>
                                    <td>
                                        <a href="{{ route('edit.vehicleRental', $item->id) }}" class="btn btn-info">Edit</a>
                                        <a href="{{ route('delete.vehicleRental', $item->id) }}" class="btn btn-danger"
                                            id="delete">Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>

                        <tfoot>
                            <tr>
                                <th>Sl</th>
                                <th>Image</th>
                                <th>Name</th>
                                <th>Details</th>
                                <th>Rate</th>
                                <th>Action</th>
                            </tr>
                        </tfoot>

                    </table>

                </div>

            </div>

        </div>

    </div>
@endsection
