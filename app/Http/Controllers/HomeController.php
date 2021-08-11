<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use App\Models\Lichtiem;
use App\Models\Ngaytiem;
use App\Models\Doituong;
use App\Models\NoiTiem;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $dangky = Lichtiem::where('userid', Auth::id())->get();
        
        $noitiem = NoiTiem::all();
        $ngaytiem = NgayTiem::all();
        $doituong = Doituong::all();
        return view('home',[
            'lichtiem'=>$dangky,
            'noitiem'=>$noitiem,
            'ngaytiem'=>$ngaytiem,
            'doituong'=>$doituong,
        ]);
    }

    public function dangkytiem(Request $req)
    {
        $data = $req->all();

        $lichtiem = new LichTiem();

        $lichtiem->userid = Auth::id();
        $lichtiem->noitiemid = $data['noitiem'];
        $lichtiem->doituonguutienid = $data['doituong'];
        $lichtiem->ngaytiemid = $data['ngaytiem'];

        $lichtiem->save();

        return redirect()->back();
    }
}
