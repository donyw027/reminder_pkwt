<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FORM MAINTENANCE  </title>
    <link rel="icon" href="<?= base_url('assets/img/xto.ico'); ?>">


    <style>
        @page 
    {
        size:  auto;   /* auto is the initial value */
        margin: 0mm;  /* this affects the margin in the printer settings */
    }
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

            /* Atur halaman baru sebelum dan setelah elemen dengan class .page-break */
            .page-break {
                page-break-before: always;
                page-break-after: always;
            }
        }

        



        /* Atur halaman baru sebelum dan setelah elemen dengan class .page-break */
        .page-break {
            page-break-before: always;
            page-break-after: always;
        }



        body {
            margin: 20px;
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
        <h2 style="text-align: left;margin: 0;">PT. AKT INDONESIA</h2> 
        <h2 style="text-align: left; margin: 0px; background-color: #3debe9;">MAINTENANCE DAILY WORKING REPORT</h2> 
        <table>
            <tr>
                <td >NAMA</td>
                <td>:</td>
                <td style="width: 75%;"></td>
                <td>HARI</td>
                <td>:</td>
                <td></td>
            </tr>
            <tr>
                <td>NIK</td>
                <td>:</td>
                <td></td>
                <td>TANGGAL</td>
                <td>:</td>
                <td></td>
            </tr>
        </table>
       
        <table  border="1" style="border: 1px solid black; text-align: center; border-collapse: collapse ;">
            <tr>
                <td rowspan="2" style="width: 30px;">NO</td>
                <td colspan="2" >JAM KERJA</td>
                <td rowspan="2"  style="width: 500px;">DESKRIPSI PEKERJAAN</td>
                
                <td rowspan="2" style="width: 70px;">STATUS</td>
                <td rowspan="2" style="width: 90px;">KONFIRMASI</td>
                <td rowspan="2" style="width: 70px;">USER</td>
            </tr>
            <tr style="height: 30px;">
                <td style="width: 60px;">START</td>
                <td style="width: 60px;">FINISH</td>
                
                
            </tr>
            
            <tr style="height: 28px;">
                <td>1</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td><td></td>
                
            </tr>
            <tr style="height: 28px;">
                <td>2</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>3</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>4</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>5</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>6</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>7</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>8</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>9</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>10</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr>
        </table>
        <b >Remarks :</b>
        <table border="1" style="float: right; margin-top:3px ;border: 1px solid black; text-align: center; border-collapse: collapse ;">
            <tr>
                <td colspan="3"><b>Report Checking</b></td>
            </tr>
            <tr >
                <td style="width: 50px;"><b>HRD</b> <hr> <br><br></td>
                <td style="width: 50px;"><b>FM </b><hr> <br><br></td>
                <td style="width: 50px;"><b>GM </b> <hr><br><br></td>
            </tr>
        </table><br>
<br><br><br><br><br><br>
        <hr>

        <h2 style="text-align: left;margin: 0;">PT. AKT INDONESIA</h2> 
        <h2 style="text-align: left; margin: 0; background-color: #3debe9;">MAINTENANCE DAILY WORKING REPORT</h2> 
        <table>
            <tr>
                <td >NAMA</td>
                <td>:</td>
                <td style="width: 75%;"></td>
                <td>HARI</td>
                <td>:</td>
                <td></td>
            </tr>
            <tr>
                <td>NIK</td>
                <td>:</td>
                <td></td>
                <td>TANGGAL</td>
                <td>:</td>
                <td></td>
            </tr>
        </table>
        <table  border="1" style="border: 1px solid black; text-align: center; border-collapse: collapse ;">
            <tr>
                <td rowspan="2" style="width: 30px;">NO</td>
                <td colspan="2" >JAM KERJA</td>
                <td rowspan="2"  style="width: 500px;">DESKRIPSI PEKERJAAN</td>
                
                <td rowspan="2" style="width: 70px;">STATUS</td>
                <td rowspan="2" style="width: 90px;">KONFIRMASI</td>
                <td rowspan="2" style="width: 70px;">USER</td>
            </tr>
            <tr style="height: 30px;">
                <td style="width: 60px;">START</td>
                <td style="width: 60px;">FINISH</td>
                
                
            </tr>
            
            <tr style="height: 28px;">
                <td>1</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td><td></td>
                
            </tr>
            <tr style="height: 28px;">
                <td>2</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>3</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>4</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>5</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>6</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>7</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>8</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>9</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr><tr style="height: 28px;">
                <td>10</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                
            </tr>
        </table>
        <b >Remarks : </b>
        <table border="1" style="float: right; margin-top:3px ; border: 1px solid black; text-align: center; border-collapse: collapse ;">
        <tr>
                <td colspan="3"><b>Report Checking</b></td>
            </tr>
            <tr >
                <td style="width: 50px;"><b>HRD</b> <hr> <br><br></td>
                <td style="width: 50px;"><b>FM </b><hr> <br><br></td>
                <td style="width: 50px;"><b>GM </b> <hr><br><br></td>
            </tr>
        </table>
        
</body>

</html>
<script>
    window.print();
</script>