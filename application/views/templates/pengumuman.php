<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>
    <link rel="icon" href="<?= base_url('assets/img/xto.ico'); ?>">


    <style>
        @media print { body { -webkit-print-color-adjust: exact; } }
    </style>
</head>
<body>
    <img src="<?= base_url('assets/img/akt.png'); ?>" width="250" alt=""> <br><br>
    <h2>Pengumuman Reminder Kontrak</h2>
    <hr>
    <h3>Bagi karyawan dengan nama-nama berikut, mohon untuk kedatangannya di office menemui HRD untuk penandatanganan kontrak kerja.</h3>

    <div class="table-responsive">
        <table border="1" style="border: 1px solid black; text-align: center; border-collapse: collapse">
            <thead>
                <tr  style="background: yellow; color: ;">
                    <th width="30">No.</th>
                    <th width="50">NIP</th>
                    <th width="310" >NAMA</th>
                    <th width="100">DEPT</th>
                    <th width="100">POS</th>
                    <th width="100">HABIS KONTRAK</th>

                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                if ($karyawan) :
                    foreach ($karyawan as $row) :
                ?>
                        <tr>
                            <td style="padding: 5px;"><?= $no++; ?></td>
                            <td style=""><?=$row['nik_akt'] ?></td>
                            <td style="text-align: left;"><?=$row['nama'] ?></td>
                            <td style=""><?=$row['dept'] ?></td>
                            <td style=""><?=$row['post'] ?></td>
                            <td style="background: #F54E49; ;"><?=$row['end_kontrak'] ?></td>
                         
                        </tr>
                    <?php endforeach;
                else : ?>
                    <tr>
                        <td colspan="9" class="text-center">Silahkan tambahkan Karyawan baru</td>
                    </tr>
                <?php endif; ?>
            </tbody>

            
        </table><br><br>
        TTD HRD <br>PT AKT INDONESIA 
            <br><br><br><br>
            <?php foreach ($nama_hrd as $hrd) : ?>
            <?php echo $hrd->nama_hrd; ?>
        <?php endforeach; ?>  
             

    </div>
<script>
    window.print();
</script>

    
</body>
</html>