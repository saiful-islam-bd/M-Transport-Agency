<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BackgroundImage;
use Intervention\Image\Facades\Image;

class BackgroundImageController extends Controller
{
    public function AllBackgroundImage()
    {
        $backgroundImages = BackgroundImage::latest()->get();
        return view('backend.backgroundImage.backgroundImage_all', compact('backgroundImages'));
    } // End Method

    public function AddBackgroundImage()
    {
        return view('backend.backgroundImage.backgroundImage_add');
    } // End Method

    public function StoreBackgroundImage(Request $request)
    {
        $image = $request->file('background_image');
        $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        Image::make($image)
            // ->resize(1366, 850)
            ->save('upload/backgroundImage/' . $name_gen);
        $save_url = 'upload/backgroundImage/' . $name_gen;

        BackgroundImage::insert([
            'title' => $request->title,
            'background_image' => $save_url,
        ]);

        $notification = [
            'message' => 'Background Image Inserted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->route('all.backgroundImage')
            ->with($notification);
    } // End Method

    public function EditBackgroundImage($id)
    {
        $backgroundImages = BackgroundImage::findOrFail($id);
        return view('backend.backgroundImage.backgroundImage_edit', compact('backgroundImages'));
    } // End Method

    public function UpdateBackgroundImage(Request $request)
    {
        $backgroundImage_id = $request->id;
        $old_img = $request->old_image;

        if ($request->file('background_image')) {
            $image = $request->file('background_image');
            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            Image::make($image)
                // ->resize(1366, 850)
                ->save('upload/backgroundImage/' . $name_gen);
            $save_url = 'upload/backgroundImage/' . $name_gen;

            if (file_exists($old_img)) {
                unlink($old_img);
            }

            BackgroundImage::findOrFail($backgroundImage_id)->update([
                'title' => $request->title,
                'background_image' => $save_url,
            ]);

            $notification = [
                'message' => 'Background Image Updated with image Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->route('all.backgroundImage')
                ->with($notification);
        } else {
            BackgroundImage::findOrFail($backgroundImage_id)->update([
                'title' => $request->title,
            ]);

            $notification = [
                'message' => 'Background Image Updated without image Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->route('all.backgroundImage')
                ->with($notification);
        } // end else
    } // End Method

    public function DeleteBackgroundImage($id)
    {
        $backgroundImage = BackgroundImage::findOrFail($id);
        $img = $backgroundImage->background_image;
        unlink($img);

        BackgroundImage::findOrFail($id)->delete();

        $notification = [
            'message' => 'Background Image Deleted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->back()
            ->with($notification);
    } // End Method
}
