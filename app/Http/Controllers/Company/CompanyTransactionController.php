<?php

namespace App\Http\Controllers\Company;

use App\Company;
use App\Http\Controllers\ApiController;
use Illuminate\Http\Request;

class CompanyTransactionController extends ApiController
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index(Company $company)
	{
		$transactions = $company->products()
		                       ->whereHas('transactions')
		                       ->with('transactions')
		                       ->get()
		                       ->pluck('transactions')
		                       ->collapse();

		return $this->showAll($transactions);
	}
}
