<?php

use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return 'home'; 
})->name('home'); 

Route::get('/login', function () {
    return 'login'; 
})->name('login'); 

Route::get('/register', function () {
    return 'register';
})->name('register'); 

Route::get('/dashboard', function () {
    return 'dashboard'; 
})->middleware('auth')->name('dashboard');  