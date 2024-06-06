<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="card shadow-sm mb-4 border-bottom-primary">
            <div class="card-header bg-white py-3">
                <div class="row">
                    <div class="col">
                        <h4 class="h5 align-middle m-0 font-weight-bold text-primary">
                            Form <?= $title; ?>
                        </h4>
                    </div>
                    <div class="col-auto">
                        <a href="<?= base_url('karyawan') ?>" class="btn btn-sm btn-secondary btn-icon-split">
                            <span class="icon">
                                <i class="fa fa-arrow-left"></i>
                            </span>
                            <span class="text">
                                Kembali
                            </span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body pb-2">
                <?= $this->session->flashdata('pesan'); ?>
                <?= form_open('', [], ['id' => $karyawan['id']]); ?>

                <div class="row">

                    <div class="col-6">
                        <div class="row form-group">
                            <label class="col-4 text-md-right" for="nik_akt">nik_akt</label>
                            <div class="col-md-8">
                                <input value="<?= set_value('nik_akt', $karyawan['nik_akt']); ?>" type="text" id="nik_akt" name="nik_akt" class="form-control" placeholder=" Masukan nik_akt">
                                <?= form_error('nik_akt', '<span class="text-danger small">', '</span>'); ?>
                            </div>
                        </div>

                        <div class="row form-group">
                            <label class="col-4 text-md-right" for="nama">nama</label>
                            <div class="col-md-8">
                                <input value="<?= set_value('nama', $karyawan['nama']); ?>" type="text" id="nama" name="nama" class="form-control" placeholder=" Masukan nama">
                                <?= form_error('nama', '<span class="text-danger small">', '</span>'); ?>
                            </div>
                        </div>

                        <div class="row form-group">
                            <label class="col-4 text-md-right" for="status_pkwt">status_pkwt</label>
                            <div class="col-md-8">
                                <input value="<?= set_value('status_pkwt', $karyawan['status_pkwt']); ?>" type="text" id="status_pkwt" name="status_pkwt" class="form-control" placeholder=" Masukan status_pkwt">
                                <?= form_error('status_pkwt', '<span class="text-danger small">', '</span>'); ?>
                            </div>
                        </div>

                        <div class="row form-group">
                            <label class="col-4 text-md-right" for="divisi">divisi</label>
                            <div class="col-md-8">
                                <input value="<?= set_value('divisi', $karyawan['divisi']); ?>" type="text" id="divisi" name="divisi" class="form-control" placeholder=" Masukan divisi" disabled>
                                <?= form_error('divisi', '<span class="text-danger small">', '</span>'); ?>
                            </div>
                        </div>

                        <div class="row form-group">
                            <label class="col-4 text-md-right" for="jabatan">jabatan</label>
                            <div class="col-md-8">
                                <input value="<?= set_value('jabatan', $karyawan['jabatan']); ?>" type="text" id="jabatan" name="jabatan" class="form-control" placeholder=" Masukan jabatan">
                                <?= form_error('jabatan', '<span class="text-danger small">', '</span>'); ?>
                            </div>
                        </div>

                        <div class="row form-group">
                            <label class="col-4 text-md-right" for="dept">dept</label>
                            <div class="col-md-8">
                                <input value="<?= set_value('dept', $karyawan['dept']); ?>" type="text" id="dept" name="dept" class="form-control" placeholder=" Masukan dept" disabled>
                                <?= form_error('dept', '<span class="text-danger small">', '</span>'); ?>
                            </div>
                        </div>

                        <div class="row form-group">
                            <label class="col-4 text-md-right" for="post">post</label>
                            <div class="col-md-8">
                                <input value="<?= set_value('post', $karyawan['post']); ?>" type="text" id="post" name="post" class="form-control" placeholder=" Masukan post" disabled>
                                <?= form_error('post', '<span class="text-danger small">', '</span>'); ?>
                            </div>
                        </div>

                        <div class="row form-group">
                            <label class="col-4 text-md-right" for="gaji">gaji</label>
                            <div class="col-md-8">
                                <input value="<?= set_value('gaji', $karyawan['gaji']); ?>" type="text" id="gaji" name="gaji" class="form-control" placeholder=" Masukan gaji">
                                <?= form_error('gaji', '<span class="text-danger small">', '</span>'); ?>
                            </div>
                        </div>

                        


                    </div>
                    <div class="col-6">

                    <div class="row form-group">
                            <label class="col-4 text-md-right" for="nik_kk">nik_kk</label>
                            <div class="col-md-8">
                                <input value="<?= set_value('nik_kk', $karyawan['nik_kk']); ?>" type="text" id="nik_kk" name="nik_kk" class="form-control" placeholder=" Masukan nik_kk">
                                <?= form_error('nik_kk', '<span class="text-danger small">', '</span>'); ?>
                            </div>
                        </div>

                        <div class="row form-group">
                            <label class="col-4 text-md-right" for="jk">jk</label>
                            <div class="col-md-8">
                                <input value="<?= set_value('jk', $karyawan['jk']); ?>" type="text" id="jk" name="jk" class="form-control" placeholder=" Masukan jk">
                                <?= form_error('jk', '<span class="text-danger small">', '</span>'); ?>
                            </div>
                        </div>

                        <div class="row form-group">
                            <label class="col-4 text-md-right" for="ttl">ttl</label>
                            <div class="col-md-8">
                                <input value="<?= set_value('ttl', $karyawan['ttl']); ?>" type="text" id="ttl" name="ttl" class="form-control" placeholder=" Masukan ttl">
                                <?= form_error('ttl', '<span class="text-danger small">', '</span>'); ?>
                            </div>
                        </div>
                        <div class="row form-group">
                            <label class="col-4 text-md-right" for="alamat">alamat</label>
                            <div class="col-md-8">
                                <textarea value="<?= set_value('alamat', $karyawan['alamat']); ?>" type="text" id="alamat" name="alamat" class="form-control" placeholder=" Masukan alamat"><?= set_value('alamat', $karyawan['alamat']); ?></textarea>
                                <?= form_error('alamat', '<span class="text-danger small">', '</span>'); ?>
                            </div>
                        </div>
                        
                        <div class="row form-group">
                            <label class="col-4 text-md-right" for="start_kontrak">start_kontrak</label>
                            <div class="col-md-8">
                                <input value="<?= set_value('start_kontrak', $karyawan['start_kontrak']); ?>" type="date" id="start_kontrak" name="start_kontrak" class="form-control" placeholder=" Masukan start_kontrak">
                                <?= form_error('start_kontrak', '<span class="text-danger small">', '</span>'); ?>
                            </div>
                        </div>

                        <div class="row form-group">
                            <label class="col-4 text-md-right" for="periode">periode</label>
                            <div class="col-md-8">
                                <input value="<?= set_value('periode', $karyawan['periode']); ?>" type="text" id="periode" name="periode" class="form-control" placeholder=" Masukan periode">
                                <?= form_error('periode', '<span class="text-danger small">', '</span>'); ?>
                            </div>
                        </div>

                        

                        <br>
                        <div class="row form-group justify-content-end">
                            <div class="col-md-8">
                                <button type="submit" class="btn btn-primary btn-icon-split">
                                    <span class="icon"><i class="fa fa-save"></i></span>
                                    <span class="text">Simpan</span>
                                </button>
                                <button type="reset" class="btn btn-secondary">
                                    Reset
                                </button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>