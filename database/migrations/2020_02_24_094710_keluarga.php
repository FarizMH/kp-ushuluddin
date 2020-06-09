<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Keluarga extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('keluarga', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('dosen_id');
            $table->foreign('dosen_id')->references('id')->on('pegawai')->onDelete('cascade');
            $table->string('nama');
            $table->date('tgl_lahir');
            $table->string('tempat_lahir');
            $table->string('pekerjaan');
            $table->string('keterangan');
            $table->date('tgl_nikah');
            $table->string('sebagai');

            $table->string('jk_anak')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('keluarga');
    }
}
