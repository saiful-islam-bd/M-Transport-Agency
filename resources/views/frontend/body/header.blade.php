<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">

    <div class="container" style="max-width: 1230px;">

        <a class="navbar-brand" href="{{ url('/') }}">M Transport Agency</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
            aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">

            <ul class="navbar-nav ml-auto">

                <li class="nav-item">
                    <a href="{{ url('/') }}" class="nav-link">Home</a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('about') }}" class="nav-link">About</a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('ourCommitment') }}" class="nav-link">Our Commitment</a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('ourServices') }}" class="nav-link">Our Services</a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('vehicleRental') }}" class="nav-link">Vehicle Rental</a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('buySell') }}" class="nav-link">Buy/Sell</a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('contact') }}" class="nav-link">Contact</a>
                </li>



                <li class="nav-item">
                    <a href="#!" class="nav-link"><?php echo date('d-m-Y'); ?></a>
                </li>

            </ul>

        </div>

    </div>

</nav>
