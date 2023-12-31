<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Imports\UsersImport;
use App\Exports\UsersExport;
use Excel;

class UserController extends Controller
{
    public function fileImportExport()
    {
       return view('file-import');
    }

    public function fileImport(Request $request)
    {
        Excel::import(new UsersImport, $request->file('file')->store('temp'));
        return back();
    }

    public function fileExport()
    {
        return Excel::download(new UsersExport, 'users-collection.xlsx');
    }
}