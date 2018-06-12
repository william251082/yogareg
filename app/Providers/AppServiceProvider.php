<?php

namespace App\Providers;

use App\Group;
use App\Product;
use App\User;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        // Event check for group availability
	    Group::updated(function($group) {
		    if ($group->participants < 10) {
			    $group->status = Group::AVAILABLE_GROUP;
			    $group->save();
		    }

	    });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
