<?= $this->session->flashdata('pesan'); ?>
<div class="card shadow-sm mb-4 border-bottom-primary">
    <div class="card-header bg-white py-3">
        <div class="row">
            <div class="col">
                <h4 class="h5 align-middle m-0 font-weight-bold text-primary">
                    Paklaring
                </h4>
            </div>
            <!-- <div class="col-auto">
                <a href="<?= base_url('karyawan/add') ?>" class="btn btn-sm btn-primary btn-icon-split">
                    <span class="icon">
                        <i class="fa fa-user-plus"></i>
                    </span>
                    <span class="text">
                        Tambah Karyawan
                    </span>
                </a>
            </div> -->
        </div>
    </div>
    <div class="table-responsive">
        <table class="table table-striped dt-responsive nowrap" id="dataTable">
            <thead>
                <tr>
                    <th width="30">No.</th>
                    <th>nik_akt</th>
                    <th>nama</th>
                    <th>TTL</th>
                    <th>alamat</th>



                    <th>jabatan</th>

                    <th>post</th>





                    <th>Print Paklaring</th>
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
                            <td><?= $karyawani['nik_akt'] ?></td>
                            <td><a href="<?= base_url('karyawan/edit/') . $karyawani['id'] ?>" class=""><?= $karyawani['nama'] ?></a></td>
                            <td><?= $karyawani['ttl'] ?></td>
                            <td><?= $karyawani['alamat'] ?></td>


                            <td><?= $karyawani['jabatan'] ?></td>

                            <td><?= $karyawani['post'] ?></td>




                            <td>
                                <form action="<?= base_url('karyawan/submit_paklaring') ?>" method="post">
                                    <input type="hidden" name="nik_akt" value="<?= $karyawani['nik_akt']; ?>">
                                    <div class="form-group">
                                        <label for="tgl_join">Tgl Join</label>
                                        <input class="form-control" style="width: 200px;" type="date" name="tgl_join" value="<?= $karyawani['tgl_join']; ?>" >
                                    </div>
                                    <div class="form-group">
                                        <label for="tgl_keluar">Tgl Keluar</label>
                                        <input class="form-control" style="width: 200px;" type="date" name="tgl_keluar" value="" >
                                    </div>
                                    <div class="form-group">
                                        <label for="alasan_keluar">Alasan Keluar</label>
                                        <textarea class="form-control" style="width: 300px;" type="text" name="alasan_keluar" placeholder="Masukkan alasan"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-sm btn-primary">Print Paklaring</button>
                                </form>

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