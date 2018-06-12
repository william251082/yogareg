<?php

namespace App\Http\Controllers\Customer;

use App\Customer;
use App\Http\Controllers\ApiController;
use Illuminate\Http\Request;

class CustomerProductController extends ApiController
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index(Customer $customer)
	{
		$products = $customer->transactions()
		                     ->with('product')
		                  ->get()
		                  ->pluck('product'); // only show explicitly mentioned resource

		return $this->showAll($products);
	}
}
