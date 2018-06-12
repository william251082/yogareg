<?php

namespace App\Http\Controllers\Customer;

use App\Customer;
use App\Http\Controllers\ApiController;
use Illuminate\Http\Request;

class CustomerGroupController extends ApiController
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index(Customer $customer)
	{
		$companies = $customer->transactions()->with('product.groups')
		                 ->get()
		                 ->pluck('product.groups')
		                 ->collapse()
		                 ->unique('id')
		                 ->values();

		return $this->showAll($companies);
	}
}
