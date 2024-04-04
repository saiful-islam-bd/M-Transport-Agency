<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Testimonial;
use Intervention\Image\Facades\Image;

class TestimonialController extends Controller
{
    public function AllTestimonial()
    {
        $testimonials = Testimonial::latest()->get();
        return view('backend.testimonial.testimonial_all', compact('testimonials'));
    } // End Method

    public function AddTestimonial()
    {
        return view('backend.testimonial.testimonial_add');
    } // End Method

    public function StoreTestimonial(Request $request)
    {
        $image = $request->file('image');
        $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        Image::make($image)
            // ->resize(1366, 850)
            ->save('upload/testimonial/' . $name_gen);
        $save_url = 'upload/testimonial/' . $name_gen;

        Testimonial::insert([
            'name' => $request->name,
            'paragraph' => $request->paragraph,
            'image' => $save_url,
        ]);

        $notification = [
            'message' => 'Testimonial Inserted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->route('all.testimonial')
            ->with($notification);
    } // End Method

    public function EditTestimonial($id)
    {
        $testimonials = Testimonial::findOrFail($id);
        return view('backend.testimonial.testimonial_edit', compact('testimonials'));
    } // End Method

    public function UpdateTestimonial(Request $request)
    {
        $testimonial_id = $request->id;
        $old_img = $request->old_image;

        if ($request->file('image')) {
            $image = $request->file('image');
            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            Image::make($image)
                // ->resize(1366, 850)
                ->save('upload/testimonial/' . $name_gen);
            $save_url = 'upload/testimonial/' . $name_gen;

            if (file_exists($old_img)) {
                unlink($old_img);
            }

            Testimonial::findOrFail($testimonial_id)->update([
                'name' => $request->name,
                'paragraph' => $request->paragraph,
                'image' => $save_url,
            ]);

            $notification = [
                'message' => 'Testimonial Updated with image Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->route('all.testimonial')
                ->with($notification);
        } else {
            Testimonial::findOrFail($testimonial_id)->update([
                'name' => $request->name,
                'paragraph' => $request->paragraph,
            ]);

            $notification = [
                'message' => 'Testimonial Updated without image Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->route('all.testimonial')
                ->with($notification);
        } // end else
    } // End Method

    public function DeleteTestimonial($id)
    {
        $testimonial = Testimonial::findOrFail($id);
        $img = $testimonial->image;
        unlink($img);

        Testimonial::findOrFail($id)->delete();

        $notification = [
            'message' => 'Testimonial Deleted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->back()
            ->with($notification);
    } // End Method
}
