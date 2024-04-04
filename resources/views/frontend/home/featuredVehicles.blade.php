@php
    $vehicleRental = App\Models\VehicleRental::orderBy('id', 'DESC')->get();
@endphp

<section class="ftco-section ftco-no-pt bg-light">

    <div class="container">

        <div class="row justify-content-center">

            <div class="col-md-12 heading-section text-center ftco-animate mb-5">
                <span class="subheading">What we offer</span>
                <h2 class="mb-2">Feeatured Vehicles</h2>
            </div>

        </div>


        <div class="row">

            <div class="col-md-12">

                <div class="carousel-car owl-carousel">

                    @foreach ($vehicleRental as $item)

                    <div class="item">

                        <div class="car-wrap rounded ftco-animate">

                            <div class="img rounded d-flex align-items-end" style="background-image: url({{ asset($item->image) }}"></div>

                            <div class="text">

                                <h2 class="mb-0"><a href="#">{{ $item->name }}</a></h2>

                                <div class="d-flex mb-3">
                                    <p class="price ml-auto">৳ {{ $item->rate }} <span>/day</span></p>
                                </div>

                            </div>
                        </div>
                    </div>
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</section>
