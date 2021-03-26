<?php

namespace App\Http\Controllers\admin_panel;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\sale;
use DB;

class dashboardController extends Controller
{
    public function index(){
        $sales =  sale::all();
        $orders = DB::table('sales')->count();
        $users = DB::table('users')->count();
        $total = DB::table('sales')->sum('price');
        return view('admin_panel.dashboard.index', compact('sales', 'orders', 'total', 'users'));
    }

    
}
