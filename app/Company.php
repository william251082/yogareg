<?php

namespace App;

class Company extends User
{
	public function products()
	{
		return $this->hasMany(Product::class);
	}
}
