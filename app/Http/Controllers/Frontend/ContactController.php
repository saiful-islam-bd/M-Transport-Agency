<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class ContactController extends Controller
{
    public function StoreMessage(Request $request)
    {
        Contact::insert([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'subject' => $request->subject,
            'message' => $request->message,
            'created_at' => Carbon::now(),
        ]);

        $notification = [
            'message' => 'Your Message Submitted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->back()
            ->with($notification);
    } //End Method


    public function ContactMessage()
    {
        $contactMessages = Contact::latest()->get();
        return view('backend.contactMessage.contactMessage', compact('contactMessages'));
    } // End Method

    public function DeleteContactMessage($id)
    {
        Contact::findOrFail($id)->delete();

        $notification = [
            'message' => 'Contact Message Deleted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->back()
            ->with($notification);
    } // End Method
}
