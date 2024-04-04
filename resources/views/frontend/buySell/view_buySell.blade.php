@extends('frontend.master_dashboard')
@section('main')
    @php
        $backgroundImage = App\Models\BackgroundImage::orderBy('id', 'ASC')
            ->where('id', '5')
            ->get();

        $buySells = App\Models\BuySell::orderBy('id', 'ASC')->get();
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


    <section class="ftco-section bg-light">

        <div class="container">

            <div class="row">

                @foreach ($buySells as $item)

                    <div class="col-md-4">

                        <div class="car-wrap rounded ftco-animate">

                            <div class="img rounded d-flex align-items-end" style="background-image: url({{ asset($item->image) }});"></div>

                            <div class="text">

                                <h2 class="mb-0">
                                    <a href="{{ url('buy/sell/details/' . $item->id . '/' . $item->slug) }}">{{ $item->name }}</a>
                                </h2>

                                <div class="d-flex mb-3">
                                    <p class="price ml-auto" style="float:left">BDT {{ $item->price }}<span></span></p>
                                </div>

                                <p class="d-flex mb-0 d-block">
                                    <a href="{{ url('buy/sell/details/' . $item->id . '/' . $item->slug) }}" class="btn btn-secondary py-2 ml-1" style="width: 100%;">Details</a>
                                </p>

                            </div>

                        </div>

                    </div>

                @endforeach

            </div>

            <div class="row mt-5"></div>

        </div>

    </section>
@endsection
