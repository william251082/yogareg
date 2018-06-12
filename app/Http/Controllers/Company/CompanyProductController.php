<?php

namespace App\Http\Controllers\Company;

use App\User;
use App\Company;
use App\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;
use Illuminate\Support\Facades\Storage;
use Illuminate\Auth\Access\AuthorizationException;
use Symfony\Component\HttpKernel\Exception\HttpException;

class CompanyProductController extends ApiController
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index(Company $company)
	{
		$products = $company->products;

			return $this->showAll($products);
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request, Company $company)
	{
		$rules = [
			'name' => 'required',
			'description' => 'required',
			'quantity' => 'required|integer|min:1',
			'status' => 'required|status',
			'level' => 'required'
		];

		$this->validate($request, $rules);

		$data = $request->all();

		$data['status'] = Product::UNAVAILABLE_PRODUCT;
		$data['company_id'] = $company->id;

		$product = Product::create($data);

		return $this->showOne($product);
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \App\Company  $company
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, Company $company, Product $product)
	{
		$rules = [
			'quantity' => 'integer|min:1',
			'status' => 'in:' . Product::AVAILABLE_PRODUCT . ',' . Product::UNAVAILABLE_PRODUCT,
			'level' => 'level',
		];

		$this->validate($request, $rules);

		$this->checkCompany($company, $product);

		$product->fill($request->only([
			'name',
			'description',
			'quantity',
			'level'
		]));

		if ($request->has('status')) {
			$product->status = $request->status;

			if ($product->isAvailable() && $product->groups()->count() == 0) {
				return $this->errorResponse('An active product must have at least one category', 409);
			}
		}

		if ($product->isClean()) {
			return $this->errorResponse('You need to specify a different value to update', 422);
		}

		$product->save();

		return $this->showOne($product);
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  \App\Company  $seller
	 * @return \Illuminate\Http\Response
	 */
	public function destroy(Company $company, Product $product)
	{
		$this->checkCompany($company, $product);

		return $this->showOne($product);
	}

	protected function checkCompany(Company $company, Product $product)
	{
		if ($company->id != $product->company_id) {
			throw new HttpException(422, 'The specified seller is not the actual seller of the product');
		}
	}
}
