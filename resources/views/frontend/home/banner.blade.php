@php
    $homeBanner = App\Models\HomeBanner::orderBy('id', 'ASC')->get();
@endphp

@foreach ($homeBanner as $item)
<div class="hero-wrap ftco-degree-bg" style="background-image: url({{ asset($item->background_image) }});" data-stellar-background-ratio="0.5">

    <div class="overlay"></div>

    <div class="container">

        <div class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">

            <div class="col-lg-8 ftco-animate">

                <div class="text w-100 text-center mb-md-5 pb-md-5">

                    <h1 class="mb-4">{{ $item->title }}</h1>

                    <p style="font-size: 17px;">{{ $item->paragraph }}</p>

                </div>

            </div>

        </div>

    </div>

</div>
@endforeach
