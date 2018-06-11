<?php

namespace App;

use App\Http\Controllers\Company\CompanyController;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
	const AVAILABLE_PRODUCT = 'available';
	const UNAVAILABLE_PRODUCT = 'unavailable';

	protected $fillable = [
		'name',
		'description',
		'quantity',
		'status',
		'image',
		'seller_id',
	];

	public function isAvailable()
	{
		return $this->status == Product::AVAILABLE_PRODUCT;
	}

	public function company()
	{
		return $this->belongsTo(Company::class);
	}

	public function transactions()
	{
		return $this->hasMany(Transaction::class);
	}

	public function groups()
	{
		return $this->belongsToMany(Group::class);
	}
}