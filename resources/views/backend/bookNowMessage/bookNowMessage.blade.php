@extends('admin.admin_dashboard')
@section('admin')
    <div class="page-content">

        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">

            <div class="breadcrumb-title pe-3">All Contact Messages</div>

            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">All Contact Messages</li>
                    </ol>
                </nav>
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
                                <th>Car Name</th>
                                <th>Car Model</th>
                                <th>User Name</th>
                                <th>User Email</th>
                                <th>User Phone</th>
                                <th>User Address</th>
                                <th>Date</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                            @foreach ($bookNowMessages as $key => $item)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td>{{ $item->car_id }}</td>
                                    <td>{{ $item->car_name }}</td>
                                    <td>{{ $item->car_model }}</td>
                                    <td>{{ $item->user_name }}</td>
                                    <td>{{ $item->user_email }}</td>
                                    <td>{{ $item->user_phone }}</td>
                                    <td>{{ $item->user_address }}</td>
                                    <td>{{ Carbon\Carbon::parse($item->created_at)->diffForHumans() }}</td>
                                    <td>
                                        <a href="{{ route('delete.contactMessage', $item->id) }}" class="btn btn-danger"
                                            id="delete">Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>

                        <tfoot>
                            <tr>
                                <th>Sl</th>
                                <th>Car ID</th>
                                <th>Car Name</th>
                                <th>Car Model</th>
                                <th>User Name</th>
                                <th>User Email</th>
                                <th>User Phone</th>
                                <th>User Address</th>
                                <th>Date</th>
                                <th>Action</th>
                            </tr>
                        </tfoot>

                    </table>

                </div>

            </div>

        </div>

    </div>
@endsection
