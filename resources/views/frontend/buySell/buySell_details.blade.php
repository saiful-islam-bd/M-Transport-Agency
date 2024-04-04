@extends('frontend.master_dashboard')
@section('main')
    @php
        $backgroundImage = App\Models\BackgroundImage::orderBy('id', 'ASC')
            ->where('id', '7')
            ->get();
    @endphp

    @foreach ($backgroundImage as $item)
        @section('title')
            {{ $item->title }} || M Transport Agency
        @endsection
    @endforeach


    <style>
        .hero-wrap.hero-wrap-2 {
            background-position: center !important;
        }
    </style>
    @foreach ($backgroundImage as $item)
        <section class="hero-wrap hero-wrap-2 js-fullheight"
            style="background-image: url({{ asset($item->background_image) }}); background-position: center !important;"
            data-stellar-background-ratio="0.5">

            <div class="overlay"></div>

            <div class="container">

                <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">

                    <div class="col-md-9 ftco-animate pb-5">

                        <p class="breadcrumbs">
                            <span class="mr-2">
                                <a href="{{ url('/') }}">
                                    Home
                                    <i class="ion-ios-arrow-forward"></i>
                                </a>
                            </span>
                            <span>
                                {{ $item->title }}
                                <i class="ion-ios-arrow-forward"></i>
                            </span>
                        </p>

                        <h1 class="mb-3 bread">{{ $item->title }}</h1>

                    </div>

                </div>

            </div>

        </section>
    @endforeach


    <style>
        @media only screen and (max-width: 600px) {
            .divs {
                padding-left: 0px
            }
        }

        .divs {
            padding-left: 70px
        }
    </style>
    <section class=" contact-section container">
        <h1 class="py-5  text-center">Car Details</h1>
        <div class=" row">
            <div class=" mb-5  col-md-6 contact-info">
                <img src="{{ asset($buySellDetails->image) }}" alt="" class="w-100">


            </div>


            <div class="col-md-6 ps-md-5 divs">
                <h2 class="">{{ $buySellDetails->name }} <span style="font-size: 20px;">(TK
                        {{ $buySellDetails->price }})</span></h2>

                <div class="d-flex justify align-items-center  gap-2">
                    <p class="me-5" style="font-weight: 200;">Model No </p>
                    <p class="me-5 px-1" style="font-weight: 200;">: </p>
                    <p class="ms-5" style="font-weight: 600;">{{ $buySellDetails->model_no }}</p>

                </div>
                <div class="d-flex justify align-items-center  gap-2">
                    <p class="me-5" style="font-weight: 200;">Engine No </p>
                    <p class="me-5 px-1" style="font-weight: 200;">: </p>
                    <p class="ms-5" style="font-weight: 600;">{{ $buySellDetails->engine_no }}</p>

                </div>

                <div class="d-flex justify align-items-center  gap-2">
                    <p class="me-5" style="font-weight: 200;">Chassis No </p>
                    <p class="me-5 px-1" style="font-weight: 200;">: </p>
                    <p class="ms-5" style="font-weight: 600;">{{ $buySellDetails->chassis_no }}</p>

                </div>
                <div class="d-flex justify align-items-center  gap-2">
                    <p class="me-5" style="font-weight: 200;">HorsePower </p>
                    <p class="me-5 px-1" style="font-weight: 200;">: </p>
                    <p class="ms-5" style="font-weight: 600;">{{ $buySellDetails->horsepower }}</p>

                </div>
                <div class="d-flex justify align-items-center  gap-2">
                    <p class="me-5" style="font-weight: 200;">Mileage </p>
                    <p class="me-5 px-1" style="font-weight: 200;">: </p>
                    <p class="ms-5" style="font-weight: 600;">{{ $buySellDetails->mileage }}</p>

                </div>
                <div class="d-flex justify align-items-center  gap-2">
                    <p class="me-5" style="font-weight: 200;">Seating Capacity </p>
                    <p class="me-5 px-1" style="font-weight: 200;">: </p>
                    <p class="ms-5" style="font-weight: 600;">{{ $buySellDetails->seating_capacity }}</p>

                </div>
                <div class="d-flex justify align-items-center  gap-2">
                    <p class="me-5" style="font-weight: 200;">Owner Name </p>
                    <p class="me-5 px-1" style="font-weight: 200;">: </p>
                    <p class="ms-5" style="font-weight: 600;">{{ $buySellDetails->owner_name }}</p>

                </div>


            </div>


            <style>
                .custom_book_now_form {
                    padding-left: 180px !important;
                    padding-right: 180px !important;
                }

                @media only screen and (max-width: 600px) {
                    .custom_book_now_form {
                        padding-left: 0 !important;
                        padding-right: 0 !important;
                    }
                }
            </style>

            <div class="col-md-12 block-9 mb-md-5 custom_book_now_form">

                <form action="{{ route('store.bookNowMessage') }}" method="POST" class="bg-light p-5 contact-form"
                    style="padding-bottom: 35px !important;">

                    @csrf

                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12 text-center">
                            <h2>Book Now Form</h2>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Your Name" name="car_id"
                                    value="{{ $buySellDetails->id }}" readonly>
                            </div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Your Name" name="car_name"
                                    value="{{ $buySellDetails->name }}" readonly>
                            </div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Your Name" name="car_model"
                                    value="{{ $buySellDetails->model_no }}" readonly>
                            </div>
                        </div>

                        <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="User Name" name="user_name"
                                    required>
                            </div>
                        </div>

                        <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <input type="email" class="form-control" placeholder="User Email" name="user_email"
                                    required>
                            </div>
                        </div>

                        <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <input type="number" step="0" min="0" class="form-control" placeholder="User Phone" name="user_phone"
                                    required>
                            </div>
                        </div>

                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="form-group">
                                <textarea name="user_address" id="" cols="30" rows="5" class="form-control"
                                    placeholder="User Address" required></textarea>
                            </div>
                        </div>

                    </div>

                    <div class="col-12 col-sm-12 col-md-12 col-lg-12 text-center">
                        <div class="form-group">
                            <input type="submit" value="Book Now" class="btn btn-primary py-3 px-5">
                        </div>
                    </div>

                </form>

            </div>

        </div>


    </section>
@endsection
