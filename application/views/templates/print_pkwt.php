<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>
    <link rel="icon" href="<?= base_url('assets/img/xto.ico'); ?>">


    <style>
        h2,
        h4 {
            text-align: center;
        }

        @media print {

            body {
                margin: 20mm 15mm;
                /* Atur margin halaman cetak */

                -webkit-print-color-adjust: exact;
            }

            .content {
                page-break-inside: avoid;
                text-align: justify;
                margin-top: 70px;
                page-break-inside: avoid;
                /* Hindari memecah konten di tengah halaman */
            }

            /* Atur halaman baru sebelum dan setelah elemen dengan class .page-break */
            .page-break {
                page-break-before: always;
                page-break-after: always;
            }
        }

        header {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            height: 50px;
            /* Adjust the height of your header */
            text-align: left;
            padding: 10pt;
        }

        footer {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            height: 50px;
            /* Adjust the height of your footer */
            text-align: center;
            padding: 10pt;
        }



        /* Atur halaman baru sebelum dan setelah elemen dengan class .page-break */
        .page-break {
            page-break-before: always;
            page-break-after: always;
        }



        body {
            margin: 80px;
            padding: 0;
            background-color: #FAFAFA;
            font: 10pt "Times New Roman";
        }

        * {
            box-sizing: border-box;
            -moz-box-sizing: border-box;
        }

        @page {
            size: A4;
            margin: 0;
        }

        @media print {
            .page {
                margin: 0;
                border: initial;
                border-radius: initial;
                width: initial;
                min-height: initial;
                box-shadow: initial;
                background: initial;
                page-break-after: always;
            }
        }
    </style>
</head>

<body>
<?php 
    $tgl = date('d M Y');
    $hari = date('D');
    $thn = date('Y');

    $bl_th = date('M Y'); ?>
    
    <?= form_open('', [], ['id' => $karyawan['id']]); ?>
    <header>
        <table>
            <tr>
        
                <td>
                <img src="<?= base_url('assets/img/akt.png'); ?>" width="250" alt="">
                </td>
                <td style="width: 280px;"></td>
                <td></td>
            </tr>
        </table>
    </header>

    <center><br><br>
        <h3> PERJANJIAN KERJA WAKTU TERTENTU (PKWT)

        </h3> <br><br>
        
        <h3>NAMA JABATAN : <?= $karyawan['jabatan'] ?></h3><br><br>

        <u><h2> PERIODE WAKTU : <?= date("d M Y", strtotime($karyawan['start_kontrak'])); ?> – <?= date("d M Y", strtotime($karyawan['end_kontrak'])); ?> </h2> </u>
        Salary Per <?= $bl_th;?> : Rp. <?= number_format($karyawan['gaji'],0,',','.'); ?>
        <br><br><br><br><br>
        antara<br><br><br>

        <b style="font-size: 10pt;">PT. AKT INDONESIA</b><br>
        SEBAGAI <br>
        <b style="font-size: 10pt;">PENGUSAHA</b><br><br><br><br>
        DENGAN <br><br><br><br>
        <b style="font-size: 14pt;" ><?= $karyawan['nama'] ?></b><br>
        <b style="font-size: 12pt;">NIK : <?= $karyawan['nik_akt'] ?> </b>
        <hr width="200" style="background-color: black;">
        SEBAGAI <br>
        <b>PEKERJA</b>

        <br><br><br><br><br><br>
        <p style="font-size: 10pt;"><b>PT. AKT Indonesia</b><br>
        Pasuruan <br>
        TAHUN <?= $thn; ?></p>



        
        

      
    </center>

    <div style="page-break-after: always;">
        <!-- Konten yang akan diakhiri di halaman ini -->
    </div>
    <?php
    $tgl = date('d M Y');
    $hari = date('D'); ?>

    <div class="content">
        <center><h3>PERJANJIAN KERJA WAKTU TERTENTU (PKWT)</h3></center><hr>

    <p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Pada hari ini, <?= $hari; ?> Tanggal&nbsp;</span><span style='font-size:10pt;font-family:"times new roman",sans-serif;'><?= $tgl; ?></span><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>&nbsp;para pihak telah bersepakat dan saling menyetujui untuk mengadakan &nbsp;perjanjian kerja waktu tertentu (PKWT) sebagai berikut :</span></p>
<ul>
    <li>
    <table>
    <tr>
        <td style="width: 140px;">Nama</td>
        <td>:</td>
        <td><?php
                            if ($pkwt) :
                                foreach ($pkwt as $row) :
                            ?>
                                    <?= $row['nama_hrd'] ?>
                                <?php endforeach; ?>

                            <?php endif; ?></td>
    </tr>
    <tr>
        <td>Jabatan</td>
        <td>:</td>
        <td>HRD</td>
    </tr>
    <tr>
        <td>Perusahaan</td>
        <td>:</td>
        <td><b>PT. AKT INDONESIA</b></td>
    </tr>
    <tr>
        <td>Jenis Usaha</td>
        <td>:</td>
        <td>Industri Alat Musik Non-Tradisional dan Aksesoris</td>
    </tr>
    <tr>
        <td>Alamat</td>
        <td>:</td>
        <td>Jalan Rembang Industri Raya No. 45, Pier, Rembang, Pasuruan</td>
    </tr>
</table>
    </li>
</ul>




<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Menurut keterangannya dan berdasarkan atas anggaran dasar perseroan dan karenanya sah mewakili serta bertindak untuk dan atas nama perseroan.</span></p>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Selanjutnya di dalam perjanjian ini disebut sebagai <strong><u>PIHAK PERUSAHAAN</u></strong></span></p>

<ul>    
    <li>
    <table>
    <tr>
        <td style="width: 140px;">Nama</td>
        <td>:</td>
        <td><?= $karyawan['nama']; ?></td>
    </tr>
    <tr>
        <td>No. ID</td>
        <td>:</td>
        <td><?= $karyawan['nik_akt']; ?></td>
    </tr>
    <tr>
        <td>Jenis Kelamin</td>
        <td>:</td>
        <td><?= $karyawan['jk']; ?></td>
    </tr>
    <tr>
        <td>Tempat/Tgl Lahir</td>
        <td>:</td>
        <td><?= $karyawan['ttl']; ?></td>
    </tr>
    <tr>
        <td>Alamat</td>
        <td>:</td>
        <td><?= $karyawan['alamat']; ?></td>
    </tr>
</table>
    </li>
</ul>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Menurut keterangannya bertindak untuk dan atas nama diri sendiri.</span></p>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Selanjutnya di dalam perjanjian ini disebut sebagai <strong><u>PIHAK PEKERJA</u> </strong> Para pihak dengan tetap berdasarkan kedudukan/pekerjaannya tersebut diatas terlebih dahulu menerangkan hal-hal sebagai berikut :</span></p>



<ol style="list-style-type: circle;">
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Perusahaan selaku Badan Hukum yang didirikian berdasarkan &nbsp;atas akta notaries nomor : <strong><em>AHU-461.AH.02.01.TAHUN 2011, Tanggal 20 Juni 2011</em></strong> yang telah mendapatkan pengesahan dari Kementerian Hukum dan Hak Azasi Manusia Nomor : <strong><em>AHU-30346.AH.01.02.Tahun 2013</em></strong> adalah perusahaan yang bergerak di bidang produksi alat musik non-tradisional beserta akesesoris lainnya adalah selaku pemberi kerja di dalam menjalankan usahanya membutuhkan beberapa pekerja;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Pekerja adalah calon pekerja berdasarkan permohonannya mengajukan lamaran pekerjaan sebagai pekerja dengan status PKWT kepada pihak kesatu untuk dapat diterima bekerja sebagai calon pekerja dengan status PKWT;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Kesatu membutuhkan keahlian Pihak Kedua sebagai pekerja untuk perjanjian kerja kerja waktu tertentu yang didasarkan atas <span style="color:black;">Sehubungan dengan adanya &nbsp;pekerjaan&nbsp;</span></span><span style='font-family:"times new roman",sans-serif;'>yang berhubungan dengan produk baru, kegiatan baru, atau produk tambahan yang masih dalam percobaan atau penjajakan m</span><span style='font-family:"times new roman",sans-serif;color:black;font-size:10pt;color:black;'>aka diperlukan penambahan tenaga kerja yang bersifat tidak tetap untuk melakukan pekerjaan tambahan</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>;</span></li>
</ol>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Pihak Perusahaan dengan ini menerima Pihak Pekerja untuk dipekerjakan sebagai calon pekerja dan Pihak Pekerja dengan ini menyatakan bersedia untuk bekerja selaku calon pekerja dengan sebaik-baiknya dengan mematuhi segala perintah yang diberikan oleh pihak kesatu dan peraturan perusahaan.Selanjutnya berdasarkan atas hal-hal tersebut diatas maka para pihak telah bersepakat dan saling setuju untuk mengadakan perjanjian kerja 

waktu tertentu (PKWT) berdasarkan ketentuan dan syarat-syarat sebagai berikut:</span></p>


<p style='margin:0cm;margin-bottom:.0001pt;text-align:center;font-size:10pt;font-family:"Times New Roman",serif;'><strong><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>TENTANG PEKERJAAN</span></strong></p>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:center;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Pasal 1</span></p>
<ol style="list-style-type: decimal;margin-left:8px;">
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Perusahaan dengan ini mempekerjakan Pihak Pekerja selaku pekerja dengan waktu kerja tertentu (kontrak) dan ditempatkan pada bagian<strong><em>&nbsp;</em></strong></span><strong><em><span style='font-family:"times new roman",sans-serif;font-size:10pt;'><?= $karyawan['jabatan']; ?></span></em></strong><strong><em><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>.</span></em></strong></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak perusahaan berhak untuk melakukan mutasi / perpindahan tugas, transfer (pergeseran) ,penurunan jabatan (demosi), rotasi (perputaran tugas) pihak pekerja kebagian lain sesuai dengan kebijakan perusahaan;</span></li>
    <li>
        <h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;'><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Pekerja di dalam pelaksanaan perjanjian ini akan bertindak sebagai pekerja yang baik yaitu untuk melakukan atau tidak melakukan segala sesuatu yang dalam keadaan yang sama seharusnya dilakukan atau tidak dilakukan oleh seorang pekerja yang baik;</span></h3>
    </li><br><br><br><br><br><br><br><br><br><br>
    <li>
        <h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;'><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Pekerja selaku pekerja wajib menyampaikan segala laporan atas pekerjaan yang menjadi tugas dan kewenangannya dan selalu akan mengikuti petunjuk-petunjuk ataupun perintah kerja yang diberikan oleh atasan ataupun pimpinan;</span></h3>
    </li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Pekerja memahami dan menerima baik pekerjaan yang diberikan kepadanya dengan syarat-syarat sebagaimana ditentukan di dalam perjanjian kerja waktu tertentu (PKWT), peraturan perusahaan (PP), Standart Operasional Prosedure (SOP) dan dengan ini pekerja berjanji serta mengikatkan diri untuk melakukan pekerjaan itu dengan sebaik-baiknya dan sejujur-jujurnya; untuk itu pekerja akan mencurahkan pula segala kegiatan dan kerajinannya;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Pekerja dengan ini menjamin kepada Pihak Perusahaan bahwa pada saat penandatangan perjanjian ini sampai dengan berakhirnya perjanjian ini atau selama berlangsungnya perjanjian kerja ini tidak sedang terikat oleh adanya hubungan kerja atau bekerja pada perusahaan/badan usaha/perorangan yang dapat mengganggu jalannya pekerjaan pihak Pekerja dan apabila terbukti Pihak Pekerja melanggar hal tersebut maka pekerja bersedia untuk mengundurkan diri dari seluruh tugas dan tanggungjawab seketika itu dan atau dikenakan sanksi pemutusan hubungan kerja (PHK) dengan tanpa diberikan ganti rugi atas sisa upah dari pejanjian kerja waktu terentu yang belum dijalani.</span></li>
</ol>
<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:center;'><strong><span style='font-family:"times new roman",sans-serif;'>BERLAKUNYA PERJANJIAN</span></strong></h3>
<h3 style='margin-top:0cm;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;text-align:center;'><span style='font-family:"times new roman",sans-serif;'>Pasal 2</span></h3>
<ol style="list-style-type: decimal;margin-left:8px;">
    <li>
        <h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;'><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Para pihak telah sepakat dan saling setuju bahwa perjanjian kerja waktu tertentu (PKWT) ini mulai berlaku terhitung sejak tanggal&nbsp;</span><strong><em><span style='font-family:"times new roman",sans-serif;font-size:10pt;'><?= date("d M Y", strtotime($karyawan['start_kontrak'])); ?></span></em></strong><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>&nbsp;sampai dengan&nbsp;</span><strong><em><span style='font-family:"times new roman",sans-serif;font-size:10pt;'><?= date("d M Y", strtotime($karyawan['end_kontrak'])); ?></span></em></strong><span style='font-family:"times new roman",sans-serif;'>&nbsp;</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>atau selama&nbsp;</span><strong><em><span style='font-family:"times new roman",sans-serif;'><?= $karyawan['periode']; ?></span></em></strong><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>&nbsp;dan pengakhiran perjanjian ini tidak diperlukan adanya penetapan tertulis pemutusan hubungan kerja dari Lembaga Penyelesaian Perselisihan Hubungan Industrial;</span></h3>
    </li>
    <li>
        <h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;'><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak pekerja telah sepakat dan setuju terhadap Pihak Perusahaan bahwa perjanjian kerja waktu tertentu ini akan berakhir demi hukum dengan selesainya jangka waktu yang diperjanjikan.</span></h3>
    </li>
</ol>

<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:center;'><strong><span style='font-family:"times new roman",sans-serif;'>LOKASI TEMPAT KERJA</span></strong></h3>
<h3 style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;text-align:center;'><span style='font-family:"times new roman",sans-serif;'>Pasal 3</span></h3>
<p style='margin-top:0cm;margin-right:0cm;margin-bottom:10.0pt;margin-left:18.0pt;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;text-align:justify;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Bahwa Pihak Pekeja telah sepakat dan setuju terhadap Pihak Pengusaha untuk dipekerjakan atau ditempatkan bekerja di perusahaan pihak Pengusaha yang berlokasi di <strong><em>Pasuruan</em></strong> dan ditempatkan pada bagian&nbsp;</span><strong><em><span style='font-size:10pt;font-family:"times new roman",sans-serif;'><?= $karyawan['jabatan']; ?></span></em></strong><strong><em><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>.</span></em></strong></p>
<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:center;'><strong><span style='font-family:"times new roman",sans-serif;'>HARI KERJA DAN JAM KERJA</span></strong></h3>
<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:center;'><span style='font-family:"times new roman",sans-serif;'>Pasal 4</span></h3>
<ol style="list-style-type: decimal;margin-left:8px;">
    <li>
        <h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;'><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Hari kerja pihak Pekeja apabila tidak ditentukan lain oleh pihak Perusahaan adalah 5 hari kerja dan 2 hari libur ataupun waktu-waktu sesuai tuntutan pekerjaan. Jam kerja adalah waktu produktif yang digunakan sepenuhnya untuk produksi, waktu persiapan memulai pekerjaan dan waktu persiapan mengakhiri pekerjaan dilakukan diluar jam kerja produktif;</span></h3>
    </li>
    <li>
        <h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;'><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Mengingat sifat pekerjaan yang harus dijalankan secara terus menerus maka hari libur Pihak Pekerja tidak mengikuti kalender resmi pemerintah namun di dasarkan atas schedule kerja yang telah ditentukan oleh perusahaan &nbsp;dimana di dalamnya telah ditentukan &nbsp;pula hari libur pihak Kedua pekerja dengan jumlah sesuai sebagaimana ditentukan di dalam peraturan perundang-undangan yang berlaku;</span></h3>
    </li>
    <li>
        <h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;'><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Jam kerja pihak Pekerja apabila tidak ditentukan lain oleh pihak Perusahaan dalam 1 minggu adalah 40 jam kerja, dimana ketentuan berlakunya &nbsp;jam kerja tersebut setiap harinya akan ditentukan oleh Pihak Perusahaan;</span></h3>
    </li>
</ol>
<p style='margin-top:0cm;margin-right:0cm;margin-bottom:10.0pt;margin-left:18.0pt;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;text-align:justify;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Apabila dibutuhkan oleh pihak Pengusaha atau oleh karena kebutuhan operasional perusahaan dengan menyimpang ketentuan tersebut diatas maka pihak Pekerja wajib dan untuk itu bersedia untuk bekerja menyimpang dari ketentuan sebagaimana tersebut diatas dan melebihi jam kerja;</span></p><br><br><br><br><br><br><br><br><br>
<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:center;'><strong><span style='font-family:"times new roman",sans-serif;'>UPAH LEMBUR</span></strong></h3>
<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:center;'><span style='font-family:"times new roman",sans-serif;'>Pasal 5</span></h3>
<h3 style='margin-top:0cm;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;text-align:justify;'><span style='font-family:"times new roman",sans-serif;'>Tata cara penghitungan upah lembur dilakukan berdasarkan atas ketentuan hukum yang berlaku.</span></h3>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>&nbsp;</span></p>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:center;font-size:10pt;font-family:"Times New Roman",serif;'><strong><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>TUNJANGAN HARI RAYA</span></strong></p>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:center;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Pasal 6</span></p>
<ol style="list-style-type: decimal;">
    <li><span style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;'>Tunjangan Hari Raya / THR hanya diberikan kepada pekerja dengan masa kerja lebih dari 1 bulan sebelum hari raya.</span></li>
    <li><span style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;'>Tunjangan Hari Raya / THR bagi Pekerja dengan masa kerja lebih dari 1 bulan dan di bawah 1 Tahun,akan di hitung secara proporsional.</span></li>
    <li><span style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;'>Tunjangan Hari Raya / THR bagi Pekerja 1 Tahun atau lebih dibayarkan sebesar 1 kali Gaji</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>.</span></li>
</ol>

<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:center;'><strong><span style='font-family:"times new roman",sans-serif;'>SYARAT-SYARAT KERJA</span></strong></h3>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:center;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Pasal</span><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>&nbsp;</span><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>7</span></p>
<ol style="margin-bottom:0cm;margin-top:0cm;" start="1" type="1">
    <li style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Hak Pekerja.</span>
        <ol style="margin-bottom:0cm;margin-top:0cm;" start="1" type="a">
            <li style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Mendapatkan pekerjaan sebagaimana yang diperjanjikan;</span></li>
            <li style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Mendapatkan upah sebagaimana diperjanjikan;</span></li>
        </ol>
    </li>
</ol>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>&nbsp;</span></p>
<ol style="margin-bottom:0cm;margin-top:0cm;" start="2" type="1">
    <li style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Kewajiban Pekerja.</span></li>
</ol>
<ol style="list-style-type: lower-alpha;">
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Melaksanakan pekerjaan sebagaimana yang diperjanjikan dengan sebaik-baiknya serta sejujur-jujurnya sesuai Standart Operasional Prosedur (SOP) / Job Description / Peraturan Perusahaan (PP) yang telah ditetapkan;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Melaksanakan segala perintah yang diberikan oleh Pimpinan / atasan baik yang bersifat lisan maupun tertulis dengan sebaik-baiknya dan memberikan laporan atas hasil kerja yang telah dilaksanakan tersebut;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Mematuhi segala tata tertib perusahaan, standart operasional prosedur, memo / surat tugas / surat peringatan / teguran yang diberikan pimpinan tanpa kecuali sebagaimana yang telah ditetapkan dengan sebaik-baiknya;</span></li>
</ol>
<ol style="list-style-type: undefined;margin-left:11.600000000000001px;">
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Hak Perusahaan.</span>
        <ol style="list-style-type: lower-alpha;">
            <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Menentukan upah, jenis , tempat pekerjaan yang akan diberikan kepada pekerja tanpa diperlukan persetujuan terlebih dahulu dari pekerja;</span></li>
            <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Memotong upah bulanan berdasarkan absensi karyawan, bila karyawan absen dalam jam kerja untuk melakukan kepentingan pribadi. Dimana perhitungan pemotongan berdasarkan jam kerja diatur dalam peraturan perusahaan.&nbsp;</span></li>
            <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Menentukan mutasi (perpindahan), transfer (pergeseran), demosi (penurunan jabatan), rotasi (perputaran tugas) dari pekerjaan &nbsp;yang satu ke pekerjaan yang lain setiap saat sesuai dengan keadaan / kebutuhan pekerjaan / perusahaan tanpa diperlukan adanya persetujuan dari pekerja terlebih dahulu untuk itu;</span></li>
            <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Menentukan jenis (berat ringan) dan tindakan atas / berupa sanksi yang akan diberikan kepada pekerja , baik berupa tegoran, surat peringatan bertingkat baik tertulis maupun secara lisan maupun melakukan skorsing atau pemberhentian sementara pekerja oleh karena telah melakukan pelanggaran perintah, standart operasional prosedur (SOP) ataupun peraturan perusahaan / kebijakan perusahaan yang telah ditetapkan sesuai dengan akibat perbuatan dan atau berat ringanya dari perbuatan yang dilakukan oleh pekerja tersebut;</span></li>
            <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Menentukan segala kebijakan perusahaan di dalam melakukan pengelolaan / manajemen perusahaan tanpa adanya campur tangan pekerja ataupun pihak lain.</span></li>
        </ol>
    </li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Kewajiban Perusahaan.</span>
        <ol style="list-style-type: lower-alpha;">
            <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Memberikan pekerjaan kepada pekerja sebagaimana yang diperjanjikan;</span></li>
            <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Memberikan upah kepada pekerja sebagaimana ditentukan di dalam perjanjian;</span></li>
            <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Memberikan perintah kerja kepada pekerja setiap saat sesuai dengan keadaan / situasi pekerjaan, standart operasional procedure, peraturan perusahaan, kebijakan perusahaan dan keadaan pekerjaan pada saat itu untuk mencapai tujuan yang telah ditentukan;</span></li>
            <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Memberikan sanksi bersifat pembinaan ataupun tindakan penghukuman kepada Pekerja oleh karena telah melakukan pelanggaran standart operasional pekerjaan (SOP), Peraturan Perusahaan (PP), perintah pimpinan, kebijakan perusahaan sebagaimana yang telah ditentukan;</span></li><br><br><br><br><br><br><br><br>
            <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Memberikan pertimbangan / kebijakan di dalam pelaksanaan pekerjaan agar dapat tercapai hasil yang lebih baik sesuai dengan keadaan / situasi pekerjaan pada saat itu.</span></li>
        </ol>
    </li>
</ol>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><strong><span style='font-size:10pt;font-family:"times new roman",sans-serif;color:black;'>&nbsp;</span></strong></p>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:center;font-size:10pt;font-family:"Times New Roman",serif;'><strong><span style='font-size:10pt;font-family:"times new roman",sans-serif;color:black;'>TATA TERTIB</span></strong></p>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:center;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;color:black;'>Pasal 8</span></p>
<ol style="list-style-type: decimal;margin-left:8px;">
    <li><span style='font-family:"times new roman",sans-serif;'>Pihak Pekerja sanggup dan bersedia untuk mematuhi segala peraturan-peraturan atau ketentuan yang berlaku di perusahaan</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>&nbsp;&nbsp;</span><span style='font-family:"times new roman",sans-serif;'>sebagaimana diatur <span style="color:black;">di dalam</span></span><span style='font-family:"times new roman",sans-serif;color:black;'>&nbsp;</span><span style='font-family:"times new roman",sans-serif;font-size:12.0pt;color:black;'>&nbsp;Peraturan Perusahaan</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>&nbsp;maupun ketentuan-ketentuan lain yang telah ditetapkan dan &nbsp;atau akan ditetapkan di kemudian waktu oleh Pihak Perusahaan;&nbsp;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak pekerja tidak diperkenankan untuk mengikuti serikat pekerja eksternal selama perusahaan memiliki serikat pekerja internal yang beranggotakan pekerja perusahaan itu sendiri.</span></li>
    <li><span style='font-family:"times new roman",sans-serif;'>Pihak Pekerja bertanggung jawab penuh atas tugas-tugas <span style="color:black;">pekerjaan</span> yang berjalan dari waktu ke waktu tanpa terkecuali dan mengingat posisi serta tanggung jawab yang diberikan akan selalu siap bertugas kapanpun dan dimanapun dibutuhkan oleh&nbsp;</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>P</span><span style='font-family:"times new roman",sans-serif;'>ihak&nbsp;</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Perusahaan</span><span style='font-family:"times new roman",sans-serif;'>;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;color:black;font-size:10pt;'>Pihak Pekerja bertanggung jawab serta memelihara barang-barang dan &nbsp;alat &ndash; alat milik Pihak Perusahaan, apabila Pihak Pekerja melakukan kecerobohan baik sengaja maupun tidak disengaja yang mengakibatkan kerusakan atau kehilangan barang milik Pihak Perusahaan maka Pihak Pekerja harus mengganti kerugian tersebut pada Pihak Perusahaan;</span></li>
    <li><span style='line-height:115%;font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak pekerja bersedia bahwa dalam kurun waktu 3 (Tiga) bulan sejak ditandatanganinya perjanjian kerja ini untuk bekerja secara penuh dalam hari kerja efektif yang telah ditentukan oleh perusahaan, dan jika terdapat ketidakhadiran dalam bentuk apapun maka perusahaan hanya akan membayarkan gaji/upah sesuai dengan jumlah hari kehadiran pihak pekerja</span></li>
</ol>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;margin-left:18.0pt;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Pihak pekerja tetap berkewajiban untuk mengajukan izin sebelumnya dan atau menginformasikan/melaporkan ketidakhadirannya kepada atasan langsung atau pihak perusahaan dan kemudian menyerahkan dokumen pendukung atau bukti yang diperlukan selambat-lambatnya pada saat pihak pekerja kembali hadir bekerja, semua bentuk ketidakhadiran pihak pekerja yang tidak mendapat izin, tidak dilaporkan dan atau tidak dilengkapi dokumen yang sah dan bisa dipertanggungjawabkan akan dianggap sebagai mangkir;</span></p>
<div style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'>
    <ol style="margin-bottom:0cm;list-style-type: undefined;margin-left:8px;">
        <li style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-family:"times new roman",sans-serif;'>Bila Pihak Pekerja melanggar peraturan disiplin kerja yang telah ditetapkan oleh Pihak Perusahaan seperti ; &nbsp; absen atau&nbsp;</span><span style="font-size:10pt;;">mangkir</span><span style='font-family:"times new roman",sans-serif;'>&nbsp;kerja</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>, datang terlambat, pulang lebih awal, tidak melakukan check &ndash;clock atau kartu absensi dan lain-lain, maka Pihak Pekerja sanggup menerima sanksi dari Pihak Perusahaan berupa upah tidak akan dibayarkan berdasarkan ketentuan aturan Perusahaan &nbsp;maupun sanksi administrasi &nbsp;</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>berupa&nbsp;</span><span style='font-family:"times new roman",sans-serif;font-size:12.0pt;'>surat peringatan tertulis.</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>&nbsp;</span></li>
    </ol>
</div>
<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:justify;'><strong><span style='font-family:"times new roman",sans-serif;'>&nbsp;</span></strong></h3>

<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:center;'><strong><span style='font-family:"times new roman",sans-serif;'>PENGAKHIRAN PERJANJIAN</span></strong></h3>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:center;font-size:10pt;font-family:"Times New Roman",serif;'><strong><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Pasal&nbsp;</span></strong><strong><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>9</span></strong></p>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:center;font-size:10pt;font-family:"Times New Roman",serif;'><strong><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>&nbsp;</span></strong></p>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Perjanjian kerja waktu tertentu ini akan berakhir apabila :</span></p>
<p style='margin-top:0cm;margin-right:0cm;margin-bottom:.0001pt;margin-left:36.0pt;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;text-align:justify;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>&nbsp;</span></p>
<ol class="decimal_type" style="list-style-type: undefined;">
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Salah satu dari 2 pihak (pihak perusahaan atau pihak pekerja) memutuskan perjanjian kerja waktu tertentu ini;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Masa waktu berlakunya telah berakhir;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pekerja meninggal dunia;</span></li>
</ol>
<p style='margin:0cm;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Pengakhiran perjanjian kerja oleh pihak pekerja :</span></p>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>&nbsp;</span></p>
<ol class="decimal_type" style="list-style-type: undefined;">
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Pekerja yang bekerja kurang dari 30 hari dan bermaksud mengundurkan diri, maka harus memberitahukan kepada Pihak Perusahaan minimal 7 hari kerja sebelum hari pengunduran diri, dan bersedia menerima sanksi administratif berupa pemotongan separuh (50%) atas upah yang seharusnya diterima dihitung dari hari kerja yang sudah dijalani sebelum pengunduran diri;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Pekerja dapat mengakhiri perjanjian ini sewaktu-waktu dengan cara mengajukan pengunduran diri secara tertulis dengan tenggang waktu 30 (tiga puluh) hari&nbsp;</span><span style='font-family:"times new roman",sans-serif;'>kerja&nbsp;</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>komulatif&nbsp;</span><span style='font-family:"times new roman",sans-serif;font-size:12.0pt;'>tanpa memperhitungkan hari libur atau&nbsp;</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>segala bentuk&nbsp;</span><span style='font-family:"times new roman",sans-serif;'>ketidakhadiran&nbsp;</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>lainnya sebelum tanggal pekerja tersebut mengundurkan diri sebagaimana tertera di dalam suratnya;</span></li><br><br><br><br><br><br><br>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Apabila tanggal pengunduran diri telah ditentukan, sebagaimana dimaksud dalam pasal 9.1.1 dan/atau 9.1.2, perhitungan gaji akan menggunakan sistem &ldquo;No Show No Pay&rdquo;, perusahaan bersikeras untuk menerapkan sistem ini agar karyawan tetap bekerja sesuai dengan keinginannya. /Posisinya saat ini sementara perusahaan mempunyai cukup waktu untuk mencari pengganti dan menyerahkan seluruh pekerjaan;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pada saat tanggal pengunduran diri telah diserahkan atau diputuskan, seperti yang tercantum pada Pasal 9.1.1 dan 9.1.2. Maka sistem perhitungan gaji akan berdasarkan &ldquo;no show, no pay&rdquo;, pihak perusahaan bersikeras menerapkan hal ini agar pihak pekerja tetap melaksanakan pekerjaannya hingga tanggal tersebut di atas, dan memberi cukup waktu bagi perusahaan untuk mencari pengganti dan melakukan serah terima jabatan atau pekerjaan.</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Kegagalan pemenuhan kondisi Pengakhiran atas perjanjian kerja waktu tertentu oleh Pihak Pekerja sebagaimana tersebut di Pasal 9.1.2. diatas, berakibat Pihak Pekerja dikenakan sanksi administratif berupa pemotongan sisa upah yang belum dibayarkan sebesar kekurangan pemenuhan 30 (tiga puluh) hari kerja komulatif (pasal 9.2.2.), atau ganti rugi sebesar upah yang disepakati untuk sisa perjanjian kerja waktu tertentu yang belum dijalani;</span></li>
</ol>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Pengakhiran perjanjian kerja oleh pihak pengusaha :</span></p>

<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>&nbsp;</span></p>
<ol class="decimal_type" style="list-style-type: undefined;">
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Perusahaan dapat mengakhiri perjanjian ini sewaktu-waktu apabila pihak Pekerja telah melakukan pelanggaran peraturan perusahaan (PP), standart operasional prosedur (SOP) &nbsp;ataupun peraturan perundang-undangan yang berlaku yang dapat dikenakan sanksi pemutusan hubungan kerja;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak perusahaan dapat mengakhiri perjanjian ini sewaktu-waktu apabila menemukan bukti catatan dan atau rekam medis atas pihak pekerja mengenai kondisi kesehatannya dan pihak pekerja tidak melaporkan kondisi kesehatan yang sebenarnya atau sakit bawaannya kepada perusahaan pada saat penandatanganan perjanjian kerja ini yang berdampak pada ketidakhadiran pihak pekerja;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Apabila pengakhiran perjanjian ini disebabkan oleh pelanggaran sebagaimana tercantum dalam pasal 9.1.4 dan atau 9.1.5. di atas, maka Pihak Pekerja tidak berhak atas sisa upah yang belum dibayarkan dan atau segala bentuk kompensasi lainnya yang seharusnya diterima oleh pekerja tersebut, seperti dan tidak terbatas pada uang pesangon, uang penghargaan masa kerja, uang pisah dan kompensasi lain sebagaimana diatur dalam undang-undang ketenagakerjaan yang berlaku. serta melepaskan pihak perusahaan atas segala bentuk gugatan dan atau konsekuensi hukum yang bisa ditimbulkan setelahnya;</span></li>
</ol>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Pengakhiran perjanjian kerja karena berakhirnya masa waktu perjanjian kerja :</span></p>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>&nbsp;</span></p>
<div style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'>
    <ol style="margin-bottom:0cm;list-style-type: undefined;">
        <li style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Perjanjian ini dengan sendirinya berakhir demi hukum apabila waktu yang diperjanjikan telah terpenuhi sehingga tidak diperlukan adanya penetapan tertulis dari Lembaga penyelesaian Perselisihan Hubungan Industrial;</span></li>
    </ol>
</div>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Pihak perusahaan dan pekerja dengan ini telah bersepakat dan menyetujui bahwa pada saat pengakhiran perjanjian kerja waktu tertentu ini, maka pihak pekerja bersedia melepaskan hak nya sebagai pekerja berupa kewajiban dari pihak perusahaan untuk memberikan kompensasi atas pengakhiran atau berakhirnya perjanjian kerja waktu tertentu y</span><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>ang telah dijalani sesuai dengan peraturan perundang-undangan ketenagakerjaan yang berlaku, dan membebaskan pihak perusahaan atas segala bentuk tuntutan secara hukum di kemudian hari.</span></p>
<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:justify;'><strong><span style='font-family:"times new roman",sans-serif;'>&nbsp;</span></strong></h3>
<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:center;'><strong><span style='font-family:"times new roman",sans-serif;'>JENIS PELANGGARAN YANG DAPAT DIKENAKAN PEMUTUSAN HUBUNGAN KERJA</span></strong></h3>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:center;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Pasal 10</span></p>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Adapun jenis pelanggaran yang dapat dikenakan pemutusan hubungan kerja / PHK tanpa diberikan ganti rugi adalah sebagai berikut :</span></p>
<ol style="list-style-type: decimal;margin-left:8px;">
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Mengambil barang milik perusahaan tanpa melalui procedure yang telah ditentukan untuk dimiliki atau dengan membawa keluar barang tersebut keluar dari perusahaan;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Mengambil barang milik perusahaan yang adanya barang tersebut telah ada pada penguasaannya untuk dimiliki tanpa melalui procedure yang telah ditentukan untuk dimiliki atau dengan membawa keluar barang tersebut keluar dari perusahaan;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Melakukan tindakan dengan cara memberikan informasi yang tidak benar tentang segala sesuatu yang menyangkut orang / pekerja, pekerjaan, hasil pekerjaan ataupun barang inventaris milik perusahaan sehingga menimbulkan kerugian bagi perusahaan;</span></li><br><br><br><br><br><br><br><br><br>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Melakukan tindakan mengancam, kekerasan fisik ataupun menimbulkan keributan di lingkungan perusahaan sehingga menggangu suasana bekerja ataupun ketenangan berusaha dari pengusaha;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Melakukan tindakan merokok di lingkungan perusahaan ataupun menyulut api / membakar barang-barang tidak pada tempat yang telah ditentukan, padahal dapat diduga akan berakibat timbulnya kebakaran di lingkungan perusahaan;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Mengajak teman-teman sekerja untuk melakukan tindakan yang menentang kebijakan perusahaan / perintah pimpinan atau Peraturan Perusahaan (PP) sehingga menimbulkan suasana kerja yang tidak kondusif ataupun tidak harmonis;</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Tidak masuk kerja tanpa alasan yang sah selama 5 hari kerja secara berturut-turut.</span></li>
</ol>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;margin-left:18.0pt;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>&nbsp;</span></p>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:center;font-size:10pt;font-family:"Times New Roman",serif;margin-left:18.0pt;'><strong><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>TENTANG UPAH DAN PPH 21</span></strong></p>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:center;font-size:10pt;font-family:"Times New Roman",serif;margin-left:18.0pt;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Pasal 1</span><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>1</span></p>
<ol style="list-style-type: decimal;margin-left:8px;">
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Perusahaan telah sepakat dan setuju untuk upah Pihak Pekerja &nbsp;diberikan Upah sebesar&nbsp;</span><strong><em><span style='font-family:"times new roman",sans-serif;'>Rp. <?= number_format($karyawan['gaji'],0,',','.'); ?></span></em></strong><strong><em><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>,-</span></em></strong><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>&nbsp;</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>yang akan dibayarkan Tanggal 15 setiap bulan.</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pembayaran upah Pihak Pekerja akan dilakukan sesuai dengan ketentuan perusahaan setelah Pihak Pekerja melaksanakan pekerjaannya terlebih dahulu pada bulan tersebut.</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Tata cara pembayaran atas upah Pihak Pekerja setiap bulannya akan dilakukan dengan cara pembayaran langsung dan atau cara transfer Bank&nbsp;</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>kepada&nbsp;</span><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Pekerja.</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Atas penerimaan upah sebagaimana tersebut diatas maka sesuai dengan ketentuan hukum pajak yang berlaku, apabila telah dapat dikenakan pembayaran wajib pajak penghasilan kepada pihak Pekerja yang besarnya sesuai dengan peraturan perundang-undangan yang berlaku maka akan dilakukan pemotongan langsung atas penerimaan upah setiap bulan dari Pihak pekerja tersebut .</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Apabila Pihak Pekerja tidak hadir bekerja di tempat kerjanya tanpa alasan yang sah (mangkir) , maka upah yang akan diterimanya selama pekerja tidak hadir bekerja sebagaimana tersebut diatas &nbsp;tidak akan dibayarkan oleh Perusahaan.</span></li>
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Hak Cuti Tahunan Pihak Pekerja selama 12 hari kerja pada tahun itu baru akan timbul <strong><u>SETELAH</u></strong> Pihak Kedua bekerja selama 12 bulan secara terus menerus namun apabila ternyata Pihak Pengusaha tidak memperpanjang perjanjian ini sebagaimana tanggal yang tertera di dalam perjanjian ini maka hak cuti tahunan Pihak Pekerja pada tahun itu dengan sendirinya &nbsp;belum ada / belum timbul sebagaimana ditentukan di dalam pasal 79 ayat 2 huruf c UU No.13 Tahun 2003 Tentang Ketenagakerjaan sehingga tidak ada kewajiban hukum Pihak Perusahaan untuk memberikan hak cuti tahunan tersebut.&nbsp;</span></li>
</ol>
<p style='margin-top:0cm;margin-right:0cm;margin-bottom:.0001pt;margin-left:18.0pt;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><strong><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>JAMINAN PIHAK PEKERJA</span></strong></p>
<p style='margin-top:0cm;margin-right:0cm;margin-bottom:.0001pt;margin-left:18.0pt;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>Pasal 1</span><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>2</span></p>
<ol style="list-style-type: decimal;margin-left:8px;">
    <li><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Pekerja dengan ini menjamin kepada Pihak Perusahaan bahwa di dalam pelaksanaan perjanjian kerja waktu tertentu ini tidak akan melakukan tuntutan untuk melakukan perubahan status pekerja dari pekerja waktu tertentu (kontrak) menjadi pekerja tetap;</span></li>
    <li><span style='line-height:115%;font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Pekerja dengan ini berjanji untuk selalu patuh dan taat serta mematuhi segala perintah pimpinan, peraturan perusahaan (PP), Standart Operasional Procedure (SOP) serta peraturan perundang-undangan di bidang ketenagakerjaan.</span></li>
</ol>

<p style='margin-top:0cm;margin-right:0cm;margin-bottom:.0001pt;margin-left:18.0pt;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;text-align:justify;'><strong><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>&nbsp;</span></strong></p>
<p style='margin-top:0cm;margin-right:0cm;margin-bottom:.0001pt;margin-left:18.0pt;line-height:normal;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><strong><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>PERUBAHAN PERJANJIAN</span></strong></p>
<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:center;'><span style='font-family:"times new roman",sans-serif;'>Pasal 1</span><span style='font-family:"times new roman",sans-serif;'>3</span></h3>
<ol style="list-style-type: decimal;margin-left:8px;">
    <li>
        <h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;'><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Pihak Pekerja telah sepakat dan setuju terhadap Pihak Perusahaan untuk tidak melakukan perubahan terhadap isi perjanjian ini atau melakukan tambahan / adendum tanpa adanya kesepakatan tertulis kedua belah pihak terlebih dahulu;</span></h3>
    </li>
    <li>
        <h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;'><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Bahwa terhadap adanya perubahan isi perjanjian ataupun tambahan (adendum) dan lain-lainnya terhadap perjanjian kerja waktu tertentu &nbsp;ini tanpa terlebih dahulu adanya kesepakatan tertulis masing-masing pihak maka berakibat perubahan perjanjian ataupun tambahan (adendum) dan lain-lain tersebut adalah batal demi hukum.</span></h3>
    </li>
</ol><br><br><br><br><br><br><br><br>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:justify;font-size:10pt;font-family:"Times New Roman",serif;'><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>&nbsp;</span></p>
<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:center;'><strong><span style='font-family:"times new roman",sans-serif;'>KESELURUHAN PERJANJIAN</span></strong></h3>
<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:center;'><span style='font-family:"times new roman",sans-serif;'>Pasal 1</span><span style='font-family:"times new roman",sans-serif;'>4</span></h3>
<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:justify;'><span style='font-family:"times new roman",sans-serif;'>Segala surat-menyurat, surat keputusan, standart operasional procedure (SOP) atau dokumen ataupun memo perusahaan dan lain-lain yang berkaitan dengan perjanjian ini adalah merupakan bagian yang tidak terpisahkan dan menjadi satu kesatuan dengan perjanjian ini maupun Peraturan Perusahaan (PP).</span></h3>
<p style='margin:0cm;margin-bottom:.0001pt;text-align:center;font-size:10pt;font-family:"Times New Roman",serif;'><strong><span style='font-size:10pt;font-family:"times new roman",sans-serif;'>PENYELESAIAN KELUH KESAH</span></strong></p>
<h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:.0001pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;margin:0cm;text-align:center;'><span style='font-family:"times new roman",sans-serif;'>Pasal 1</span><span style='font-family:"times new roman",sans-serif;'>5</span></h3>
<ol style="list-style-type: decimal;margin-left:8px;">
    <li>
        <h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;'><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Perbedaan pendapatan/perselisihan/ketidaksepahaman kedua belah pihak di dalam hubungan kerja ini maka para pihak telah sepakat dan saling menyetujui untuk menyelesaikan seluruh persoalan dengan jalan musyawarah mufakat terlebih dahulu diantara pihak-pihak saja;</span></h3>
    </li>
    <li>
        <h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;'><span style='font-family:"times new roman",sans-serif;font-size:10pt;'>Apabila tata cara penyelesaian tersebut diatas ternyata tidak dapat menyelesaian persoalan tersebut maka para pihak telah sepakat dan setuju untuk menyerahkan perselisihan tersebut kepada Mediator Hubungan Industrial ataupun Lembaga Penyelesaian Perselisihan Hubungan Industrial.</span></h3>
    </li>
</ol>
<h3 style='margin-top:0cm;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;text-align:justify;'><span style='font-family:"times new roman",sans-serif;'>Demikian perjanjian kerja waktu tertentu ini dibuat dan ditandatangani oleh para pihak dalam keadaan sehat wal&rsquo;afiat dengan tanpa adanya paksaan dari pihak manapun juga.</span></h3>
<h3 style='margin-top:0cm;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:10pt;font-family:"Arial",sans-serif;font-weight:normal;text-align:justify;'><span style='font-family:"times new roman",sans-serif;'>Para pihak setelah membaca isi perjanjian ini dengan teliti dan seksama maka masing-masing pihak telah membubuhkan tanda-tangan sebagaimana tersebut dibawah ini</span></h3>
    <div>
        <center>
            <table border="0">
                <tr>
                    <td colspan="3">Dibuat di Pasuruan pada <b><?= $tgl; ?></b> </td>

                </tr>
                <tr>
                    <td colspan="3" style="height: 0px;"></td>

                </tr>
                <tr style="text-align: center;">
                    <td style="width: 150px;">Pihak Pertama</td>
                    <td style="width: 300px;"></td>
                    <td style="width: 150px;">Pihak Kedua</td>
                </tr>

                <tr>
                    <td></td>
                    <td style="height: 90px;"></td>
                    <td></td>
                </tr>

                <tr style="text-align: center;">
                    <td>
                        <?php
                        if ($pkwt) :
                            foreach ($pkwt as $row) :
                        ?>
                                <b><?= $row['nama_hrd'] ?></b>
                            <?php endforeach; ?>

                        <?php endif; ?>
                        <br> <i>HRD</i>
                    </td>
                    <td></td>
                    <td><b><?= set_value('nama', $karyawan['nama']); ?></b> </td>
                </tr>
            </table>
        </center>
    </div>



    <footer style="font-size: 9pt;">
        PIER, Jalan Rembang Industri Raya, No. 45, Rembang, Pasuruan Indonesia</footer>

    <?= form_close(); ?>


</body>

</html>
<script>
    window.print();
</script>