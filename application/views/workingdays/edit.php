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
                        <a href="<?= base_url('workingdays') ?>" class="btn btn-sm btn-secondary btn-icon-split">
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
                <?= form_open('', [], ['id' => $workingdays['id']]); ?>

                <div class="row">

                    <div class="col-6">
                        <div class="row form-group">
                            <label class="col-4 text-md-right" for="email">Email</label>
                            <div class="col-md-8">
                                <input value="<?= set_value('email', $workingdays['email']); ?>" type="text" id="email" name="email" class="form-control" placeholder=" Masukan email">
                                <?= form_error('email', '<span class="text-danger small">', '</span>'); ?>
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