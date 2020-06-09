<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use CRUDBooster;

class PrintController extends Controller
{
    //
    public function print(){
		echo "print profil <a href='".url("print/".CRUDBooster::myId())."'> print </a> ";
	}
    public function index($id){
        
    	$tablePegawai=DB::table('pegawai')->where('id',$id)->get();
    	$tableKeluarga=DB::table('keluarga')->where('dosen_id',$id)->
        where(function($query){
            $query->orWhere('sebagai','=','SUAMI')
            ->orWhere('sebagai','=','ISTRI');
            })->get();
        $tableOrtu=DB::table('keluarga')->where('dosen_id',$id)->
        where(function($query){
            $query->where('sebagai','=','AYAH')
            ->orWhere('sebagai','=','IBU');
            })->get();
        $tableMertua=DB::table('keluarga')->where('dosen_id',$id)->
        where(function($query){
            $query->where('sebagai','=','AYAH MERTUA')
            ->orWhere('sebagai','=','IBU MERTUA');
            })->get();
        $tableAnak=DB::table('keluarga')->where('dosen_id',$id)->
        where(function($query){
            $query->where('sebagai','=','ANAK');
            })->get();
        $tableSaudaraKandung=DB::table('keluarga')->where('dosen_id',$id)->
        where(function($query){
            $query->where('sebagai','=','SAUDARA KANDUNG');
            })->get();

    	$tablePendidikan=DB::table('pendidikan')->where('dosen_id',$id)->get();
    	$tableKursus=DB::table('kursus_latihan')->where('dosen_id',$id)->get();
    	$tableKepangkatan=DB::table('riwayat_kepangkatan')->where('dosen_id',$id)->get();
    	$tableJabatan=DB::table('riwayat_jabatan')->where('dosen_id',$id)->get();
    	$tableJasa=DB::table('tanda_jasa_penghargaan')->where('dosen_id',$id)->get();
    	$tableKunjungan=DB::table('kunjungan_luar_negeri')->where('dosen_id',$id)->get();
    	$tablePengalaman=DB::table('pengalaman_mengajar')->where('dosen_id',$id)->get();
    	$tableKegiatanPeserta=DB::table('pengalaman_kegiatan')->where('dosen_id',$id)->
        where(function($query){
            $query->where('jenis','=','PESERTA KONFERENSI')
            ->orWhere('jenis','=','PESERTA SEMINAR')
            ->orWhere('jenis','=','PESERTA LOKAKARYA')
            ->orWhere('jenis','=','PESERTA SIMPOSIUM');
            })->get();
        $tableKegiatanProfesional=DB::table('pengalaman_kegiatan')->where('dosen_id',$id)->
        where(function($query){
            $query->where('jenis','=','PENGABDIAN KEPADA MASYARAKAT');
            })->get();


    	$tableBimbingan=DB::table('pengalaman_membimbing')->where('dosen_id',$id)->get();
    	$tablePenelitian=DB::table('pengalaman_penelitian')->where('dosen_id',$id)->get();
    	$tableKaryaA=DB::table('pengalaman_karya_tulis')->where('dosen_id',$id)->
        where(function($query){
            $query->where('jenis','=','PENGALAMAN KARYA TULIS BAB')
            ->orWhere('jenis','=','PENGALAMAN KARYA TULIS BUKU')
            ->orWhere('jenis','=','PENGALAMAN KARYA TULIS JURNAL');
            })->get();
        $tableKaryaB=DB::table('pengalaman_karya_tulis')->where('dosen_id',$id)->
        where(function($query){
            $query->where('jenis','=','PENGALAMAN KARYA TULIS MAKALAH')
            ->orWhere('jenis','=','PENGALAMAN KARYA TULIS POSTER');
            })->get();
        $tableKaryaC=DB::table('pengalaman_karya_tulis')->where('dosen_id',$id)->
        where(function($query){
            $query->where('jenis','=','PENGALAMAN KARYA TULIS PENYUNTING')
            ->orWhere('jenis','=','PENGALAMAN KARYA TULIS EDITOR')
            ->orWhere('jenis','=','PENGALAMAN KARYA TULIS REVIEWER')
            ->orWhere('jenis','=','PENGALAMAN KARYA TULIS RESENSI');
            })->get();



    	$tableOrganisasiKuliah=DB::table('ket_organisasi')->where('dosen_id',$id)->
        where(function($query){
            $query->where('jenis','=','KULIAH');
            })->get();
       
        $tableOrganisasiSlta=DB::table('ket_organisasi')->where('dosen_id',$id)->
        where(function($query){
            $query->where('jenis','=','SD')
            ->orWhere('jenis','=','SMP')
            ->orWhere('jenis','=','SMA');
        })->get();
        $tableOrganisasiPeg=DB::table('ket_organisasi')->where('dosen_id',$id)->
        where(function($query){
            $query->where('jenis','=','KERJA');
        })->get();
    	
        // print_r($tableOrganisasi);
    	return view('print' )
    			->with('pegawai',$tablePegawai[0])
    			->with('anak',$tableAnak)
    			->with('keluarga',$tableKeluarga)
    			->with('mertua',$tableMertua)
    			->with('orangtua',$tableOrtu)
    			->with('saudara',$tableSaudaraKandung)
    			->with('pendidikan',$tablePendidikan)
    			->with('kursus',$tableKursus)
    			->with('kepangkatan',$tableKepangkatan)
    			->with('jabatan',$tableJabatan)
    			->with('jasa',$tableJasa)
    			->with('kunjungan',$tableKunjungan)
    			->with('pengalaman',$tablePengalaman)
    			->with('kegiatanPeserta',$tableKegiatanPeserta)
    			->with('kegiatanProfesional',$tableKegiatanProfesional)
    			->with('bimbingan',$tableBimbingan)
    			->with("penelitian",$tablePenelitian)
    			->with('karyaA',$tableKaryaA)
    			->with('karyaB',$tableKaryaB)
    			->with('karyaC',$tableKaryaC)
                ->with('organisasikuliah',$tableOrganisasiKuliah)
                ->with('organisasislta',$tableOrganisasiSlta)
                ->with('organisasipegawai',$tableOrganisasiPeg);
                

    }
}
