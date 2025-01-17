<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

//Route::get('/', function () {
//    return view('index');
//})->middleware(middleware: 'auth');;

Route::get('/', [App\Http\Controllers\AdminController::class, 'index'])->middleware(middleware: 'auth');


Auth::routes(['register'=>true]);;


Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::resource('/miembros', \App\Http\Controllers\MiembroController::class);

Route::resource('/ministerios', \App\Http\Controllers\MinisterioController::class);

Route::resource('/usuarios', \App\Http\Controllers\UserController::class);

Route::resource('/asistencias', \App\Http\Controllers\AsistenciaController::class);



//Route::get('/miembros', function () {
//    return view('miembros.index');
//})->middleware(middleware: 'auth');;


