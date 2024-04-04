<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\OurCommitment;
use Intervention\Image\Facades\Image;

class OurCommitmentController extends Controller
{
    public function AllOurCommitment()
    {
        $ourCommitments = OurCommitment::latest()->get();
        return view('backend.ourCommitment.ourCommitment_all', compact('ourCommitments'));
    } // End Method

    public function AddOurCommitment()
    {
        return view('backend.ourCommitment.ourCommitment_add');
    } // End Method

    public function StoreOurCommitment(Request $request)
    {
        $image = $request->file('image');
        $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        Image::make($image)
            // ->resize(1366, 850)
            ->save('upload/ourCommitment/' . $name_gen);
        $save_url = 'upload/ourCommitment/' . $name_gen;

        OurCommitment::insert([
            'title' => $request->title,
            'description' => $request->description,
            'image' => $save_url,
        ]);

        $notification = [
            'message' => 'Our Commitment Inserted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->route('all.ourCommitment')
            ->with($notification);
    } // End Method

    public function EditOurCommitment($id)
    {
        $ourCommitments = OurCommitment::findOrFail($id);
        return view('backend.ourCommitment.ourCommitment_edit', compact('ourCommitments'));
    } // End Method

    public function UpdateOurCommitment(Request $request)
    {
        $ourCommitment_id = $request->id;
        $old_img = $request->old_image;

        if ($request->file('image')) {
            $image = $request->file('image');
            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            Image::make($image)
                // ->resize(1366, 850)
                ->save('upload/ourCommitment/' . $name_gen);
            $save_url = 'upload/ourCommitment/' . $name_gen;

            if (file_exists($old_img)) {
                unlink($old_img);
            }

            OurCommitment::findOrFail($ourCommitment_id)->update([
                'title' => $request->title,
                'description' => $request->description,
                'image' => $save_url,
            ]);

            $notification = [
                'message' => 'Our Commitment Updated with image Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->route('all.ourCommitment')
                ->with($notification);
        } else {
            OurCommitment::findOrFail($ourCommitment_id)->update([
                'title' => $request->title,
                'description' => $request->description,
            ]);

            $notification = [
                'message' => 'Our Commitment Updated without image Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->route('all.ourCommitment')
                ->with($notification);
        } // end else
    } // End Method

    public function DeleteOurCommitment($id)
    {
        $ourCommitment = OurCommitment::findOrFail($id);
        $img = $ourCommitment->image;
        unlink($img);

        OurCommitment::findOrFail($id)->delete();

        $notification = [
            'message' => 'Our Commitment Deleted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->back()
            ->with($notification);
    } // End Method
}
