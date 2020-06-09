<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Pegawai extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pegawai', function (Blueprint $table) {
            $table->increments('id');

            $table->string('name')->nullable();
            $table->string('photo')->nullable();
            $table->string('email')->nullable();
            $table->string('password')->nullable();
            $table->integer('id_cms_privileges')->nullable();
            
            $table->bigInteger('nip')->unique()->nullable();
            $table->date('tgl_lahir')->nullable();
            $table->string('tempat_lahir')->nullable();
            $table->string('jk')->nullable();
            $table->string('agama')->nullable();
            
            $table->string('s_nikah')->nullable();
            $table->string('s_kepegawaian')->nullable();
            $table->string('jenis_kepegawaian')->nullable();
            $table->string('satuan_kerja')->nullable();
            $table->string('jabatan_terakhir')->nullable();
            $table->string('pendidikan_terakhir')->nullable();
            $table->string('gol_ruang')->nullable();
            $table->string('satuan_organisasi')->nullable();
            $table->string('kgb_terakhir')->nullable();
           
           
            $table->string('jalan')->nullable();    //
            $table->string('kelurahan')->nullable();
            $table->string('kecamatan')->nullable(); 
            $table->string('kabupaten')->nullable();
            $table->string('provinsi')->nullable();
            $table->string('tinggi_badan')->nullable();
            $table->string('berat_badan')->nullable();
            $table->string('warna_rambut')->nullable();
            $table->string('bentuk_wajah')->nullable();
            $table->string('warna_kulit')->nullable();
            $table->string('ciri')->nullable();
            $table->string('cacat_tubuh')->nullable();
            $table->string('kegemaran')->nullable();
            $table->string('no_tlp')->nullable();

            $table->string('pangkat')->nullable();

            $table->string('kapreg')->nullable();    //
            $table->string('karis_su')->nullable();
            $table->string('kpe')->nullable();
            $table->string('taspem')->nullable();
            $table->string('npwp')->nullable();
            $table->string('nuptk')->nullable();
            $table->string('nidn')->nullable();
            $table->string('jurusan')->nullable();
            $table->string('fakultas')->nullable();
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
        Schema::dropIfExists('pegawai');
    }
}
