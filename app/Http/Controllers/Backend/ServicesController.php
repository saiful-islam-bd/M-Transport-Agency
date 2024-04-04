<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Services;

class ServicesController extends Controller
{
    public function AllServices()
    {
        $services = Services::latest()->get();
        return view('backend.services.services_all', compact('services'));
    } // End Method

    public function AddServices()
    {
        return view('backend.services.services_add');
    } // End Method

    public function StoreServices(Request $request)
    {
        Services::insert([
            'icon' => $request->icon,
            'title' => $request->title,
            'paragraph' => $request->paragraph,
        ]);

        $notification = [
            'message' => 'Services Inserted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->route('all.services')
            ->with($notification);
    } // End Method

    public function EditServices($id)
    {
        $services = Services::findOrFail($id);
        return view('backend.services.services_edit', compact('services'));
    } // End Method

    public function UpdateServices(Request $request)
    {
        $services_id = $request->id;

        Services::findOrFail($services_id)->update([
            'icon' => $request->icon,
            'title' => $request->title,
            'paragraph' => $request->paragraph,
        ]);

        $notification = [
            'message' => 'Services Updated Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->route('all.services')
            ->with($notification);
    } // End Method

    public function DeleteServices($id)
    {
        Services::findOrFail($id)->delete();

        $notification = [
            'message' => 'Services Deleted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->back()
            ->with($notification);
    } // End Method
}
