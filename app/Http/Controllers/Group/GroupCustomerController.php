<?php

namespace App\Http\Controllers\Group;

use App\Group;
use App\Http\Controllers\ApiController;
use Illuminate\Http\Request;

class GroupCustomerController extends ApiController
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index(Group $group)
	{
		$customers = $group->products()
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
