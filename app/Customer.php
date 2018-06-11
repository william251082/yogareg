<?php

namespace App;

class Customer extends User
{
	public function transactions()
	{
		return $this->hasMany(Transaction::class);
	}
}
