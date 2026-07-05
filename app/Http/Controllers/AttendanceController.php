<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AttendanceController extends Controller
{
    public function store(Request $request)
    {
        return response()->json([
            'message' => 'تم استلام الحضور بنجاح',
            'data' => $request->all()
        ]);
    }
}
