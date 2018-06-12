<?php

use App\Transaction;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
	public function up()
	{
		Schema::create('transactions', function (Blueprint $table) {
			$table->increments('id');
			$table->string('attendance')->default(Transaction::PRESENT);
			$table->string('payment_method')->default(Transaction::CARD);
			$table->integer('credits')->unsigned();
			$table->integer('customer_id')->unsigned();
			$table->integer('product_id')->unsigned();
			$table->timestamps();
			$table->softDeletes(); // delete_at

			$table->foreign('customer_id')->references('id')->on('users');
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
        Schema::dropIfExists('transactions');
    }
}
