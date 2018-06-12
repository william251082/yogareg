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
Route::resource('customers.products', 'Customer\CustomerProductController', ['only' => ['index']]);
Route::resource('customers.companies', 'Customer\CustomerCompanyController', ['only' => ['index']]);
Route::resource('customers.groups', 'Customer\CustomerGroupController', ['only' => ['index']]);

/**
 * Groups
 */
Route::resource('groups', 'Group\GroupController', ['except' => ['create', 'edit']]);
Route::resource('groups.products', 'Group\GroupProductController', ['only' => ['index']]);
Route::resource('groups.transactions', 'Group\GroupTransactionController', ['only' => ['index']]);
Route::resource('groups.customers', 'Group\GroupCustomerController', ['only' => ['index']]);

/**
 * Products
 */
Route::resource('products', 'Product\ProductController', ['only' => ['index', 'show']]);
Route::resource('products.transactions', 'Product\ProductTransactionController', ['only' => ['index', 'show']]);
Route::resource('products.customers', 'Product\ProductCustomerController', ['only' => ['index', 'show']]);
Route::resource('products.groups', 'Product\ProductGroupController', ['only' => ['index', 'update', 'destroy']]);

/**
 * Companies
 */
Route::resource('companies', 'Company\CompanyController', ['only' => ['index', 'show']]);
Route::resource('companies.transactions', 'Company\CompanyTransactionController', ['only' => ['index']]);
Route::resource('companies.groups', 'Company\CompanyGroupController', ['only' => ['index']]);
Route::resource('companies.customers', 'Company\CompanyCustomerController', ['only' => ['index']]);
Route::resource('companies.products', 'Company\CompanyProductController', ['except' => ['create', 'show', 'edit']]);

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


