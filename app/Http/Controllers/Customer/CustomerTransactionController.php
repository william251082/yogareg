<?php

namespace App\Http\Controllers\Customer;

use App\Customer;
use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;

class CustomerTransactionController extends ApiController
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index(Customer $customer)
	{
		$transactions = $customer->transactions;

		return $this->showAll($transactions);
	}
}