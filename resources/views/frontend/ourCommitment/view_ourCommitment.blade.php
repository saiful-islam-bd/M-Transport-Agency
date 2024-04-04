@extends('frontend.master_dashboard')
@section('main')

@section('title')
    Our Commitment || M Transport Agency
@endsection

@php
    $backgroundImage = App\Models\BackgroundImage::orderBy('id', 'ASC')
        ->where('id', '2')
        ->get();

    $ourCommitment = App\Models\OurCommitment::orderBy('id', 'ASC')->get();
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




<section class="ftco-section ftco-about">

    <div class="container">

        <div class="row no-gutters">

            @foreach ($ourCommitment as $item)
                <div class="col-md-6 p-md-5 img img-2 d-flex justify-content-center align-items-center"
                    style="background-image: url({{ asset($item->image) }});">
                </div>

                <div class="col-md-6 wrap-about ftco-animate">

                    <div class="heading-section heading-section-white pl-md-5">

                        <span class="subheading">Our Commitment</span>

                        <h2 class="mb-4">{{ $item->title }}</h2>

                        <p>{!! $item->description !!}</p>

                        {{-- <a href="#" class="btn btn-primary py-3 px-4">Search Vehicle</a> --}}

                    </div>

                </div>
            @endforeach

        </div>

    </div>

</section>


@endsection
