<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\HitlogController;

// Route::post('/time', [App\Http\Controllers\HitlogController::class, 'timespent'])->name('time');


Route::get('/', function () {
    $hitlog  = new HitlogController;      
    $hitlog->sitehit();
    return view('welcome');
});

Route::get('/passport', function () {
    \Artisan::call('passport:install');
    return "Done";
});
Route::get('login', [App\Http\Controllers\CustomAuthController::class, 'index'])->name('login');
Route::get('home', [App\Http\Controllers\CustomAuthController::class, 'customHome'])->name('home');
Route::post('custom-login', [App\Http\Controllers\CustomAuthController::class, 'customLogin'])->name('login.custom');

Route::get('registration', [App\Http\Controllers\CustomAuthController::class, 'registration'])->name('register-user');
Route::post('custom-registration', [App\Http\Controllers\CustomAuthController::class, 'customRegistration'])->name('register.custom');
Route::post('verificationresend/{id}', [App\Http\Controllers\CustomAuthController::class, 'verificationResend'])->name('verification.resend');
Route::POST('signout', [App\Http\Controllers\CustomAuthController::class, 'signOut'])->name('signout');

/* New Added Routes */
Route::get('dashboard', [App\Http\Controllers\CustomAuthController::class, 'dashboard'])->middleware(['auth', 'is_verify_email']);
Route::get('account/verify/{token}', [App\Http\Controllers\CustomAuthController::class, 'verifyAccount'])->name('user.verify');

// Route::get('env', [App\Http\Controllers\DisplayController::class, 'index'])->name('env');
Route::post('envindex', [App\Http\Controllers\DisplayController::class, 'evnindex'])->name('envindex');
Route::get('install', [App\Http\Controllers\DisplayController::class, 'installmigrate'])->name('install');
Route::get('app/systemInt', [App\Http\Controllers\DisplayController::class, 'appsystemInt'])->name('app.systemInt');
Route::get('artisan', [App\Http\Controllers\DisplayController::class, 'artisancommand'])->name('artisan');

Route::get('sitemap.xml', [App\Http\Controllers\DisplayController::class, 'sitemapxml'])->name('sitemap.xml');
Route::get('sitemap.xml/category', [App\Http\Controllers\DisplayController::class, 'sitemapxmlcategory'])->name('sitemap.xml/category');

Route::get('/contact-form', [App\Http\Controllers\DisplayController::class, 'contactForm'])->name('contact-form');
Route::post('/contact-form', [App\Http\Controllers\DisplayController::class, 'storeContactForm'])->name('contact-form.store');
// Datetime 
Route::post('/archivedate', [App\Http\Controllers\DisplayController::class, 'archivedate'])->name('archivedate');

// Site dispaly
Route::get('post/{slug}/{id}', [App\Http\Controllers\DisplayController::class, 'postsingle'])->name('post.single');
Route::get('page/{slug}/{id}', [App\Http\Controllers\DisplayController::class, 'pagesingle'])->name('page.single');
Route::get('category/{slug}', [App\Http\Controllers\DisplayController::class, 'categorysingle'])->name('category.single');
Route::get('ajax-check/{data}', [App\Http\Controllers\DisplayController::class, 'ajaxcheck']);

Route::post('/submail', [App\Http\Controllers\DisplayController::class, 'submail'])->name('submail');
Route::get('/firstindex', [App\Http\Controllers\DisplayController::class, 'firstindex'])->name('firstindex');
Route::get('/databasebackup', [App\Http\Controllers\DisplayController::class, 'databasebackup'])->name('databasebackup');

Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Auth::routes();