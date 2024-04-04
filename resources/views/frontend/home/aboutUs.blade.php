@php
    $aboutUs = App\Models\AboutUs::orderBy('id', 'ASC')->get();
@endphp

<section class="ftco-section ftco-about">

    <div class="container">

        <div class="row no-gutters">

            @foreach ($aboutUs as $item)
                <div class="col-md-6 p-md-5 img img-2 d-flex justify-content-center align-items-center"
                    style="background-image: url({{ asset($item->image) }});">
                </div>

                <div class="col-md-6 wrap-about ftco-animate">

                    <div class="heading-section heading-section-white pl-md-5">

                        <span class="subheading">About us</span>

                        <h2 class="mb-4">{{ $item->title }}</h2>

                        <p>{!! $item->description !!}</p>

                        {{-- <a href="#" class="btn btn-primary py-3 px-4">Search Vehicle</a> --}}

                    </div>

                </div>
            @endforeach

        </div>

    </div>

</section>
