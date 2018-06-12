<?php

namespace App\Http\Controllers\Company;

use App\Company;
use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;

class CompanyController extends ApiController
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index()
	{
		$companies = Company::has('products')->get();

		return $this->showAll($companies);
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show(Company $company)
	{
		return $this->showOne($company);
	}
}
