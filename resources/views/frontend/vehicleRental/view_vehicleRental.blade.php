@extends('frontend.master_dashboard')
@section('main')
    @php
        $backgroundImage = App\Models\BackgroundImage::orderBy('id', 'ASC')
            ->where('id', '4')
            ->get();

        $vehicleRentals = App\Models\VehicleRental::orderBy('id', 'DESC')->get();
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


    <section class="ftco-section ftco-cart">

        <div class="container">

            <div class="row">

                <div class=" col-12 col-md-12 ftco-animate">

                    <div>

                        <table class="table">

                            <thead class="thead-primary">


                                <tr class="text-center">
                                    <th class="bg-dark heading">Vehicle Image</th>
                                    <th class="bg-dark heading">Vehicle Name</th>
                                    <th class="bg-dark heading">Vehicle Details</th>
                                    <th class="bg-dark heading">Per Day Rate</th>
                                </tr>

                            </thead>

                            <tbody>
                                @foreach ($vehicleRentals as $item)
                                    <tr class="">

                                        <td class="car-image">
                                            <div class="img"
                                                style=" height: 150px; width: 250px; background-image:url({{ asset($item->image) }}">
                                            </div>
                                        </td>

                                        <td class="product-name text-center">
                                            <h3 style="">{{ $item->name }}</h3>
                                        </td>

                                        <td class="product-name text-center">
                                            <h3 style="">{!! $item->details !!}</h3>
                                        </td>

                                        <td class="price">
                                            <div>
                                                <h3>
                                                    <span class="num"><small class="currency">৳
                                                        </small>{{ $item->rate }}</span>
                                                </h3>
                                            </div>
                                        </td>

                                    </tr>
                                @endforeach

                            </tbody>

                        </table>

                    </div>

                </div>

            </div>

        </div>

    </section>
@endsection
