<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Counter;

class CounterController extends Controller
{
    public function AllCounter()
    {
        $counters = Counter::latest()->get();
        return view('backend.counter.counter_all', compact('counters'));
    } // End Method

    public function AddCounter()
    {
        return view('backend.counter.counter_add');
    } // End Method

    public function StoreCounter(Request $request)
    {
        Counter::insert([
            'number' => $request->number,
            'title' => $request->title,
        ]);

        $notification = [
            'message' => 'Counter Inserted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->route('all.counter')
            ->with($notification);
    } // End Method

    public function EditCounter($id)
    {
        $counters = Counter::findOrFail($id);
        return view('backend.counter.counter_edit', compact('counters'));
    } // End Method

    public function UpdateCounter(Request $request)
    {
        $counter_id = $request->id;

        Counter::findOrFail($counter_id)->update([
            'number' => $request->number,
            'title' => $request->title,
        ]);

        $notification = [
            'message' => 'Counter Updated Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->route('all.counter')
            ->with($notification);
    } // End Method

    public function DeleteCounter($id)
    {
        Counter::findOrFail($id)->delete();

        $notification = [
            'message' => 'Counter Deleted Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->back()
            ->with($notification);
    } // End Method
}
