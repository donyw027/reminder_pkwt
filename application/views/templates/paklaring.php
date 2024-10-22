<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kontrak_PHL-<?= $karyawan['nik_akt']; ?>-<?= $karyawan['nama']; ?> </title>
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
                margin-top: 90px;
                page-break-inside: avoid;
                /* Hindari memecah konten di tengah halaman */
            }

            header.print-header {
                display: block;
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                height: 50px;
                text-align: center;
                background-color: #f8f8f8;
                border-bottom: 1px solid #ddd;
                padding: 10px 0;
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
            padding: 10px;
        }

        footer {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            height: 50px;
            /* Adjust the height of your footer */
            text-align: center;
            padding: 10px;
        }

        header.print-header {
            display: none;
        }



        /* Atur halaman baru sebelum dan setelah elemen dengan class .page-break */
        .page-break {
            page-break-before: always;
            page-break-after: always;
        }



        body {
            margin: 60px;
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

        th,
        td {
            padding: 12px;
        }
    </style>
</head>

<body style="font-size: 12pt;">
    <?= form_open('', [], ['id' => $karyawan['id']]); ?>
    <header class="print-header" id="1">
        <br><br><br><br><br>
        <button><a href="<?= base_url('karyawan/paklaring') ?>" class="btn  btn-sm btn-primary">Kembali</a></button>
    </header>

    <?php
    $tgl = format_indo(date('Y-m-d'));
    $hari = format_hari(date('Y-m-d'));
    $thn = date('Y');

    $bl_th = date('M Y'); ?>

    <header>
        <table>
            <tr>

                <td>
                    <a href="<?= base_url('karyawan/paklaring') ?>"><img src="<?= base_url('assets/img/akt.png'); ?>" width="250" alt=""></a>
                </td>
                <td style="width: 280px;"></td>
            </tr>
        </table>
    </header>
    <br><br>

    <h2 style="text-align: center;"><u>CERTIFICATE OF EMPLOYMENT</u> <br>
        Surat Pengalaman Kerja
    </h2>

    <table style="margin: 10px;" padding="0px">
        <tr>
            <td style="width: 250px;">
                <u>This is to certify that <br>
                Dengan ini menerangkan bahwa</u>

            </td>
            <td></td>

            <td></td>
        </tr>
        <tr>
            <td>Name/ Nama </td>
            <td>:</td>


            <td><b><?= $karyawan['nama']; ?></b></td>
        </tr>
        <tr>
            <td>Place and Date of /
            <br> Tempat dan Tanggal Lahir</td>
            <td>:</td>

            <td><b><?= $karyawan['ttl']; ?></b></td>
        </tr>
        <tr>
            <td>Address/ Alamat</td>
            <td>:</td>

            <td><b><?= $karyawan['alamat']; ?></b></td>
        </tr>
        <tr>
            <td>Classification/  Jabatan</td>
            <td>:</td>

            <td><b><?= $karyawan['jabatan']; ?> - <?= $karyawan['post']; ?></b></td>
        </tr>

        <tr>
            <td>Start Of Joint/ Tanggal Masuk</td>
            <td>:</td>
            <td><b><?= format_indo(date("Y-m-d", strtotime($tgl_join))); ?></b></td>
        </tr>
        <tr>
            <td>End Of Joint/ Tanggal Keluar </td>
            <td>:</td>

            <td><b><?= format_indo(date("Y-m-d", strtotime($tgl_keluar))); ?></b></td>
        </tr>
        <tr>
            <td>Reason of Leaving/ Alasan Berhenti </td>
            <td>:</td>

            <td><b><?= $alasan_keluar; ?></b></td>
        </tr>
        <tr>
            <td>Kami mengucapkan terima kasih atas usaha dan dedikasinya yang telah anda berikan kepada Perusahaan. Semoga prestasi dan keberhasilan menyertai anda.</td>

            <td></td>

            <td>We would like to take this opportunity to thank you for your effort and contribution to the company. Management wish you success and good luck</td>
        </tr>
    </table>

    <table>
        <tr>
            <td style="width: 400px;"></td>
            <td>
            Pasuruan , <?= format_indo(date("Y-m-d", strtotime($tgl_keluar))); ?>

            <br><br><br><br><br><br>

            <?php foreach ($nama_hrd as $hrd) : ?>
            <?php echo $hrd->nama_hrd; ?>
        <?php endforeach; ?>
            </td>
        </tr>
    </table>



    <footer style="font-size: 9pt;">
        PIER, Jalan Rembang Industri Raya, No. 45, Rembang, Pasuruan Indonesia</footer>

    <?= form_close(); ?>


</body>

</html>
<script>
    window.print();
</script>

<script>
    window.addEventListener('beforeprint', function() {
        const headers = document.querySelectorAll('header.print-header');
        const pages = document.querySelectorAll('.page');
        headers.forEach(header => header.style.display = 'none');

        pages.forEach((page, index) => {
            if (index < 6) { // Only for pages 1 to 6
                const header = headers[index];
                if (header) {
                    const clonedHeader = header.cloneNode(true);
                    clonedHeader.style.display = 'none';
                    page.insertAdjacentElement('afterbegin', clonedHeader);
                }
            }
        });
    });

    window.addEventListener('afterprint', function() {
        const headers = document.querySelectorAll('header.print-header');
        headers.forEach(header => header.style.display = 'block');
    });
</script>