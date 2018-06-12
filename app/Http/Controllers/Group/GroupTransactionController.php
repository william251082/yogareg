<?php

namespace App\Http\Controllers\Group;

use App\Group;
use App\Http\Controllers\ApiController;
use Illuminate\Http\Request;

class GroupTransactionController extends ApiController
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index(Group $group)
	{

		$transactions = $group->products()
		                         ->whereHas('transactions')
		                         ->with('transactions')
		                         ->get()
		                         ->pluck('transactions')
		                         ->collapse();

		return $this->showAll($transactions);
	}
}
