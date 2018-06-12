<?php

namespace App\Http\Controllers\Customer;

use App\Customer;
use App\Http\Controllers\ApiController;
use Illuminate\Http\Request;

class CustomerCompanyController extends ApiController
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index(Customer $customer)
	{
		$companies = $customer->transactions()->with('product.company')
		                 ->get()
		                 ->pluck('product.company')
		                 ->unique('id')
		                 ->values();

		return $this->showAll($companies);
	}

}
