<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Transaction extends Model
{
	use SoftDeletes;

	const PRESENT = 'present';
	const ABSENT = 'absent';

	const CASH = 'cash';
	const CARD = 'card';

	protected $dates = ['deleted_at'];
	protected $fillable = [
		'payment_method',
		'attendance',
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
