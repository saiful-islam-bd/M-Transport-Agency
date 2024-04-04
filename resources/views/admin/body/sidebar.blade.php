<div class="sidebar-wrapper" data-simplebar="true">
    <div class="sidebar-header">
        <div>
            <img src="{{ asset('adminbackend/assets/images/logo-icon.png') }}" class="logo-icon" alt="logo icon">
        </div>
        <div>
            <h4 class="logo-text">Admin Panel</h4>
        </div>
        <div class="toggle-icon ms-auto"><i class='bx bx-arrow-to-left'></i>
        </div>
    </div>
    <!--navigation-->
    <ul class="metismenu" id="menu">

        <li>
            <a href="{{ route('admin.dashobard') }}">
                <div class="parent-icon"><i class='bx bx-cookie'></i>
                </div>
                <div class="menu-title">Dashboard</div>
            </a>
        </li>

        <li>
            <a href="{{ route('all.backgroundImage') }}">
                <div class="parent-icon"><i class='bx bx-home-circle'></i></div>
                <div class="menu-title">Background Images</div>
            </a>
        </li>

        <li>
            <a href="{{ route('all.homeBanner') }}">
                <div class="parent-icon"><i class='bx bx-home-circle'></i></div>
                <div class="menu-title">Home Banner</div>
            </a>
        </li>

        <li>
            <a href="{{ route('all.aboutUs') }}">
                <div class="parent-icon"><i class='bx bx-home-circle'></i></div>
                <div class="menu-title">About Us</div>
            </a>
        </li>

        <li>
            <a href="{{ route('all.services') }}">
                <div class="parent-icon"><i class='bx bx-home-circle'></i></div>
                <div class="menu-title">Services</div>
            </a>
        </li>

        <li>
            <a href="{{ route('all.testimonial') }}">
                <div class="parent-icon"><i class='bx bx-home-circle'></i></div>
                <div class="menu-title">Testimonial</div>
            </a>
        </li>

        <li>
            <a href="{{ route('all.counter') }}">
                <div class="parent-icon"><i class='bx bx-home-circle'></i></div>
                <div class="menu-title">Counter</div>
            </a>
        </li>

        <li>
            <a href="{{ route('all.ourCommitment') }}">
                <div class="parent-icon"><i class='bx bx-home-circle'></i></div>
                <div class="menu-title">Our Commitment</div>
            </a>
        </li>

        <li>
            <a href="{{ route('all.vehicleRental') }}">
                <div class="parent-icon"><i class='bx bx-home-circle'></i></div>
                <div class="menu-title">Vehicle Rental</div>
            </a>
        </li>

        <li>
            <a href="{{ route('all.buySell') }}">
                <div class="parent-icon"><i class='bx bx-home-circle'></i></div>
                <div class="menu-title">Buy/Sell</div>
            </a>
        </li>

        <li class="menu-label">Site and SEO</li>

        <li>
            <a href="{{ route('site.setting') }}">
                <div class="parent-icon"><i class='bx bx-cog'></i></div>
                <div class="menu-title">Site Setting</div>
            </a>
        </li>

        <li>
            <a href="{{ route('seo.setting') }}">
                <div class="parent-icon"><i class='bx bx-cog'></i></div>
                <div class="menu-title">SEO Setting</div>
            </a>
        </li>

        <li class="menu-label">Messages</li>

        <li>
            <a href="{{ route('contact.bookNowMessage') }}">
                <div class="parent-icon"><i class='bx bx-cog'></i></div>
                <div class="menu-title">Book Now</div>
            </a>
        </li>

        <li>
            <a href="{{ route('contact.message') }}">
                <div class="parent-icon"><i class='bx bx-cog'></i></div>
                <div class="menu-title">Contact Message</div>
            </a>
        </li>

    </ul>
    <!--end navigation-->
</div>
