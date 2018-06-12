<?php

namespace App\Http\Controllers\Group;

use App\Group;
use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;

class GroupProductController extends ApiController
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index(Group $group)
	{
		$products = $group->products;

		return $this->showAll($products);
	}
}