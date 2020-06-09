<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PengalamanMengajar extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pengalaman_mengajar', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('dosen_id');
            $table->foreign('dosen_id')->references('id')->on('pegawai')->onDelete('cascade');
            $table->string('kode_mk')->nullable();
            $table->string('nama_mk')->nullable();
            $table->string('jenjang')->nullable();
            $table->string('jurusan')->nullable();
            $table->string('tahun_akademik')->nullable();
            $table->string('semester')->nullable();
            $table->date('rentang_mulai')->nullable();
            $table->date('rentang_akhir')->nullable();
            $table->string('sk_mengajar')->nullable();
            $table->string('tgl_sk')->nullable();
            $table->string('jam')->nullable();
            $table->string('ruang')->nullable();
            $table->string('mengajar_bersama')->nullable();
            $table->integer('sks')->nullable();
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
        Schema::dropIfExists('pengalaman_mengajar');
    }
}
