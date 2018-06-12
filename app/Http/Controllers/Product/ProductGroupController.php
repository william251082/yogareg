<?php

namespace App\Http\Controllers\Product;

use App\Group;
use App\Http\Controllers\ApiController;
use App\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProductGroupController extends ApiController
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index(Product $product)
	{
		$groups = $product->groups;

		return $this->showAll($groups);
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \App\Product  $product
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, Product $product, Group $group)
	{
		//attach, sync, syncWithoutDetach
		$product->groups()->syncWithoutDetaching([$group->id]);

		return $this->showAll($product->groups);
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  \App\Product  $product
	 * @return \Illuminate\Http\Response
	 */
	public function destroy(Product $product, Group $group)
	{
		if (!$product->groups()->find($group->id)) {
			return $this->errorResponse('The specified category is not a category of this product', 404);
		}

		$product->groups()->detach($group->id);

		return $this->showAll($product->groups);
	}
}
