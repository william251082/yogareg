<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
	protected $fillable = [
		'credits',
		'customer_id',
		'product_id',
	];

	public function customer()
	{
		return $this->belongsTo(Customer::class);
	}

	public function product()
	{
		return $this->belongsTo(Product::class);
	}
}
