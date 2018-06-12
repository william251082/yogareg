<?php

namespace App;

use App\Transaction;
use App\Scopes\CustomerScope;

class Customer extends User
{

	protected static function boot()
	{
		parent::boot();

		static::addGlobalScope(new CustomerScope);
	}

	public function transactions()
	{
		return $this->hasMany(Transaction::class);
	}
}
