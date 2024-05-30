<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>
    <link rel="icon" href="<?= base_url('assets/img/xto.ico'); ?>">


    <style>
        @media print {
            body {
                -webkit-print-color-adjust: exact;
            }
        }

        body {
            margin: 0;
            padding: 0;
            background-color: #FAFAFA;
            font: 12pt "Tahoma";
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
    <br>
    <img src="<?= base_url('assets/img/akt.png'); ?>" width="250" alt=""> <br><br>
    <?= form_open('', [], ['id' => $karyawan['id']]); ?>

    <center>
        <h1> PERJANJIAN KONTRAK KERJA <br>
            <h2> (<?= set_value('status_pkwt', $karyawan['status_pkwt']); ?>) <br></h2>

        </h1> <br><br><br><br><br><br><br>


        <h2> NAMA: <?= set_value('nama', $karyawan['nama']); ?> <br></h2>

        <h2> ID : <?= set_value('nik_akt', $karyawan['nik_akt']); ?></h2><br><br><br><br><br><br><br><br><br>

        <h2><u>
                PERIODE <br><br>

                <?= date("d M Y", strtotime($karyawan['start_kontrak'])); ?> – <?= date("d M Y", strtotime($karyawan['end_kontrak'])); ?>
            </u></h2>


        <br><br><br><br><br><br><br><br>
        PIER, Jalan Rembang Industri Raya, No. 45, Rembang, Pasuruan Indonesia
    </center>
    <?= form_close(); ?>


</body>

</html>
<script>
    window.print();
</script>