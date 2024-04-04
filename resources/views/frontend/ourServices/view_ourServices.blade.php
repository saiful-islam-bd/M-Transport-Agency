@extends('frontend.master_dashboard')
@section('main')

@section('title')
    Our Services || M Transport Agency
@endsection

@php
    $backgroundImage = App\Models\BackgroundImage::orderBy('id', 'ASC')
        ->where('id', '3')
        ->get();

    $services = App\Models\Services::orderBy('id', 'ASC')->get();
@endphp


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


<section class="ftco-section">

    <div class="container">

        <div class="row justify-content-center mb-5">

            <div class="col-md-7 text-center heading-section ftco-animate">

                <span class="subheading">Services</span>

                <h2 class="mb-3">Our Latest Services</h2>

            </div>

        </div>


        <div class="row">

            @foreach ($services as $item)
                <div class="col-md-3">

                    <div class="services services-2 w-100 text-center">

                        <div class="icon d-flex align-items-center justify-content-center">

                            <span>{!! $item->icon !!}</span>

                        </div>


                        <div class="text w-100">

                            <h3 class="heading mb-2">{{ $item->title }}</h3>

                            <p>{{ $item->paragraph }}</p>

                        </div>

                    </div>

                </div>
            @endforeach

        </div>

    </div>

</section>


@endsection
