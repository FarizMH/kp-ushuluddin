<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PengalamanKaryaTulis extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pengalaman_karya_tulis', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('dosen_id');
            $table->foreign('dosen_id')->references('id')->on('pegawai')->onDelete('cascade');
            $table->string('jenis')->nullable();
            $table->string('tahun')->nullable();
            $table->string('judul')->nullable();
            $table->string('penyelenggara')->nullable();
            $table->string('referensi')->nullable();
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
        Schema::dropIfExists('pengalaman_karya_tulis');
    }
}
