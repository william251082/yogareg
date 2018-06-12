<?php

use App\User;
use App\Product;
use App\Group;
use App\Transaction;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
	    DB::statement('SET FOREIGN_KEY_CHECKS = 0');

	    User::truncate();
	    Group::truncate();
	    Product::truncate();
	    Transaction::truncate();
	    DB::table('group_product')->truncate();

	    User::flushEventListeners();
	    Group::flushEventListeners();
	    Product::flushEventListeners();
	    Transaction::flushEventListeners();

	    $usersQuantity = 50;
	    $groupsQuantity = 15;
	    $productsQuantity = 50;
	    $transactionsQuantity = 50;


	    factory(User::class, $usersQuantity)->create();
	    factory(Group::class, $groupsQuantity)->create();
	    factory(Product::class, $productsQuantity)->create()->each(
		    function ($product) {
			    $groups = Group::all()->random(mt_rand(1, 5))->pluck('id');

			    $product->groups()->attach($groups);
		    });

	    factory(Transaction::class, $transactionsQuantity)->create();
    }
}
