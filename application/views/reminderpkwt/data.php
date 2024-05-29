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
                <a href="<?= base_url('karyawan/add') ?>" class="btn btn-sm btn-primary btn-icon-split">
                    <span class="icon">
                        <i class="fa fa-user-plus"></i>
                    </span>
                    <span class="text">
                        Tambah Karyawan
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
                    foreach ($karyawan as $karyawani) :
                ?>
                        <tr>
                            <td><?= $no++; ?></td>
                            <td><?=$karyawani['nik_akt'] ?></td>
                            <td><?=$karyawani['nama'] ?></td>
                            <td><?=$karyawani['status_pkwt'] ?></td>
                            <td><?=$karyawani['divisi'] ?></td>
                            <td><?=$karyawani['dept'] ?></td>
                            <td><?=$karyawani['post'] ?></td>
                            <td style="background: #88FA88; color: white;"><?=$karyawani['start_kontrak'] ?></td>
                            <td style="background: #F54E49; color: white;"><?=$karyawani['end_kontrak'] ?></td>
                            
                            <td><?=$karyawani['keterangan'] ?></td>
                            

                            <td>

                                <a href="<?= base_url('karyawan/edit/') . $karyawani['id'] ?>" class="btn btn-circle btn-sm btn-warning"><i class="fa fa-fw fa-edit"></i></a>
                                <a onclick="return confirm('Yakin ingin menghapus data?')" href="<?= base_url('karyawan/delete/') . $karyawani['id'] ?>" class="btn btn-circle btn-sm btn-danger"><i class="fa fa-fw fa-trash"></i></a>
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