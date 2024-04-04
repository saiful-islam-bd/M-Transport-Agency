<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SiteSetting;
use Intervention\Image\Facades\Image;
use App\Models\Seo;

class SiteSettingController extends Controller
{
    public function SiteSetting()
    {
        $setting = SiteSetting::find(1);
        return view('backend.setting.setting_update', compact('setting'));
    } // End Method

    public function SiteSettingUpdate(Request $request)
    {
        $setting_id = $request->id;

            SiteSetting::findOrFail($setting_id)->update([
                'logo_name' => $request->logo_name,
                'address' => $request->address,
                'phone' => $request->phone,
                'whatsapp' => $request->whatsapp,
                'imo' => $request->imo,
                'email' => $request->email,
            ]);

            $notification = [
                'message' => 'Site Setting Updated Successfully',
                'alert-type' => 'success',
            ];

            return redirect()
                ->back()
                ->with($notification);

    } // End Method


    // #################### Seo Setting ####################

    public function SeoSetting()
    {
        $seo = Seo::find(1);
        return view('backend.seo.seo_update', compact('seo'));
    } // End Method

    public function SeoSettingUpdate(Request $request)
    {
        $seo_id = $request->id;

        Seo::findOrFail($seo_id)->update([
            'meta_title' => $request->meta_title,
            'meta_author' => $request->meta_author,
            'meta_keyword' => $request->meta_keyword,
            'meta_description' => $request->meta_description,
        ]);

        $notification = [
            'message' => 'Seo Setting Updated Successfully',
            'alert-type' => 'success',
        ];

        return redirect()
            ->back()
            ->with($notification);
    } // End Method
}
