<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddOnTBTandaJasa extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tanda_jasa_penghargaan', function (Blueprint $table) {
            //
        $table->string('file')->nullable();    

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tanda_jasa_penghargaan', function (Blueprint $table) {
            //
            $table->dropColumn(["file"]);
        });
    }
}
