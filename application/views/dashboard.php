 <div class="row">

 <?php 
    $p_bulan=date('M');
    $p_bulann=date('m');
    $p_tahun=date('Y');
    $p_hari=date('d');
 ?>


     <?php
        $bulan = format_bulan(date('Y-m-D'));
        $role = $this->session->userdata('login_session')['role'];
        $yang_login = $this->session->userdata('login_session')['nama'];
        ?>
     <div class="col-xl-12 ">
         <div class="card shadow mb-4">
             <!-- Card Header - Dropdown -->
             <div class="card-header bg-success py-3 d-flex flex-row align-items-center justify-content-between">
                 <h3 class="m-0 font-weight-bold text-white">Selamat datang <font style="color:yellow;"><?= $yang_login ?></font> <br> di Sistem Reminder PKWT AKT Indonesia </h3>
             </div>
             <!-- Card Body -->

         </div>
     </div>
     <div class="col-xl-4 col-6 mb-4">
                               <div class="card border-left-danger shadow h-100 py-2">
             <div class="card-body">
                 <div class="row no-gutters align-items-center">
                     <div class="col mr-2">
                         <div class="text-md font-weight-bold text-success text-uppercase mb-1">Reminder End Contract (<?= $bulan; ?>) </div>
                         <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $jumlah_reminder; ?></div>
                     </div>
                     <div class="col-auto">
                         <i class="fas fa-folder fa-2x text-gray-300"></i>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <div class="col-xl-4 col-6 mb-4">
                               <div class="card border-left-primary shadow h-100 py-2">
             <div class="card-body">
                 <div class="row no-gutters align-items-center">
                     <div class="col mr-2">
                         <div class="text-md font-weight-bold text-success text-uppercase mb-1">Jumlah Karyawan Aktif</div>
                         <div class="h5 mb-0 font-weight-bold text-gray-800"> <?= $jumlah_karyawan_aktif; ?> </div>
                     </div>
                     <div class="col-auto">
                         <i class="fas fa-folder fa-2x text-gray-300"></i>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <div class="col-xl-4 col-6 mb-4">
                               <div class="card border-left-warning shadow h-100 py-2">
             <div class="card-body">
                 <div class="row no-gutters align-items-center">
                     <div class="col mr-2">
                         <div class="text-md font-weight-bold text-success text-uppercase mb-1">Jumlah Karyawan Non-Aktif</div>
                         <div class="h5 mb-0 font-weight-bold text-gray-800"> <?= $jumlah_karyawan_naktif; ?> </div>
                     </div>
                     <div class="col-auto">
                         <i class="fas fa-folder fa-2x text-gray-300"></i>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <!-- <div class="col-xl-3 col-6 mb-4">
                               <div class="card border-left-danger shadow h-100 py-2">
             <div class="card-body">
                 <div class="row no-gutters align-items-center">
                     <div class="col mr-2">
                         <div class="text-md font-weight-bold text-primary text-uppercase mb-1">Jumlah PMNT </div>
                         <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $jumlah_pmnt; ?></div>
                     </div>
                     <div class="col-auto">
                         <i class="fas fa-folder fa-2x text-gray-300"></i>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <div class="col-xl-3 col-6 mb-4">
                               <div class="card border-left-warning shadow h-100 py-2">
             <div class="card-body">
                 <div class="row no-gutters align-items-center">
                     <div class="col mr-2">
                         <div class="text-md font-weight-bold text-primary text-uppercase mb-1">Jumlah PMNT-STAFF</div>
                         <div class="h5 mb-0 font-weight-bold text-gray-800"> <?= $jumlah_pmnts; ?> </div>
                     </div>
                     <div class="col-auto">
                         <i class="fas fa-folder fa-2x text-gray-300"></i>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <div class="col-xl-3 col-6 mb-4">
                               <div class="card border-left-primary shadow h-100 py-2">
             <div class="card-body">
                 <div class="row no-gutters align-items-center">
                     <div class="col mr-2">
                         <div class="text-md font-weight-bold text-primary text-uppercase mb-1">Jumlah PKWT</div>
                         <div class="h5 mb-0 font-weight-bold text-gray-800"> <?= $jumlah_pkwt; ?> </div>
                     </div>
                     <div class="col-auto">
                         <i class="fas fa-folder fa-2x text-gray-300"></i>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     

     <div class="col-xl-3 col-6 mb-4">
                               <div class="card border-left-danger shadow h-100 py-2">
             <div class="card-body">
                 <div class="row no-gutters align-items-center">
                     <div class="col mr-2">
                         <div class="text-md font-weight-bold text-primary text-uppercase mb-1">Jumlah PKWT-STAFF </div>
                         <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $jumlah_pkwts; ?></div>
                     </div>
                     <div class="col-auto">
                         <i class="fas fa-folder fa-2x text-gray-300"></i>
                     </div>
                 </div>
             </div>
         </div>
     </div>
     <div class="col-xl-3 col-6 mb-4">
                               <div class="card border-left-warning shadow h-100 py-2">
             <div class="card-body">
                 <div class="row no-gutters align-items-center">
                     <div class="col mr-2">
                         <div class="text-md font-weight-bold text-primary text-uppercase mb-1">Jumlah C4</div>
                         <div class="h5 mb-0 font-weight-bold text-gray-800"> <?= $jumlah_c4; ?> </div>
                     </div>
                     <div class="col-auto">
                         <i class="fas fa-folder fa-2x text-gray-300"></i>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <div class="col-xl-2 col-6 mb-4">
                               <div class="card border-left-warning shadow h-100 py-2">
             <div class="card-body">
                 <div class="row no-gutters align-items-center">
                     <div class="col mr-2">
                         <div class="text-md font-weight-bold text-primary text-uppercase mb-1">Jumlah PHL-4A</div>
                         <div class="h5 mb-0 font-weight-bold text-gray-800"> <?= $jumlah_4a; ?> </div>
                     </div>
                     <div class="col-auto">
                         <i class="fas fa-folder fa-2x text-gray-300"></i>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <div class="col-xl-2 col-6 mb-4">
                               <div class="card border-left-danger shadow h-100 py-2">
             <div class="card-body">
                 <div class="row no-gutters align-items-center">
                     <div class="col mr-2">
                         <div class="text-md font-weight-bold text-primary text-uppercase mb-1">Jumlah PHL-3A </div>
                         <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $jumlah_3a; ?></div>
                     </div>
                     <div class="col-auto">
                         <i class="fas fa-folder fa-2x text-gray-300"></i>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <div class="col-xl-2 col-6 mb-4">
                               <div class="card border-left-primary shadow h-100 py-2">
             <div class="card-body">
                 <div class="row no-gutters align-items-center">
                     <div class="col mr-2">
                         <div class="text-md font-weight-bold text-primary text-uppercase mb-1">Jumlah PHL-2A</div>
                         <div class="h5 mb-0 font-weight-bold text-gray-800"> <?= $jumlah_2a; ?> </div>
                     </div>
                     <div class="col-auto">
                         <i class="fas fa-folder fa-2x text-gray-300"></i>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <div class="col-xl-3 col-6 mb-4">
                               <div class="card border-left-warning shadow h-100 py-2">
             <div class="card-body">
                 <div class="row no-gutters align-items-center">
                     <div class="col mr-2">
                         <div class="text-md font-weight-bold text-primary text-uppercase mb-1">Jumlah PHL-1A</div>
                         <div class="h5 mb-0 font-weight-bold text-gray-800"> <?= $jumlah_1a; ?> </div>
                     </div>
                     <div class="col-auto">
                         <i class="fas fa-folder fa-2x text-gray-300"></i>
                     </div>
                 </div>
             </div>
         </div>
     </div> -->


   

    


    
     <div class="col-xl-6 col-6 mb-4">
         <div class="card border-left-success shadow h-100 py-2">
             <div class="card-body">
                 <div class="row no-gutters align-items-center">
                     <div class="col mr-2">
                         <div class="text-xs font-weight-bold text-success text-uppercase mb-1"></div>
                         <?php date_default_timezone_set("Asia/Jakarta"); ?>

                         <div class="h5 mb-0 font-weight-bold text-gray-800">
                         
                         <div class="table-responsive">
        <table class="table table-striped dt-responsive nowrap" id="">
            <thead>
                <td style="background-color: #0BCBD2; color: white;">STATUS PKWT KARYAWAN</td>  
                <td style="background-color: #0BCBD2; color: white;">JUMLAH</td>  
            </thead>
            <tbody>
                <tr>
                    <td>Jumlah PMNT</td>
                    <td><?= $jumlah_pmnt; ?></td>
                </tr>
                <tr>
                    <td>Jumlah PMNT-STAFF</td>
                    <td><?= $jumlah_pmnts; ?></td>
                </tr><tr>
                    <td>Jumlah PKWT</td>
                    <td><?= $jumlah_pkwt; ?></td>
                </tr><tr>
                    <td>Jumlah PKWT Staff</td>
                    <td><?= $jumlah_pkwts; ?></td>
                </tr><tr>
                    <td>Jumlah  C4</td>
                    <td><?= $jumlah_c4; ?></td>
                </tr><tr>
                    <td>Jumlah 3A</td>
                    <td><?= $jumlah_3a; ?></td>
                </tr><tr>
                    <td>Jumlah 2A</td>
                    <td><?= $jumlah_2a; ?></td>
                </tr><tr>
                    <td>Jumlah 1A</td>
                    <td><?= $jumlah_1a; ?></td>
                </tr>
                
            </tbody>
        </table>
    </div>
                         

                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
     <div class="col-xl-6 col-6 mb-4">
         <div class="card border-left-success shadow h-100 py-2">
             <div class="card-body">
                 <div class="row no-gutters align-items-center">
                     <div class="col mr-2">
                         <div class="text-xs font-weight-bold text-success text-uppercase mb-1"></div>
                         <?php date_default_timezone_set("Asia/Jakarta"); ?>

                         <div class="h5 mb-0 font-weight-bold text-gray-800">
                         
                         <center><img src="assets/img/xto.png" alt="" width="370"></center>

                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>


     

   



 </div>

