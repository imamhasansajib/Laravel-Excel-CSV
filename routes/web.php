<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\FormController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PDFController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('single-upload', [ImageController::class, 'upload']);
Route::post('store-single', [ImageController::class, 'store']);

Route::get('multi-upload', [FormController::class, 'upload']);
Route::post('store-multiple', [FormController::class, 'store']);

Route::get('excel', [UserController::class, 'fileImportExport']);
Route::post('file-import', [UserController::class, 'fileImport'])->name('file-import');
Route::get('file-export', [UserController::class, 'fileExport'])->name('file-export');

Route::get('pdf', [PDFController::class, 'pdf']);
Route::get('generate-pdf', [PDFController::class, 'generatePDF']);
