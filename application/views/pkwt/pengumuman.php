<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>
</head>
<body>
    <h3>Berikut nama karyawan yang masa kontrak kerja segera habis</h3><br>

    <div class="table-responsive">
        <table class="table table-striped dt-responsive nowrap" id="dataTable122">
            <thead>
                <tr>
                    <th width="30">No.</th>
                    <th>nik_akt</th>
                    <th>nama</th>
                    <th>status_pkwt</th>
                    <th>dept</th>
                    <th>post</th>
                    <th style="background:#88FA88; color: white;">start_kontrak</th>
                    <th style="background: #F54E49; color: white;">end_kontrak</th>

                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                if ($karyawan) :
                    foreach ($karyawan as $row) :
                ?>
                        <tr>
                            <td><?= $no++; ?></td>
                            <td><?=$row['nik_akt'] ?></td>
                            <td><?=$row['nama'] ?></td>
                            <td><?=$row['status_pkwt'] ?></td>
                            <td><?=$row['dept'] ?></td>
                            <td><?=$row['post'] ?></td>
                            <td style="background: #88FA88; color: white;"><?=$row['start_kontrak'] ?></td>
                            <td style="background: #F54E49; color: white;"><?=$row['end_kontrak'] ?></td>
                         
                        </tr>
                    <?php endforeach;
                else : ?>
                    <tr>
                        <td colspan="9" class="text-center">Silahkan tambahkan Karyawan baru</td>
                    </tr>
                <?php endif; ?>
            </tbody>
        </table>
    </div>


    
</body>
</html>