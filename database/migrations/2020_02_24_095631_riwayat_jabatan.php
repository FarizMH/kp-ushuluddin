<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class RiwayatJabatan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('riwayat_jabatan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('dosen_id');
            $table->foreign('dosen_id')->references('id')->on('pegawai')->onDelete('cascade');
            $table->string('jabatan')->nullable();
            $table->date('tmt')->nullable();
            $table->string('gol_ruang')->nullable();
            $table->double('gaji_pokok')->nullable();
            $table->string('surat_keputusan')->nullable();

            $table->string('tgl_mulai')->nullable();
            $table->string('pejabat')->nullable();
            $table->string('no_sk')->nullable();
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
        Schema::dropIfExists('riwayat_jabatan');
    }
}
