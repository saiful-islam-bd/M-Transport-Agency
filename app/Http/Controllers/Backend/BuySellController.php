<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BuySell;
use Illuminate\Support\Carbon;
use Intervention\Image\Facades\Image;

class BuySellController extends Controller
{
    public function AllBuySell()
    {
        $buySells = BuySell::latest()->get();
        return view('backend.buySell.buySell_all', compact('buySells'));
    } // End Method

    public function AddBuySell()
    {
        return view('backend.buySell.buySell_add');
    } // End Method

    public function StoreBuySell(Request $request)
    {
        $image = $request->file('image');
        $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        Image::make($image)
            // ->resize(1103, 906)
            ->save('upload/buySell/' . $name_gen);
        $save_url = 'upload/buySell/' . $name_gen;

        BuySell::insert([
            'name' => $request->name,
            'slug' => strtolower(str_replace(' ', '-', $request->name)),
            'price' => $request->price,
            'model_no' => $request->model_no,
            'engine_no' => $request->engine_no,
            'chassis_no' => $request->chassis_no,
            'horsepower' => $request->horsepower,
            'mileage' => $request->mileage,
            'seating_capacity' => $request->seating_capacity,
            'owner_name' => $request->owner_name,
            'image' => $save_url,
            'created_at' => Carbon::now(),
        ]);

        $notification = [
            'message' => 'Buy/Sell Inserted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->route('all.buySell')
            ->with($notification);
    } // End Method

    public function EditBuySell($id)
    {
        $buySells = BuySell::findOrFail($id);
        return view('backend.buySell.buySell_edit', compact('buySells'));
    } // End Method

    public function UpdateBuySell(Request $request)
    {
        $buySell_id = $request->id;
        $old_img = $request->old_image;

        if ($request->file('image')) {
            $image = $request->file('image');
            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            Image::make($image)
                // ->resize(1103, 906)
                ->save('upload/buySell/' . $name_gen);
            $save_url = 'upload/buySell/' . $name_gen;

            if (file_exists($old_img)) {
                unlink($old_img);
            }

            BuySell::findOrFail($buySell_id)->update([
                'name' => $request->name,
                'slug' => strtolower(str_replace(' ', '-', $request->name)),
                'price' => $request->price,
                'model_no' => $request->model_no,
                'engine_no' => $request->engine_no,
                'chassis_no' => $request->chassis_no,
                'horsepower' => $request->horsepower,
                'mileage' => $request->mileage,
                'seating_capacity' => $request->seating_capacity,
                'owner_name' => $request->owner_name,
                'image' => $save_url,
                'updated_at' => Carbon::now(),
            ]);

            $notification = [
                'message' => 'Buy/Sell Updated with image Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->route('all.buySell')
                ->with($notification);
        } else {
            BuySell::findOrFail($buySell_id)->update([
                'name' => $request->name,
                'slug' => strtolower(str_replace(' ', '-', $request->name)),
                'price' => $request->price,
                'model_no' => $request->model_no,
                'engine_no' => $request->engine_no,
                'chassis_no' => $request->chassis_no,
                'horsepower' => $request->horsepower,
                'mileage' => $request->mileage,
                'seating_capacity' => $request->seating_capacity,
                'owner_name' => $request->owner_name,
                'updated_at' => Carbon::now(),
            ]);

            $notification = [
                'message' => 'Buy/Sell Updated without image Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->route('all.buySell')
                ->with($notification);
        } // end else
    } // End Method

    public function DeleteBuySell($id)
    {
        $buySell = BuySell::findOrFail($id);
        $img = $buySell->image;
        unlink($img);

        BuySell::findOrFail($id)->delete();

        $notification = [
            'message' => 'Buy/Sell Deleted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->back()
            ->with($notification);
    } // End Method
}
