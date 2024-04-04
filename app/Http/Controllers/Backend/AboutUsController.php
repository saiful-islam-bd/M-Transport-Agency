<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\AboutUs;
use Intervention\Image\Facades\Image;

class AboutUsController extends Controller
{
    public function AllAboutUs()
    {
        $aboutUs = AboutUs::latest()->get();
        return view('backend.aboutUs.aboutUs_all', compact('aboutUs'));
    } // End Method

    public function AddAboutUs()
    {
        return view('backend.aboutUs.aboutUs_add');
    } // End Method

    public function StoreAboutUs(Request $request)
    {
        $image = $request->file('image');
        $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        Image::make($image)
            // ->resize(1366, 850)
            ->save('upload/aboutUs/' . $name_gen);
        $save_url = 'upload/aboutUs/' . $name_gen;

        AboutUs::insert([
            'title' => $request->title,
            'description' => $request->description,
            'image' => $save_url,
        ]);

        $notification = [
            'message' => 'About Us Inserted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->route('all.aboutUs')
            ->with($notification);
    } // End Method

    public function EditAboutUs($id)
    {
        $aboutUs = AboutUs::findOrFail($id);
        return view('backend.aboutUs.aboutUs_edit', compact('aboutUs'));
    } // End Method

    public function UpdateAboutUs(Request $request)
    {
        $aboutUs_id = $request->id;
        $old_img = $request->old_image;

        if ($request->file('image')) {
            $image = $request->file('image');
            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            Image::make($image)
                // ->resize(1366, 850)
                ->save('upload/aboutUs/' . $name_gen);
            $save_url = 'upload/aboutUs/' . $name_gen;

            if (file_exists($old_img)) {
                unlink($old_img);
            }

            AboutUs::findOrFail($aboutUs_id)->update([
                'title' => $request->title,
                'description' => $request->description,
                'image' => $save_url,
            ]);

            $notification = [
                'message' => 'About Us Updated with image Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->route('all.aboutUs')
                ->with($notification);
        } else {
            AboutUs::findOrFail($aboutUs_id)->update([
                'title' => $request->title,
                'description' => $request->description,
            ]);

            $notification = [
                'message' => 'About Us Updated without image Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->route('all.aboutUs')
                ->with($notification);
        } // end else
    } // End Method

    public function DeleteAboutUs($id)
    {
        $aboutUs = AboutUs::findOrFail($id);
        $img = $aboutUs->image;
        unlink($img);

        AboutUs::findOrFail($id)->delete();

        $notification = [
            'message' => 'About Us Deleted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->back()
            ->with($notification);
    } // End Method
}
