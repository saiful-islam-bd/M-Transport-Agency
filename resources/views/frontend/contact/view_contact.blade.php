@extends('frontend.master_dashboard')
@section('main')

@section('title')
    Contact || M Transport Agency
@endsection

@php
    $backgroundImage = App\Models\BackgroundImage::orderBy('id', 'ASC')
        ->where('id', '6')
        ->get();

    $siteSetting = App\Models\SiteSetting::orderBy('id', 'ASC')->get();
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


<section class="ftco-section contact-section">

    <div class="container">

        <div class="row d-flex mb-5 contact-info">

            <div class="col-md-4">

                <div class="row mb-5">

                    @foreach ($siteSetting as $item)
                        <div class="col-md-12">
                            <div class="border w-100 p-4 rounded mb-2 d-flex">
                                <div class="icon mr-3">
                                    <span class="icon-map-o"></span>
                                </div>
                                <p><span>Address:</span> {{ $item->address }}</p>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="border w-100 p-4 rounded mb-2 d-flex">
                                <div class="icon mr-3">
                                    <span class="icon-mobile-phone"></span>
                                </div>
                                <p><span>Phone:</span> <a href="tel://{{ $item->phone }}">{{ $item->phone }}</a></p>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="border w-100 p-4 rounded mb-2 d-flex">
                                <div class="icon mr-3">
                                    <span><i class="fa-brands fa-whatsapp"></i></span>
                                </div>
                                <p><span>Whatsapp:</span> <a
                                        href="tel://{{ $item->whatsapp }}">{{ $item->whatsapp }}</a></p>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="border w-100 p-4 rounded mb-2 d-flex">
                                <div class="icon mr-3">
                                    <span class="icon-mobile-phone"></span>
                                </div>
                                <p><span>Imo:</span> <a href="tel://{{ $item->imo }}">{{ $item->imo }}</a></p>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="border w-100 p-4 rounded mb-2 d-flex">
                                <div class="icon mr-3">
                                    <span class="icon-envelope-o"></span>
                                </div>
                                <p><span>Email:</span> <a href="mailto:{{ $item->email }}">{{ $item->email }}</a>
                                </p>
                            </div>
                        </div>
                    @endforeach

                </div>

            </div>


            <div class="col-md-8 block-9 mb-md-5">

                <form action="{{ route('store.message') }}" method="POST" class="bg-light p-5 contact-form"
                    style="padding-bottom: 35px !important;">

                    @csrf

                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Your Name" name="name" required>
                    </div>

                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Your Email" name="email" required>
                    </div>

                    <div class="form-group">
                        <input type="number" step="0" min="0" class="form-control" placeholder="Your Phone" name="phone" required>
                    </div>

                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Subject" name="subject" required>
                    </div>

                    <div class="form-group">
                        <textarea name="message" id="" cols="30" rows="5" class="form-control" placeholder="Message"
                            required></textarea>
                    </div>

                    <div class="form-group">
                        <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
                    </div>

                </form>

            </div>

        </div>


        {{-- <div class="row justify-content-center">
            <div class="col-md-12">
                <div id="map" class="bg-white">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d233667.4993029205!2d90.2548734701678!3d23.781067238615623!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8b087026b81%3A0x8fa563bbdd5904c2!2sDhaka!5e0!3m2!1sen!2sbd!4v1696245574532!5m2!1sen!2sbd"
                        width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div> --}}

    </div>

</section>



@endsection
