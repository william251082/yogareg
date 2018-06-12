<?php

use App\User;
use App\Company;
use App\Product;
use App\Group;
use App\Transaction;


/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(User::class, function (Faker\Generator $faker) {
	static $password;

	return [
		'name' => $faker->name,
		'email' => $faker->unique()->safeEmail,
		'password' => $password ?: $password = bcrypt('secret'),
		'remember_token' => str_random(10),
		'verified' => $verified = $faker->randomElement([User::VERIFIED_USER, User::UNVERIFIED_USER]),
		'verification_token' => $verified == User::VERIFIED_USER ? null : User::generateVerificationCode(),
		'admin' => $verified = $faker->randomElement([User::ADMIN_USER, User::REGULAR_USER]),
	];
});

$factory->define(Group::class, function (Faker\Generator $faker) {

	return [
		'name' => $faker->word,
		'description' => $faker->paragraph(1),
		'participants' => $faker->numberBetween(1, 10),
		'status' => $faker->randomElement([Group::AVAILABLE_GROUP, Group::UNAVAILABLE_GROUP]),
	];
});

$factory->define(Product::class, function (Faker\Generator $faker) {

	return [
		'name' => $faker->word,
		'description' => $faker->paragraph(1),
		'quantity' => $faker->numberBetween(1, 10),
		'status' => $faker->randomElement([Product::AVAILABLE_PRODUCT, Product::UNAVAILABLE_PRODUCT]),
		'level' => $faker->numberBetween(1, 4),
		'company_id' => User::all()->random()->id,
//		 User::inRandomOrder()->first()->id
	];
});

$factory->define(Transaction::class, function (Faker\Generator $faker) {

	$company = Company::has('products')->get()->random();
	$customer = User::all()->except($company->id)->random();

	return [
		'attendance' => $faker->randomElement([Transaction::ABSENT, Transaction::PRESENT]),
		'payment_method' => $faker->randomElement([Transaction::CARD, Transaction::CASH]),
		'credits' => $faker->numberBetween(1, 100),
		'customer_id' => $customer->id,
		'product_id' => $company->products->random()->id,
		// User::inRandomOrder()->first()->id
	];
});
