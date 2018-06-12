<?php

namespace App;

use App\Scopes\CompanyScope;
use Illuminate\Support\Collection;

class Company extends User
{
	protected static function boot()
	{
		parent::boot();

		static::addGlobalScope(new CompanyScope);
	}

	public function products()
	{
		return $this->hasMany(Product::class);
	}
}
