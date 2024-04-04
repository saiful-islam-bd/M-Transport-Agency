<?php

use Illuminate\Support\Facades\Route;
use App\Http\Middleware\RedirectIfAuthenticated;
use App\Http\Controllers\AdminController;

// All Backend Controllers
use App\Http\Controllers\Backend\HomeBannerController;
use App\Http\Controllers\Backend\BackgroundImageController;
use App\Http\Controllers\Backend\AboutUsController;
use App\Http\Controllers\Backend\TestimonialController;
use App\Http\Controllers\Backend\CounterController;
use App\Http\Controllers\Backend\ServicesController;
use App\Http\Controllers\Backend\OurCommitmentController;
use App\Http\Controllers\Backend\VehicleRentalController;
use App\Http\Controllers\Backend\BuySellController;
use App\Http\Controllers\Backend\SiteSettingController;

// All Frontend Controllers
use App\Http\Controllers\Frontend\ContactController;
use App\Http\Controllers\Frontend\IndexController;
use App\Http\Controllers\Frontend\BookNowController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Index All Route
Route::controller(IndexController::class)->group(function () {
    Route::get('/', 'Index');
    Route::get('/about', 'About')->name('about');
    Route::get('/our/commitment', 'OurCommitment')->name('ourCommitment');
    Route::get('/our/services', 'OurServices')->name('ourServices');
    Route::get('/contact', 'Contact')->name('contact');
    Route::get('/vehicle/rental', 'VehicleRental')->name('vehicleRental');
    Route::get('/buy/sell', 'BuySell')->name('buySell');
    Route::get('/buy/sell/details/{id}/{slug}', 'BuySellDetails');
}); //End Route

// Contact Message All Route
Route::controller(ContactController::class)->group(function () {
    Route::post('/store/message', 'StoreMessage')->name('store.message');
    Route::get('/contact/message', 'ContactMessage')->name('contact.message');
    Route::get('/contact/message/{id}', 'DeleteContactMessage')->name('delete.contactMessage');
}); //End Route

// Book Now Message All Route
Route::controller(BookNowController::class)->group(function () {
    Route::post('/store/book/now/message', 'StoreBookNowMessage')->name('store.bookNowMessage');
    Route::get('/contact/book/now/message', 'BookNowMessage')->name('contact.bookNowMessage');
    Route::get('/contact/book/now/message/{id}', 'DeleteBookNowMessage')->name('delete.bookNowMessage');
}); //End Route

require __DIR__ . '/auth.php';

/// Start Admin Middleware
Route::middleware(['auth', 'role:admin'])->group(function () {

    // Admin Dashboard All Route
    Route::controller(AdminController::class)->group(function () {
        Route::get('/admin/dashboard', 'AdminDashboard')->name('admin.dashobard');
        Route::get('/admin/logout', 'AdminDestroy')->name('admin.logout');
        Route::get('/admin/profile', 'AdminProfile')->name('admin.profile');
        Route::post('/admin/profile/store', 'AdminProfileStore')->name('admin.profile.store');
        Route::get('/admin/change/password', 'AdminChangePassword')->name('admin.change.password');
        Route::post('/admin/update/password', 'AdminUpdatePassword')->name('update.password');
    }); //End Route

    // Home Banner All Route
    Route::controller(HomeBannerController::class)->group(function () {
        Route::get('/all/home/banner', 'AllHomeBanner')->name('all.homeBanner');
        Route::get('/add/home/banner', 'AddHomeBanner')->name('add.homeBanner');
        Route::post('/store/home/banner', 'StoreHomeBanner')->name('store.homeBanner');
        Route::get('/edit/home/banner/{id}', 'EditHomeBanner')->name('edit.homeBanner');
        Route::post('/update/home/banner', 'UpdateHomeBanner')->name('update.homeBanner');
        Route::get('/delete/home/banner/{id}', 'DeleteHomeBanner')->name('delete.homeBanner');
    }); //End Route

    // Background Image All Route
    Route::controller(BackgroundImageController::class)->group(function () {
        Route::get('/all/background/image', 'AllBackgroundImage')->name('all.backgroundImage');
        Route::get('/add/background/image', 'AddBackgroundImage')->name('add.backgroundImage');
        Route::post('/store/background/image', 'StoreBackgroundImage')->name('store.backgroundImage');
        Route::get('/edit/background/image/{id}', 'EditBackgroundImage')->name('edit.backgroundImage');
        Route::post('/update/background/image', 'UpdateBackgroundImage')->name('update.backgroundImage');
        Route::get('/delete/background/image/{id}', 'DeleteBackgroundImage')->name('delete.backgroundImage');
    }); //End Route

    // About All Route
    Route::controller(AboutUsController::class)->group(function () {
        Route::get('/all/about/us', 'AllAboutUs')->name('all.aboutUs');
        Route::get('/add/about/us', 'AddAboutUs')->name('add.aboutUs');
        Route::post('/store/about/us', 'StoreAboutUs')->name('store.aboutUs');
        Route::get('/edit/about/us/{id}', 'EditAboutUs')->name('edit.aboutUs');
        Route::post('/update/about/us', 'UpdateAboutUs')->name('update.aboutUs');
        Route::get('/delete/about/us/{id}', 'DeleteAboutUs')->name('delete.aboutUs');
    }); //End Route

    // Testimonial All Route
    Route::controller(TestimonialController::class)->group(function () {
        Route::get('/all/testimonial', 'AllTestimonial')->name('all.testimonial');
        Route::get('/add/testimonial', 'AddTestimonial')->name('add.testimonial');
        Route::post('/store/testimonial', 'StoreTestimonial')->name('store.testimonial');
        Route::get('/edit/testimonial/{id}', 'EditTestimonial')->name('edit.testimonial');
        Route::post('/update/testimonial', 'UpdateTestimonial')->name('update.testimonial');
        Route::get('/delete/testimonial/{id}', 'DeleteTestimonial')->name('delete.testimonial');
    }); //End Route

    // Counter All Route
    Route::controller(CounterController::class)->group(function () {
        Route::get('/all/counter', 'AllCounter')->name('all.counter');
        Route::get('/add/counter', 'AddCounter')->name('add.counter');
        Route::post('/store/counter', 'StoreCounter')->name('store.counter');
        Route::get('/edit/counter/{id}', 'EditCounter')->name('edit.counter');
        Route::post('/update/counter', 'UpdateCounter')->name('update.counter');
        Route::get('/delete/counter/{id}', 'DeleteCounter')->name('delete.counter');
    }); //End Route

    // Services All Route
    Route::controller(ServicesController::class)->group(function () {
        Route::get('/all/services', 'AllServices')->name('all.services');
        Route::get('/add/services', 'AddServices')->name('add.services');
        Route::post('/store/services', 'StoreServices')->name('store.services');
        Route::get('/edit/services/{id}', 'EditServices')->name('edit.services');
        Route::post('/update/services', 'UpdateServices')->name('update.services');
        Route::get('/delete/services/{id}', 'DeleteServices')->name('delete.services');
    }); //End Route

    // Our Commitment All Route
    Route::controller(OurCommitmentController::class)->group(function () {
        Route::get('/all/our/commitment', 'AllOurCommitment')->name('all.ourCommitment');
        Route::get('/add/our/commitment', 'AddOurCommitment')->name('add.ourCommitment');
        Route::post('/store/our/commitment', 'StoreOurCommitment')->name('store.ourCommitment');
        Route::get('/edit/our/commitment/{id}', 'EditOurCommitment')->name('edit.ourCommitment');
        Route::post('/update/our/commitment', 'UpdateOurCommitment')->name('update.ourCommitment');
        Route::get('/delete/our/commitment/{id}', 'DeleteOurCommitment')->name('delete.ourCommitment');
    }); //End Route

    // Vehicle Rental All Route
    Route::controller(VehicleRentalController::class)->group(function () {
        Route::get('/all/vehicle/rental', 'AllVehicleRental')->name('all.vehicleRental');
        Route::get('/add/vehicle/rental', 'AddVehicleRental')->name('add.vehicleRental');
        Route::post('/store/vehicle/rental', 'StoreVehicleRental')->name('store.vehicleRental');
        Route::get('/edit/vehicle/rental/{id}', 'EditVehicleRental')->name('edit.vehicleRental');
        Route::post('/update/vehicle/rental', 'UpdateVehicleRental')->name('update.vehicleRental');
        Route::get('/delete/vehicle/rental/{id}', 'DeleteVehicleRental')->name('delete.vehicleRental');
    }); //End Route

    // Buy/Sell All Route
    Route::controller(BuySellController::class)->group(function () {
        Route::get('/all/buy/sell', 'AllBuySell')->name('all.buySell');
        Route::get('/add/buy/sell', 'AddBuySell')->name('add.buySell');
        Route::post('/store/buy/sell', 'StoreBuySell')->name('store.buySell');
        Route::get('/edit/buy/sell/{id}', 'EditBuySell')->name('edit.buySell');
        Route::post('/update/buy/sell', 'UpdateBuySell')->name('update.buySell');
        Route::get('/delete/buy/sell/{id}', 'DeleteBuySell')->name('delete.buySell');
    }); //End Route

    // Site Setting All Route
    Route::controller(SiteSettingController::class)->group(function () {
        Route::get('/site/setting', 'SiteSetting')->name('site.setting');
        Route::post('/site/setting/update', 'SiteSettingUpdate')->name('site.setting.update');
        Route::get('/seo/setting', 'SeoSetting')->name('seo.setting');
        Route::post('/seo/setting/update', 'SeoSettingUpdate')->name('seo.setting.update');
    }); //End Route

}); /// End Admin Middleware

Route::get('/admin/login', [AdminController::class, 'AdminLogin'])->middleware(RedirectIfAuthenticated::class);
