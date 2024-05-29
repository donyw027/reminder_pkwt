<?= $this->session->flashdata('pesan'); ?>
<div class="card shadow-sm mb-4 border-bottom-primary">
    <div class="card-header bg-white py-3">
        <div class="row">
            <div class="col">
                <h4 class="h5 align-middle m-0 font-weight-bold text-primary">
                    Riwayat PKWT
                </h4>
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
                    <th>file Kontrak</th>
                    <th>Tgl Simpan</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            
            
        </table>
    </div>
</div>