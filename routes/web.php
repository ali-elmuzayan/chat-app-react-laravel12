<?php

use App\Http\Controllers\FrontendController;
use Illuminate\Support\Facades\Route;


//Route::get('/', [FrontendController::class, 'home'])->name('home'); 

Route::get('/login', function () {
    return 'login'; 
})->name('login'); 

Route::get('/register', function () {
    return 'register';
})->name('register'); 

Route::get('/dashboard', function () {
    return 'dashboard'; 
})->middleware('auth')->name('dashboard');  