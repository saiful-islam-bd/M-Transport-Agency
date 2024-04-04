@extends('frontend.master_dashboard')
@section('main')

@section('title')
    About || M Transport Agency
@endsection

@php
    $backgroundImage = App\Models\BackgroundImage::orderBy('id', 'ASC')
        ->where('id', '1')
        ->get();
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




@include('frontend.home.aboutUs')


@include('frontend.home.testimonial')


@include('frontend.home.counter')



@endsection
