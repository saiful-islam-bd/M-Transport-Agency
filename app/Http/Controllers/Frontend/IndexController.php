<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\BuySell;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\MultiImg;
use App\Models\Category;
use App\Models\User;
use App\Models\SubCategory;

class IndexController extends Controller
{
    public function Index()
    {
        return view('frontend.index');
    } // End Method

    public function About()
    {
        return view('frontend.about.view_about');
    } // End Method

    public function OurCommitment()
    {
        return view('frontend.ourCommitment.view_ourCommitment');
    } // End Method

    public function OurServices()
    {
        return view('frontend.ourServices.view_ourServices');
    } // End Method

    public function Contact()
    {
        return view('frontend.contact.view_contact');
    } // End Method

    public function VehicleRental()
    {
        return view('frontend.vehicleRental.view_vehicleRental');
    } // End Method

    public function BuySell()
    {
        return view('frontend.buySell.view_buySell');
    } // End Method

    public function BuySellDetails($id, $slug)
    {
        $buySellDetails = BuySell::findOrFail($id);
        return view('frontend.buySell.buySell_details', compact('buySellDetails'));
    } // End Method















    public function ProductDetails($id, $slug)
    {
        $product = Product::findOrFail($id);

        $color = $product->product_color;
        $product_color = explode(',', $color);

        $size = $product->product_size;
        $product_size = explode(',', $size);

        $multiImage = MultiImg::where('product_id', $id)->get();

        $cat_id = $product->category_id;
        $relatedProduct = Product::where('category_id', $cat_id)
            ->where('id', '!=', $id)
            ->orderBy('id', 'DESC')
            ->limit(4)
            ->get();

        return view('frontend.product.product_details', compact('product', 'product_color', 'product_size', 'multiImage', 'relatedProduct'));
    } // End Method




    public function ProductViewAjax($id)
    {
        $product = Product::with('category', 'brand')->findOrFail($id);
        $color = $product->product_color;
        $product_color = explode(',', $color);

        $size = $product->product_size;
        $product_size = explode(',', $size);

        return response()->json([
            'product' => $product,
            'color' => $product_color,
            'size' => $product_size,
        ]);
    } // End Method



}
