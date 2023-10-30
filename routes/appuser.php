<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;

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

Route::group(['prefix' => 'appuser', 'as' => 'appuser.','middleware' => ['auth','appuser','priventBackHistory']], function() {
    Route::get('/', [App\Http\Controllers\AppuserController::class, 'index']);
    // appusers
    Route::get('appusers', [App\Http\Controllers\AppuserController::class, 'appusers'])->name('appusers');
    Route::get('appusers.create',  [App\Http\Controllers\AppuserController::class, 'usercreate'])->name('appusers.create');
    Route::post('appusers.store', [App\Http\Controllers\AppuserController::class, 'appuserstore'])->name('appusers.store');
    Route::get('appusers.show.{id}', [App\Http\Controllers\AppuserController::class, 'appusershow'])->name('appusers.show');
    Route::get('appusers.edit.{id}', [App\Http\Controllers\AppuserController::class, 'useredit'])->name('appusers.edit');
    Route::get('appusers.publish.{id}', [App\Http\Controllers\AppuserController::class, 'userpublish'])->name('appusers.publish');
    Route::get('appusers.unpublish.{id}', [App\Http\Controllers\AppuserController::class, 'userunpublish'])->name('appusers.unpublish');
    Route::patch('appusers.update.{id}', [App\Http\Controllers\AppuserController::class, 'userupdate'])->name('appusers.update');
    Route::delete('/appusers.destroy.{id}', [App\Http\Controllers\AppuserController::class, 'userdestroy'])->name('appusers.destroy');

    Route::post('/appusers.upload', [App\Http\Controllers\AppuserController::class, 'appusersupload'])->name('appusers.upload');    
    Route::get('/appusers.fetch', [App\Http\Controllers\AppuserController::class, 'appusersfetch'])->name('appusers.fetch');
    Route::get('/appusers.delete', [App\Http\Controllers\AppuserController::class, 'appusersuploaddelete'])->name('appusers.delete');
    Route::post('/appusers.search', [App\Http\Controllers\AppuserController::class, 'appuserssearch'])->name('appusers.search'); 
    
    // Admin role
    Route::get('/roles', [App\Http\Controllers\AppuserController::class, 'roles'])->name('roles');
    Route::get('/roles.create', [App\Http\Controllers\AppuserController::class, 'rolecreate'])->name('roles.create');
    Route::post('/roles.store', [App\Http\Controllers\AppuserController::class, 'rolestore'])->name('roles.store');
    Route::get('/roles.show.{id}', [App\Http\Controllers\AppuserController::class, 'roleshow'])->name('roles.show');
    Route::get('/roles.edit.{id}', [App\Http\Controllers\AppuserController::class, 'roleedit'])->name('roles.edit');
    Route::patch('/roles.update.{id}', [App\Http\Controllers\AppuserController::class, 'roleupdate'])->name('roles.update');
    Route::delete('/roles.destroy.{id}', [App\Http\Controllers\AppuserController::class, 'roledelete'])->name('roles.destroy');
    
    // Media
    Route::get('/media', [App\Http\Controllers\AppuserController::class, 'media'])->name('media');
    Route::post('/media.upload', [App\Http\Controllers\AppuserController::class, 'mediaupload'])->name('media.upload');
    Route::get('/media.fetch', [App\Http\Controllers\AppuserController::class, 'mediafetch'])->name('media.fetch');
    Route::get('/media.delete', [App\Http\Controllers\AppuserController::class, 'mediauploaddelete'])->name('media.delete');
    Route::post('/media.search', [App\Http\Controllers\AppuserController::class, 'mediasearch'])->name('media.search'); 


    // SuperAdmin permission
    Route::get('/permissions', [App\Http\Controllers\AppuserController::class, 'permissions'])->name('permissions');
    Route::get('/permissions.create', [App\Http\Controllers\AppuserController::class, 'permissioncreate'])->name('permissions.create');
    Route::post('/permissions.store', [App\Http\Controllers\AppuserController::class, 'permissionstore'])->name('permissions.store');
    Route::get('/permissions.show.{id}', [App\Http\Controllers\AppuserController::class, 'permissionshow'])->name('permissions.show');
    Route::get('/permissions.edit.{id}', [App\Http\Controllers\AppuserController::class, 'permissionedit'])->name('permissions.edit');
    Route::patch('/permissions.update.{id}', [App\Http\Controllers\AppuserController::class, 'permissionupdate'])->name('permissions.update');
    Route::delete('/permissions.destroy.{id}', [App\Http\Controllers\AppuserController::class, 'permissiondelete'])->name('permissions.destroy');
    Route::post('/permissions.search', [App\Http\Controllers\AppuserController::class, 'permissionsearch'])->name('permissons.search');
    Route::get('/permissions.permissiondelete.{id}', [App\Http\Controllers\AppuserController::class, 'deletepermission'])->name('permissions.permissiondelete');  
});



Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Auth::routes();