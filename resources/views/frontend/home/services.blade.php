@php
    $services = App\Models\Services::orderBy('id', 'ASC')
        ->limit(4)
        ->get();
@endphp

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
