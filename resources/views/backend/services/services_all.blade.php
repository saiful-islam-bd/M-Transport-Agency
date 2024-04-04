@extends('admin.admin_dashboard')
@section('admin')
    <div class="page-content">

        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">

            <div class="breadcrumb-title pe-3">All Services</div>

            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">All Services</li>
                    </ol>
                </nav>
            </div>

            <div class="ms-auto">
                <div class="btn-group">
                    <a href="{{ route('add.services') }}" class="btn btn-primary">Add Services</a>
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
                                <th>Icon</th>
                                <th>Title</th>
                                <th>Paragraph</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                            @foreach ($services as $key => $item)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td><span style="font-size: 22px;">{!!  $item->icon  !!}</span></td>
                                    <td>{{ $item->title }}</td>
                                    <td>{{ $item->paragraph }}</td>
                                    <td>
                                        <a href="{{ route('edit.services', $item->id) }}" class="btn btn-info">Edit</a>
                                        <a href="{{ route('delete.services', $item->id) }}" class="btn btn-danger"
                                            id="delete">Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>

                        <tfoot>
                            <tr>
                                <th>Sl</th>
                                <th>Icon</th>
                                <th>Title</th>
                                <th>Paragraph</th>
                                <th>Action</th>
                            </tr>
                        </tfoot>

                    </table>

                </div>

            </div>

        </div>

    </div>
@endsection
