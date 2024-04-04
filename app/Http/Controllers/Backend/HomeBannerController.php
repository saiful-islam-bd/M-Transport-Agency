<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\HomeBanner;
use Intervention\Image\Facades\Image;

class HomeBannerController extends Controller
{
    public function AllHomeBanner()
    {
        $homeBanners = HomeBanner::latest()->get();
        return view('backend.homeBanner.homeBanner_all', compact('homeBanners'));
    } // End Method

    public function AddHomeBanner()
    {
        return view('backend.homeBanner.homeBanner_add');
    } // End Method

    public function StoreHomeBanner(Request $request)
    {
        $image = $request->file('background_image');
        $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        Image::make($image)
            // ->resize(1366, 850)
            ->save('upload/homeBanner/' . $name_gen);
        $save_url = 'upload/homeBanner/' . $name_gen;

        HomeBanner::insert([
            'title' => $request->title,
            'paragraph' => $request->paragraph,
            'background_image' => $save_url,
        ]);

        $notification = [
            'message' => 'Home Banner Inserted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->route('all.homeBanner')
            ->with($notification);
    } // End Method

    public function EditHomeBanner($id)
    {
        $homeBanners = HomeBanner::findOrFail($id);
        return view('backend.homeBanner.homeBanner_edit', compact('homeBanners'));
    } // End Method

    public function UpdateHomeBanner(Request $request)
    {
        $homeBanner_id = $request->id;
        $old_img = $request->old_image;

        if ($request->file('background_image')) {
            $image = $request->file('background_image');
            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            Image::make($image)
                // ->resize(1366, 850)
                ->save('upload/homeBanner/' . $name_gen);
            $save_url = 'upload/homeBanner/' . $name_gen;

            if (file_exists($old_img)) {
                unlink($old_img);
            }

            HomeBanner::findOrFail($homeBanner_id)->update([
                'title' => $request->title,
                'paragraph' => $request->paragraph,
                'background_image' => $save_url,
            ]);

            $notification = [
                'message' => 'Home Banner Updated with image Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->route('all.homeBanner')
                ->with($notification);
        } else {
            HomeBanner::findOrFail($homeBanner_id)->update([
                'title' => $request->title,
                'paragraph' => $request->paragraph,
            ]);

            $notification = [
                'message' => 'Home Banner Updated without image Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->route('all.homeBanner')
                ->with($notification);
        } // end else
    } // End Method

    public function DeleteHomeBanner($id)
    {
        $homeBanner = HomeBanner::findOrFail($id);
        $img = $homeBanner->background_image;
        unlink($img);

        HomeBanner::findOrFail($id)->delete();

        $notification = [
            'message' => 'Home Banner Deleted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->back()
            ->with($notification);
    } // End Method
}
