<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Group extends Model
{
	use SoftDeletes;

	const AVAILABLE_GROUP = 'available';
	const UNAVAILABLE_GROUP = 'unavailable';

	protected $dates = ['deleted_at'];
	protected $fillable = [
		'name',
		'description',
		'participants'

	];
	protected $hidden = [
		'pivot'
	];

	public function products()
	{
		return $this->belongsToMany(Product::class);
	}


}