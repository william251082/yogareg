<?php

namespace App\Http\Controllers\Company;

use App\Company;
use App\Http\Controllers\ApiController;
use Illuminate\Http\Request;

class CompanyGroupController extends ApiController
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index(Company $company)
	{
		$groups = $company->products()
		                     ->whereHas('groups')
		                     ->with('groups')
		                     ->get()
		                     ->pluck('groups')
		                     ->collapse()
		                     ->unique('id')
		                     ->values();

		return $this->showAll($groups);
	}
}
