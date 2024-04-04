<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BookNow;
use Illuminate\Support\Carbon;

class BookNowController extends Controller
{
    public function StoreBookNowMessage(Request $request)
    {
        BookNow::insert([
            'car_id' => $request->car_id,
            'car_name' => $request->car_name,
            'car_model' => $request->car_model,
            'user_name' => $request->user_name,
            'user_email' => $request->user_email,
            'user_phone' => $request->user_phone,
            'user_address' => $request->user_address,
            'created_at' => Carbon::now(),
        ]);

        $notification = [
            'message' => 'Book Now Submitted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->back()
            ->with($notification);
    } //End Method


    public function BookNowMessage()
    {
        $bookNowMessages = BookNow::latest()->get();
        return view('backend.bookNowMessage.bookNowMessage', compact('bookNowMessages'));
    } // End Method

    public function DeleteBookNowMessage($id)
    {
        BookNow::findOrFail($id)->delete();

        $notification = [
            'message' => 'Book Now Deleted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->back()
            ->with($notification);
    } // End Method
}
