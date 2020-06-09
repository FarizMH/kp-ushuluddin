<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PengalamanKegiatan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pengalaman_kegiatan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('dosen_id');
            $table->foreign('dosen_id')->references('id')->on('pegawai')->onDelete('cascade');
            $table->string('jenis')->nullable();
            $table->string('judul_kegiatan')->nullable();
            $table->string('penyelenggara')->nullable();
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
        Schema::dropIfExists('pengalaman_kegiatan');
    }
}
