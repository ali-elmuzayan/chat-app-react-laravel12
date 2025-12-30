<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;

class FrontendController extends Controller
{
    
    // Method to handle the home page request
    public function home() : Response
    {
        return Inertia::render('Home');
    }
}
