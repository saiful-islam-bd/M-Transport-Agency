@extends('admin.admin_dashboard')
@section('admin')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

    <div class="page-content">

        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">

            <div class="breadcrumb-title pe-3">Edit Vehicle Rental</div>

            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Edit Vehicle Rental</li>
                    </ol>
                </nav>
            </div>

            <div class="ms-auto"></div>

        </div>

        <div class="container">

            <div class="main-body">

                <div class="row">

                    <div class="col-lg-10">

                        <div class="card">

                            <div class="card-body">

                                <form id="myForm" method="post" action="{{ route('update.vehicleRental') }}"
                                    enctype="multipart/form-data">
                                    @csrf

                                    <input type="hidden" name="id" value="{{ $vehicleRentals->id }}">
                                    <input type="hidden" name="old_img" value="{{ $vehicleRentals->image }}">

                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Image</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="file" name="image" class="form-control"
                                                id="image" />
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0"> </h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <img id="showImage" src="{{ asset($vehicleRentals->image) }}"
                                                alt="Admin" style="width:100px; height: 100px;">
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Name</h6>
                                        </div>
                                        <div class="form-group col-sm-9 text-secondary">
                                            <input type="text" name="name" class="form-control"
                                                value="{{ $vehicleRentals->name }}" />
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Details</h6>
                                        </div>
                                        <div class="form-group col-sm-9 text-secondary">
                                            <textarea  rows="4" cols="50" name="details" class="form-control">{{ $vehicleRentals->details }}</textarea>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Rate</h6>
                                        </div>
                                        <div class="form-group col-sm-9 text-secondary">
                                            <input type="number" step="0" min="0"  name="rate" class="form-control"
                                                value="{{ $vehicleRentals->rate }}" />
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-3"></div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="submit" class="btn btn-primary px-4" value="Save Changes" />
                                        </div>
                                    </div>

                                </form>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>


    <script type="text/javascript">
        $(document).ready(function() {
            $('#image').change(function(e) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $('#showImage').attr('src', e.target.result);
                }
                reader.readAsDataURL(e.target.files['0']);
            });
        });
    </script>
@endsection
