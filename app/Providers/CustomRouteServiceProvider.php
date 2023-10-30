<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class CustomRouteServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        $this->superAdmin();
        $this->admin();
        $this->user();

    }
    // superAdmin
    private function superAdmin(){
             Route::middleware('web','superAdmin')             
                ->namespace($this->namespace)
                ->group(base_path('routes/superAdmin.php')); 
    }   
    // admin
     private function admin(){
            Route::middleware('web','admin')             
                ->namespace($this->namespace)
                ->group(base_path('routes/admin.php')); 
    }  
    // appuser
    private  function appuser(){
             Route::middleware('web','appuser')             
                ->namespace($this->namespace)
                ->group(base_path('routes/appuser.php')); 
    }

}