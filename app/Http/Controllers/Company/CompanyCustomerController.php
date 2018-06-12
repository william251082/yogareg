<?php

namespace App\Http\Controllers\Company;

use App\Company;
use App\Http\Controllers\ApiController;
use Hamcrest\Core\CombinableMatcher;
use Illuminate\Http\Request;

class CompanyCustomerController extends ApiController
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index(Company $company)
	{

		$customers = $company->products()
		                 ->whereHas('transactions')
		                 ->with('transactions.customer')
		                 ->get()
		                 ->pluck('transactions')
		                 ->collapse()
		                 ->pluck('customer')
		                 ->unique('id')
		                 ->values();

		return $this->showAll($customers);
	}
}
