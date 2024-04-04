@php
    $counter = App\Models\Counter::orderBy('id', 'ASC')->get();
@endphp


<section class="ftco-counter ftco-section img bg-light" id="section-counter">

    <div class="overlay"></div>

    <div class="container">

        <div class="row">

            @foreach ($counter as $item)
                <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">

                    <div class="block-18">

                        <div class="text text-border d-flex align-items-center">

                            <strong class="number" data-number="{{ $item->number }}">0</strong>

                            <span>{{ $item->title }}</span>

                        </div>

                    </div>

                </div>
            @endforeach

        </div>

    </div>

</section>
