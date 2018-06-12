<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/**
 * Customers
 */
Route::resource('customers', 'Customer\CustomerController', ['only' => ['index', 'show']]);
Route::resource('customers.transactions', 'Customer\CustomerTransactionController', ['only' => ['index']]);

/**
 * Groups
 */
Route::resource('groups', 'Group\GroupController', ['except' => ['create', 'edit']]);

/**
 * Products
 */
Route::resource('products', 'Product\ProductController', ['only' => ['index', 'show']]);

/**
 * Companies
 */
Route::resource('companies', 'Company\CompanyController', ['only' => ['index', 'show']]);

/**
 * Transactions
 */
Route::resource('transactions', 'Transaction\TransactionController', ['only' => ['index', 'show']]);
Route::resource('transactions.groups', 'Transaction\TransactionGroupController', ['only' => ['index', 'show']]);
Route::resource('transactions.companies', 'Transaction\TransactionCompanyController', ['only' => ['index']]);

/**
 * Users
 */
Route::resource('users', 'User\UserController', ['except' => ['create', 'edit']]);


