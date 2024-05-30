<?= $this->session->flashdata('pesan'); ?>
<div class="card shadow-sm mb-4 border-bottom-primary">
    <div class="card-header bg-white py-3">
        <div class="row">
            <div class="col">
                <h4 class="h5 align-middle m-0 font-weight-bold text-primary">
                    Data Reminder PKWT
                </h4>
            </div>
            <div class="col-auto">
                <a href="<?= base_url('pkwt/pengumuman') ?>" target="_blank" class="btn btn-sm btn-primary btn-icon-split">
                    <span class="icon">
                        <i class="fa fa-print"></i>
                    </span>
                    <span class="text">
                        Print Reminder PKWT Karyawan
                    </span>
                </a>
            </div>
        </div>
    </div>
    <div class="table-responsive">
        <table class="table table-striped dt-responsive nowrap" id="dataTable">
            <thead>
                <tr>
                    <th width="30">No.</th>
                    <th>nik_akt</th>
                    <th>nama</th>
                    <th>status_pkwt</th>
                    <th>divisi</th>
                    <th>dept</th>
                    <th>post</th>
                    <th style="background:#88FA88; color: white;">start_kontrak</th>
                    <th style="background: #F54E49; color: white;">end_kontrak</th>
                    <th>keterangan</th>


                    <th>Aksi</th>
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
                            <td><?=$row['divisi'] ?></td>
                            <td><?=$row['dept'] ?></td>
                            <td><?=$row['post'] ?></td>
                            <td style="background: #88FA88; color: white;"><?=$row['start_kontrak'] ?></td>
                            <td style="background: #F54E49; color: white;"><?=$row['end_kontrak'] ?></td>
                            
                            <td><?=$row['keterangan'] ?></td>
                            

                            <td>
                            <a href="<?= base_url('karyawan/edit/') . $row['id'] ?>" class="btn btn-circle btn-sm btn-primary"><i class="fa fa-fw fa-save"></i></a>
                                <a href="<?= base_url('karyawan/edit/') . $row['id'] ?>" class="btn btn-circle btn-sm btn-danger"><i class="fa fa-fw fa-edit"></i></a>
                                <a href="<?= base_url('pkwt/print_pkwt/') . $row['id'] ?>" class="btn btn-circle btn-sm btn-warning" target="_blank"><i class="fa fa-fw fa-print"></i></a>
                                <a href="<?= base_url('pkwt/riwayat_pkwt/') . $row['id'] ?>" class="btn btn-circle btn-sm btn-success"><i class="fa fa-fw fa-folder"></i></a>

                            </td>
                            
                        </tr>
                    <?php endforeach;
                else : ?>
                    <tr>
                        <td colspan="19" class="text-center">Silahkan tambahkan Karyawan baru</td>
                    </tr>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
</div>