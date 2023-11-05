<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Form;

class FormController extends Controller
{
    public function upload(){
        return view('multi-upload');
    }

    public function store(Request $request){
        if($request->hasfile('filename')){
            foreach($request->file('filename') as $image)
            {
                $name=$image->getClientOriginalName();
                $image->move(public_path().'/images/', $name);
                $data[] = $name;
            }
        }

        $form= new Form();
        $form->filename=json_encode($data);

        $form->save();

        return back()->with('success', 'Your images has been successfully');
    }
}