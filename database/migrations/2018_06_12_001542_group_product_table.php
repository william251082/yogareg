<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class GroupProductTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
	public function up()
	{
		Schema::create('group_product', function (Blueprint $table) {
			$table->integer('group_id')->unsigned();
			$table->integer('product_id')->unsigned();

			$table->foreign('group_id')->references('id')->on('groups');
			$table->foreign('product_id')->references('id')->on('products');
		});
	}

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('group_product');
    }
}
