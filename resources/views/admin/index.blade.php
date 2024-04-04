@extends('admin.admin_dashboard')
@section('admin')
    @php
        $setting = App\Models\SiteSetting::find(1);
    @endphp

    <style>
        .custom_admin_index {
            margin-top: 7rem;
            font-size: 4rem;
        }

        @media only screen and (max-width: 600px) {
            .custom_admin_index {
                margin-top: 4rem;
                font-size: 2rem;
            }
        }
    </style>


    <div class="page-content">

        <div class="row">

            <div class="col-12 text-center">

                <h1 class="custom_admin_index">
                    Welcome <br>
                    To <br>
                    {{ $setting->logo_name }}'s Dashboard
                </h1>

            </div>

        </div>
        <!--end row-->


    </div>
@endsection
