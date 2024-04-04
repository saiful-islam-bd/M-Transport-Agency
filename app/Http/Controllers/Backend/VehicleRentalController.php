<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\VehicleRental;
use Intervention\Image\Facades\Image;

class VehicleRentalController extends Controller
{
    public function AllVehicleRental()
    {
        $vehicleRentals = VehicleRental::latest()->get();
        return view('backend.vehicleRental.vehicleRental_all', compact('vehicleRentals'));
    } // End Method

    public function AddVehicleRental()
    {
        return view('backend.vehicleRental.vehicleRental_add');
    } // End Method

    public function StoreVehicleRental(Request $request)
    {
        $image = $request->file('image');
        $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        Image::make($image)
            // ->resize(1366, 850)
            ->save('upload/vehicleRental/' . $name_gen);
        $save_url = 'upload/vehicleRental/' . $name_gen;

        VehicleRental::insert([
            'name' => $request->name,
            'details' => $request->details,
            'rate' => $request->rate,
            'image' => $save_url,
        ]);

        $notification = [
            'message' => 'Vehicle Rental Inserted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->route('all.vehicleRental')
            ->with($notification);
    } // End Method

    public function EditVehicleRental($id)
    {
        $vehicleRentals = VehicleRental::findOrFail($id);
        return view('backend.vehicleRental.vehicleRental_edit', compact('vehicleRentals'));
    } // End Method

    public function UpdateVehicleRental(Request $request)
    {
        $vehicleRental_id = $request->id;
        $old_img = $request->old_image;

        if ($request->file('image')) {
            $image = $request->file('image');
            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            Image::make($image)
                // ->resize(1366, 850)
                ->save('upload/vehicleRental/' . $name_gen);
            $save_url = 'upload/vehicleRental/' . $name_gen;

            if (file_exists($old_img)) {
                unlink($old_img);
            }

            VehicleRental::findOrFail($vehicleRental_id)->update([
                'name' => $request->name,
                'details' => $request->details,
                'rate' => $request->rate,
                'image' => $save_url,
            ]);

            $notification = [
                'message' => 'Vehicle Rental Updated with image Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->route('all.vehicleRental')
                ->with($notification);
        } else {
            VehicleRental::findOrFail($vehicleRental_id)->update([
                'name' => $request->name,
                'details' => $request->details,
                'rate' => $request->rate,
            ]);

            $notification = [
                'message' => 'Vehicle Rental Updated without image Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->route('all.vehicleRental')
                ->with($notification);
        } // end else
    } // End Method

    public function DeleteVehicleRental($id)
    {
        $vehicleRental = VehicleRental::findOrFail($id);
        $img = $vehicleRental->image;
        unlink($img);

        VehicleRental::findOrFail($id)->delete();

        $notification = [
            'message' => 'Vehicle Rental Deleted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->back()
            ->with($notification);
    } // End Method
}
