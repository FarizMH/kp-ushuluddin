<!DOCTYPE html>
<html lang="id">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<title></title>
	<link rel="shortcut icon" href="img/uin.png" type="image/x-icon" />
    <!-- Bootstrap -->
   

  </head>
<body onload="  window.print()" >


<div class="book">
	    <div class="page" id="page">
	        <div id="sub">
            
            <table border=0>
            <tr>
                <td >
                <img src="/img/uin.jpg" height="100" width="75">
            </td>
            <td>
             <center>
                <p><b><h3>KEMENTERIAN AGAMA REPUBLIK INDONESIA<br>
                   UNIVERSITAS ISLAM NEGERI (UIN)<br>
                   SUNAN GUNUNG DJATI BANDUNG<br>
                    FAKULTAS USHULUDDIN<h3> </b>
            </center>
        
    </tr>
    <tr><td><td> <center>Jl. AH. Nasution No. 105, Cibiru Kota Bandung 40614  Telp. (022)7802275  Fax. (022) 7802275 - 7803936 
                    Website: http://www.uinsgd.ac.id  E-mail: Contact@uinsgd.ac.id</center> </td></tr></td>
    </table><hr>



			<center><h1><u>PROFIL PEGAWAI</u></h1> </center>
            <P>I. DATA UTAMA</P>
            <table border=1 cellspacing='0'>
        	<tr>
            	<th>Foto</th>
            	<td colspan="3"><img src="{{url($pegawai->photo)}}" width = " 154 " height="172px"></td>
        	</tr>
        	<tr>
            	<th>Nama</th>
            	<td colspan="3">{{$pegawai->name}}</td>
        	</tr>
        	<tr>
            	<th>NIP </th>
            	<td colspan="3">{{$pegawai->nip}}</td>
        	</tr>
        	<tr>
            	<th>Tanggal Lahir</th>
            	<td colspan="3">{{$pegawai->tgl_lahir}}</td>
        	</tr>
        	<tr>
            	<th>Tempat Lahir</th>
            	<td colspan="3">{{$pegawai->tempat_lahir}}</td>
        	</tr>
        	<tr>
            	<th>Jenis Kelamin</th>
            	<td colspan="3">{{$pegawai->jk}}</td>
        	</tr>
        	<tr>
            	<th>Agama</th>
            	<td colspan="3">{{$pegawai->agama}}</td>
        	</tr>
        	<tr>
            	<th>Status Pernikahan</th>
            	<td colspan="3">{{$pegawai->s_nikah}}</td>
        	</tr>
        	<tr>
            	<th>Status Kepegawaian</th>
            	<td colspan="3">{{$pegawai->s_kepegawaian}}</td>
        	</tr>
        	<tr>
            	<th>Jenis Kepegawaian</th>
            	<td colspan="3">{{$pegawai->jenis_kepegawaian}}</td>
        	</tr>
        	<tr>
            	<th>Satuan Kerja</th>
            	<td colspan="3">{{$pegawai->satuan_kerja}}</td>
        	</tr>
        	<tr>
            	<th>Jabatan Terakhir</th>
            	<td colspan="3">{{$pegawai->jabatan_terakhir}}</td>
        	</tr>
        	<tr>
            	<th>Pendidikan Terakhir</th>
            	<td colspan="3">{{$pegawai->pendidikan_terakhir}}</td>
        	</tr>
        	<tr>
            	<th>Gol / Ruang</th>
            	<td colspan="3">{{$pegawai->gol_ruang}}</td>
        	</tr>
        	<tr>
            	<th>Satuan Organisai</th>
            	<td colspan="3">{{$pegawai->satuan_organisasi}}</td>
        	</tr>
        	<tr>
            	<th>Kgb Terakhir</th>
            	<td colspan="3">{{$pegawai->kgb_terakhir}}</td>
        	</tr>

        <tr>
            
            <td rowspan="7">Nomor Kepegawaian</td>
            <th>KAPREG</hd>
            <td> {{$pegawai->kapreg}}</td>
            <tr>
                <th>KARIS / SU</th>
                <td> {{$pegawai->karis_su}}</td>
            </tr>
            <tr>
                <th>KPE</th>
                <td> {{$pegawai->kpe}}</td>    
            </tr>
            <tr>
                <th>TASPEN</th>
                <td> {{$pegawai->TASPEM}}</td>    
            </tr>

            <tr>
                <th>NPWP</th>
                <td> {{$pegawai->npwp}}</td>    
            </tr>

            <tr>
                <th>NUPTK</th>
                <td> {{$pegawai->nuptk}}</td>    
            </tr>

            <tr>
                <th>NIDN</th>
                <td> {{$pegawai->nidn}}</td>    
            </tr>
                      
        </tr>

        <tr>
            
            <td rowspan="5">Alamat Rumah</td>
            <th>Jalan</hd>
            <td> {{$pegawai->jalan}}</td>
            <tr>
                <th>Kelurahan / Desa</th>
                <td> {{$pegawai->kelurahan}}</td>
            </tr>
            <tr>
                <th>Kecamatan</th>
                <td> {{$pegawai->kecamatan}}</td>    
            </tr>
            <tr>
                <th>Kabupaten / Kota</th>
                <td> {{$pegawai->kabupaten}}</td>    
            </tr>

            <tr>
                <th>Provinsi</th>
                <td> {{$pegawai->provinsi}}</td>    
            </tr>
                      
        </tr>

        <tr>
            
            <td rowspan="7">Keterangan Badan</td>
            <th>Tinggi (cm)</hd>
            <td>{{$pegawai->tinggi_badan}}</td>
            <tr>
                <th>Berat Badan (KG)</th>
                <td>{{$pegawai->berat_badan}}</td>
            </tr>
            <tr>
                <th>Rambut</th>
                <td>{{$pegawai->warna_rambut}}</td>    
            </tr>
            <tr>
                <th>Bentuk Muka</th>
                <td>{{$pegawai->bentuk_wajah}}</td>    
            </tr>

            <tr>
                <th>Warna Kulit</th>
                <td>{{$pegawai->warna_kulit}}</td>    
            </tr>

            <tr>
                <th>Ciri-ciri Khas</th>
                <td>{{$pegawai->ciri}}</td>    
            </tr>

            <tr>
                <th>Cacat Tubuh</th>
                <td>{{$pegawai->cacat_tubuh}}</td>    
            </tr>

        </tr>

        <tr>
            <th >Kegemaran (Hobby)</th>
            <td colspan="3">{{$pegawai->kegemaran}}</td>
        </tr>
        	<tr>
            	<th>No Telepon</th>
            	<td colspan="3">{{$pegawai->no_tlp}}</td>
        	</tr>
        	<tr>
            	<th>Jurusan</th>
            	<td colspan="3">{{$pegawai->jurusan}}</td>
        	</tr>
        	<tr>
            	<th>Fakultas</th>
            	<td colspan="3">{{$pegawai->fakultas}}</td>
        	</tr>
	</table>

	<p> <b>II. PENDIDIKAN</b> </p>
    <p>1. PENDIDIKAN DI DALAMA DAN DILUAR NEGERI</p>
	<table  border=1>
        <tr>
            <th>Tingkat</th>
            <th>Sekolah / PT</th>
            <th>Faultas</th>
            <th>Jurusan</th>
            <th>Tahun Lulus</th>
            <th>Sumber Dana</th>
            <th>Tempat</th>
        </tr>
        @foreach($pendidikan as $data)
        <tr>
        	<td>{{$data->tingkat_pendidikan}}</td>
            <td>{{$data->nama_sekolah_pt}}</td>
            <td>{{$data->fakultas}}</td>
            <td>{{$data->jurusan}}</td>
            <td>{{$data->tahun_lulus}}</td>
            <td>{{$data->sumber_dana}}</td>
            <td>{{$data->tempat}}</td>
        </tr>
        @endforeach
</table>

<p>2. KURSUS / LATIHAN DALAM DA LUAR NEGERI</p>
<table border=1>
        <tr>
            <th>Nama Kursus / Latihan</th>
            <th>periode</th>
            <th>Jam</th>
            <th>Hari</th>
            <th>Bulan</th>
            <th>Tahun</th>
            <th>Tempat</th>
            <th>Sumber Dana</th>
            <th>Penyelenggara</th>
        </tr>
        @foreach ($kursus as $data)
        <tr>
        	<td>{{$data->nama_kursus_latihan}}</td>
            <td>{{$data->periode}}</td>
            <td>{{$data->jam}}</td>
            <td>{{$data->hari}}</td>
            <td>{{$data->bulan}}</td>
            <td>{{$data->tahun}}</td>
            <td>{{$data->tempat}}</td>
            <td>{{$data->sumber_dana}}</td>
            <td>{{$data->penyelenggara}}</td>
        </tr>
        @endforeach
</table>

<p><b>III. RIWAYAT PEKERJAAN</b></p>
<P>1. RIWAYAT KEPANGKATAN GOLONGAN RUANG PENGGAJIAN</P>
<table class="asd" border=1>
        <tr>
            <th>Jenis SK</th>
            <th>Pangkat</th>
            <th>Gol / Ruang</th>
            <th>No SK</th>
            <th>Tgl SK</th>
            <th>TMT SK</th>
            <th>Gaji Pokok</th>
            <th>PAK</th>
        </tr>
        
        @foreach ($kepangkatan as $data)
        <tr>
        	<td>{{$data->jenis_sk}}</td>
            <td>{{$data->pangkat}}</td>
            <td>{{$data->gol_ruang}}</td>
            <td>{{$data->no_sk}}</td>
            <td>{{$data->tgl_sk}}</td>
            <td>{{$data->tmt_sk}}</td>
            <td>{{$data->gaji}}</td>
            <td>{{$data->pak}}</td>
        </tr>
        @endforeach
</table>

<p>2. RIWAYAT JABATAN </p>
<table class="asd" border=1>
        <tr>
            <th>Jabatan</th>
            <th>TMT</th>
            <th>Gol / Ruang</th>
            <th>Gaji Pokok</th>
            <th>Surat Keputusan</th>
        </tr>
        @foreach ($jabatan as $data)
        <tr>
        	<td>{{$data->jabatan}}</td>
            <td>{{$data->tmt}}</td>
            <td>{{$data->gol_ruang}}</td>
            <td>{{$data->gaji_pokok}}</td>
            <td>{{$data->surat_keputusan}}</td>
            
        </tr>
        @endforeach
</table>
<p><b>IV. Tanda Jasa / Penghargaan</b></p>
<table class="asd" border=1>
        <tr>
            <td>Jenis</td>
            <td>Nama Penghargaan</td>
            <td>Tahun</td>
            <td>Pemberi</td>
        </tr>
        @foreach ($jasa as $data)
        <tr>
        	<td>{{$data->jenis}}</td>
            <td>{{$data->nama_tanda_jasa_penghargaan}}</td>
            <td>{{$data->tahun}}</td>
            <td>{{$data->pemberi}}</td>
        </tr>
        @endforeach
</table>

<p><b>PENGALAMAN</b></p>
<P>1. KUNJUNGAN KE LUAR NEGERI</P>
<table class="asd" border=1>
        <tr>
            <th>Jenis</th>
            <th>Nama Penghargaan</th>
            <th>Tahun</th>
            <th>Pemberi</th>
        </tr>
        @foreach($kunjungan as $data)
        <tr>
        	<td>{{$data->negara}}</td>
            <td>{{$data->tahun}}</td>
            <td>{{$data->lamanya}}</td>
            <td>{{$data->yg_membiayai}}</td>
        </tr>
        @endforeach
</table>

<p>2. PENGALAMAN MENGAJAR</p>
<table class="asd" border=1>
        <tr>
            <th>Kode MK</th>
            <th>Nama Mata Kuliah</th>
            <th>Jenjang</th>
            <th>Jurusan</th>
            <th>Tahun Akademik</th>
            <th>Semester</th>
            <th>Mulai</th>
            <th>Selesai</th>
        </tr>
        @foreach ($pengalaman as $data)
        <tr>
            <td>{{$data->kode_mk}}</td>
            <td>{{$data->nama_mk}}</td>
            <td>{{$data->jenjang}}</td>
            <td>{{$data->jurusan}}</td>
            <td>{{$data->tahun_akademik}}</td>
            <td>{{$data->semester}}</td>
            <td>{{$data->rentang_mulai}}</td>
            <td>{{$data->rentang_akhir}}</td>
        </tr>
        @endforeach
</table>
<table border="0">
  <tr>
      
  </tr>  
</table>

<table border="1">
    <tr> <th>SK Mengajar</th>
            <th>Tanggal SK</th>
            <th>Jam</th>
            <th>Ruang</th>
            <th>Mengajar Bersama</th>
            <th>Beban SKS</th>
        </tr>
        @foreach($pengalaman as $data)
        <tr>
            
            <td>{{$data->sk_mengajar}}</td>
            <td>{{$data->tgl_sk}}</td>
            <td>{{$data->jam}}</td>
            <td>{{$data->ruang}}</td>
            <td>{{$data->mengajar_bersama}}</td>
            <td>{{$data->sks}}</td>
    </tr>
        @endforeach

</table>
<p>3. PENGALAMAN KEGIATAN PESERTA KONFERENSI/SEMINAR/LOKAKARYA;SIMPOSIUM</p>
<table  border=1>
        <tr>
            <th>Jenis Kegiatan</th>
            <th>Judul Kegiatan</th>
            <th>Penyelenggara</th>
        </tr>
        @foreach ($kegiatanPeserta as $data)
        <tr>
        	<td>{{$data->jenis}}</td>
            <td>{{$data->judul_kegiatan}}</td>
            <td>{{$data->penyelenggara}}</td>
        </tr>
        @endforeach
        
</table>

<p>4. PENGALAMAN KEGIATAN PROFESIONAL PENGABIDAN KEPADA MASYARAKAT</p>
<table class="asd" border=1>
        <tr>
            <th>Jenis Kegiatan</th>
            <th>Judul Kegiatan</th>
            <th>Penyelenggara</th>
        </tr>
        @foreach ($kegiatanProfesional as $data)
        <tr>
            <td>{{$data->jenis}}</td>
            <td>{{$data->judul_kegiatan}}</td>
            <td>{{$data->penyelenggara}}</td>
        </tr>
        @endforeach
        
</table>

<p>4. PENGALAMAN MEMBIMBING MAHASISWA</p>
<table class="asd" border=1>
        <tr>
            <th>Jenis Bimbingan</th>
            <th>Nama Mahasiswa</th>
            <th>SK</th>
            <th>Tanggal Mulai</th>
            <th>Tanggal Selesai</th>
            <th>Jumlah Pertemuan</th>
        </tr>
        @foreach ($bimbingan as $data)
        <tr>
        	<td>{{$data->jenis_bimbingan}}</td>
        	<td>{{$data->nama_mahasiswa}}</td>
            <td>{{$data->sk}}</td>
            <td>{{$data->tgl_mulai}}</td>
            <td>{{$data->tgl_akhir}}</td>
            <td>{{$data->jml_pertemuan}}</td>
        </tr>
        @endforeach
</table>

<p><b>VI. PENELITITAN/KARYA ILMIAH</b></p>
<P>1. Pengalaman Penelitian</P>
<table class="asd" border=1>
        <tr>
            <th>Tahun</th>
            <th>Judul Penelitian</th>
            <th>Jabatan</th>
            <th>Sumber Dana</th>
        </tr>
        @foreach ($penelitian as $data)
        <tr>
        	<td>{{$data->tahun}}</td>
        	<td>{{$data->judul_penelitian}}</td>
            <td>{{$data->jabatan}}</td>
            <td>{{$data->sumber_dana}}</td>
        </tr>
        @endforeach
</table>

<p>2. Karya TULIS ILMIAH(A) BUKU/BAB/JURNAL</p>
<table class="asd" border=1>
        <tr>
            <th>Jenis Karya Ilmiah</th>
            <th>Tahun</th>
            <th>Judul</th>
            <th>Penyelenggara</th>
        </tr>
        @foreach ($karyaA as $data)
        <tr>
        	<td>{{$data->jenis}}</td>
        	<td>{{$data->tahun}}</td>
            <td>{{$data->judul}}</td>
            <td>{{$data->penyelenggara}}</td>
        </tr>
        @endforeach
</table>
<p>2. Karya TULIS ILMIAH(B) MAKALAH/POSTER</p>
<table class="asd" border=1>
        <tr>
            <th>Jenis Karya Ilmiah</th>
            <th>Tahun</th>
            <th>Judul</th>
            <th>Penyelenggara</th>
        </tr>
        @foreach ($karyaB as $data)
        <tr>
            <td>{{$data->jenis}}</td>
            <td>{{$data->tahun}}</td>
            <td>{{$data->judul}}</td>
            <td>{{$data->penyelenggara}}</td>
        </tr>
        @endforeach
</table>

<p>2. Karya TULIS ILMIAH(C) PENYUNTING/EDITOR/REVIEWER/RESENSI</p>
<table class="asd" border=1>
        <tr>
            <th>Jenis Karya Ilmiah</th>
            <th>Tahun</th>
            <th>Judul</th>
            <th>Penyelenggara</th>
        </tr>
        @foreach ($karyaC as $data)
        <tr>
            <td>{{$data->jenis}}</td>
            <td>{{$data->tahun}}</td>
            <td>{{$data->judul}}</td>
            <td>{{$data->penyelenggara}}</td>
        </tr>
        @endforeach
</table>

<p><b>VII. DATA KELUARGA</b></p>
<P>1.  Suami/Isteri</P>
<table class="asd" border=1>
        <tr>
            <th>Nama</th>
            <th>Tgl Lahir</th>
            <th>Tempat Lahir</th>
            <th>Tgl Nikah</th>
            <th>Pekerjaan</th>
            <th>Keterangan</th>
        </tr>
        @foreach($keluarga as $data)
        <tr>
        	<td>{{$data->nama}}</td>
        	<td>{{$data->tgl_lahir}}</td>
            <td>{{$data->tempat_lahir}}</td>
            <td>{{$data->tgl_nikah}}</td>
            <td>{{$data->pekerjaan}}</td>
            <td>{{$data->keterangan}}</td>
        </tr>
        @endforeach
</table>
<p>2.  Anak</p>
<table class="asd" border=1>
        <tr>
            <th>Nama</th>
            <th>Tgl Lahir</th>
            <th>Tempat Lahir</th>
            <th>Tgl Nikah</th>
            <th>Pekerjaan</th>
            <th>Keterangan</th>
        </tr>
        @foreach($anak as $data)
        <tr>
        	<td>{{$data->nama}}</td>
        	<td>{{$data->tgl_lahir}}</td>
            <td>{{$data->tempat_lahir}}</td>
            <td>{{$data->tgl_nikah}}</td>
            <td>{{$data->pekerjaan}}</td>
            <td>{{$data->keterangan}}</td>
        </tr>
        @endforeach
</table>
<p><b>3. Orang Tua</b></p>
<table class="asd" border=1>
        <tr>
            <th>NAMA</th>
            <th >TANGGAL LAHIR </th>
            <th >PEKERJAAN </th>
            <th >KETERANGAN </th>
            
        </tr>
        @foreach($orangtua as $data)
        <tr>
        	<td>{{$data->nama}}</td>
        	<td>{{$data->tgl_lahir}}</td>
            <td>{{$data->pekerjaan}}</td>
            <td>{{$data->keterangan}}</td>
            
        </tr>
        @endforeach
</table>

<p><b>4. Mertua</b></p>
<table class="asd" border=1>
        <tr>
            <th>NAMA</th>
            <th >TANGGAL LAHIR </th>
            <th >PEKERJAAN </th>
            <th >KETERANGAN </th>
            
        </tr>
        @foreach($mertua as $data)
        <tr>
            <td>{{$data->nama}}</td>
            <td>{{$data->tgl_lahir}}</td>
            <td>{{$data->pekerjaan}}</td>
            <td>{{$data->jenis}}</td>
            <td>{{$data->keterangan}}</td>
            
        </tr>
        @endforeach
</table>

<p> 5. Saudara Kandung </p>
<table class="asd" border=1>
        <tr>
            <th>Nama</th>
            <th>Jenis Kelamin</th>
            <th>Tgl Lahir</th>
            <th>Pekerjaan</th>
            <th>Keterangan</th>
            
        </tr>
        @foreach($saudara as $data)
        <tr>
        	<td>{{$data->nama}}</td>
        	<td>{{$data->jk}}</td>
            <td>{{$data->tgl_lahir}}</td>
            <td>{{$data->pekerjaan}}</td>
            <td>{{$data->keterangan}}</td>
            
        </tr>
        @endforeach
</table>

<p><b> VII. KETERANGAN ORGANISASI</b></p>
<p><b> 1. KETERANGAN ORGANISASI SLTA KE BAWAH</b></p>
<table class="asd" border=1>
        <tr>
            <th >NAMA< ORGANISASI</th>
            <th >KEDUDUKAN DALAM ORGANISASI</th>
            <th >DALAM TAHUN S/D TAHUN</th>
            <th >TEMPAT </th>
            <th >NAMA PIMPINAN </th>
            
        </tr>
        @foreach ($organisasislta as $data)
        <tr>
        	<td>{{$data->jenis}}</td>
        	<td>{{$data->nama_organisasi}}</td>
            <td>{{$data->kedudukan}}</td>
            <td>{{$data->tempat}}</td>
            <td>{{$data->nama_pimpinan}}</td>
            
        </tr>
        @endforeach
</table>

<p><b> 2. KETERANGAN ORGANISASI SEMASA KULIAH</b></p>
<table class="asd" border=1>
        <tr>
            <th >NAMA< ORGANISASI</th>
            <th >KEDUDUKAN DALAM ORGANISASI</th>
            <th >DALAM TAHUN S/D TAHUN</th>
            <th >TEMPAT </th>
            <th >NAMA PIMPINAN </th>
            
        </tr>
        @foreach ($organisasikuliah as $data)
        <tr>
            <td>{{$data->jenis}}</td>
            <td>{{$data->nama_organisasi}}</td>
            <td>{{$data->kedudukan}}</td>
            <td>{{$data->tempat}}</td>
            <td>{{$data->nama_pimpinan}}</td>
            
        </tr>
        @endforeach
</table>

<p><b> 3. KETERANGAN ORGANISASI DI LINGKUNGAN KERJA</b></p>
<table class="asd" border=1>
        <tr>
            <th >NAMA< ORGANISASI</th>
            <th >KEDUDUKAN DALAM ORGANISASI</th>
            <th >DALAM TAHUN S/D TAHUN</th>
            <th >TEMPAT </th>
            <th >NAMA PIMPINAN </th>
            
        </tr>
        @foreach ($organisasipegawai as $data)
        <tr>
            <td>{{$data->jenis}}</td>
            <td>{{$data->nama_organisasi}}</td>
            <td>{{$data->kedudukan}}</td>
            <td>{{$data->tempat}}</td>
            <td>{{$data->nama_pimpinan}}</td>
            
        </tr>
        @endforeach
</table>




	</div>
	</div>
<P>DEMIKIAN DAFTAR RIWAYAT INI SAYA BUAT DENGAN SESUNGGUHNYA, DAN APABILA DIKEMUDAIN HARI TERDAPAT KETERANGAN YANG TIDAK BENAR, SAYA BERSEDIA DI TUNTUT DI MUKA PENGADILAN SERTA BERSEDIA MENERIMA SEGALA TINDAKAN YANG DIAMBIL PEMERINTAH</P>

<?php
function tgl_indo($tanggal){
    $bulan = array (
        1 =>   
        'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
    );
    $pecahkan = explode('-', $tanggal);
    
    // variabel pecahkan 0 = tanggal
    // variabel pecahkan 1 = bulan
    // variabel pecahkan 2 = tahun

    return $pecahkan[2] . ' ' . $bulan[ (int)$pecahkan[1] ] . ' ' . $pecahkan[0];
}
?>

<div align="right">
    <table  width="450">
        <tr>
            <th> Bandung {{tgl_indo(date('Y-m-d')) }} </th>
        </tr>
        <tr >
            <td colspan="2" align="center"></td>
            <td colspan="2" align="center"></td>
            
        </tr>
        <tr >
            <td colspan="2" align="center"></td>
            <td colspan="2" align="center"></td>
            
        </tr>
        <tr >
            <td colspan="2" align="center"></td>
            <td colspan="2" align="center"></td>
            
        </tr>
        <tr >
            <td colspan="2" align="center"></td>
            <td colspan="2" align="center"></td>
            
        </tr>
        <tr >
            <td colspan="2" align="center"></td>
            <td colspan="2" align="center"></td>
            
        </tr>
        <tr >
            <td colspan="2" align="center">___________________</td>
        </tr> 
        <tr><th>NIP {{$pegawai->nip}} </th> </tr>
    </table>    
</div>
