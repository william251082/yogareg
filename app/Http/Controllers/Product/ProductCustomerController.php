<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\ApiController;
use App\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProductCustomerController extends ApiController
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index(Product $product)
	{
		$customers = $product->transactions()
		                  ->with('customer')
		                  ->get()
		                  ->pluck('customer')
		                  ->unique('id')
		                  ->values();

		return $this->showAll($customers);
	}
}
