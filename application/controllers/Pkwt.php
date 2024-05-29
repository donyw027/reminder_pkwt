<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pkwt extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        cek_login();


        $this->load->model('Admin_model', 'admin');
        $this->load->library('form_validation');
    }

    public function index()
    {

        $data['title'] = "PKWT";
        $role = $this->session->userdata('login_session')['role'];

        if (is_admin() == true) {
            $data['pkwt'] = $this->admin->get('pkwt');

            $this->template->load('templates/dashboard', 'pkwt/data', $data);
        }
    }

    public function riwayat_pkwt()
    {

        $data['title'] = "Riwayat PKWT";
        $role = $this->session->userdata('login_session')['role'];

        if (is_admin() == true) {
            $data['pkwt'] = $this->admin->get('pkwt');

            $this->template->load('templates/dashboard', 'riwayat_pkwt/data', $data);
        }
    }

    public function pengumuman()
    {

        $data['title'] = "Pengumuman Reminder PKWT";
        $role = $this->session->userdata('login_session')['role'];
        $bulan =date('m');

        if (is_admin() == true) {
            $query_reminder = $this->db->query("SELECT * FROM karyawan WHERE status_karyawan='aktif' and MONTH(end_kontrak) = '$bulan'");
            $data['karyawan'] = $query_reminder->result_array();    

            $data['nama_hrd'] = $this->admin->getNamaHrd();

            $this->template->load('templates/pengumuman', 'pkwt/pengumuman', $data);
        }
    }



    private function _validasi($mode)
    {
        $this->form_validation->set_rules('isi_pkwt', 'isi_pkwt', 'required|trim');

        if ($mode == 'add') {
            $this->form_validation->set_rules('isi_pkwt', 'isi_pkwt', 'required|trim');
        } else {
            $db = $this->admin->get('pkwt', ['isi_pkwt' => $this->input->post('isi_pkwt', true)]);
            $stok = $this->input->post('isi_pkwt', true);
        }
    }

    public function add()
    {
        $this->_validasi('add');

        if ($this->form_validation->run() == false) {
            $data['title'] = "Tambah Data PKWT";
            $this->template->load('templates/dashboard', 'pkwt/add', $data);
        } else {
            $input = $this->input->post(null, true);
            $input_data = [
                'isi_pkwt'       => $input['isi_pkwt'],
                'nama_hrd'       => $input['nama_hrd'],
                'alamat_hrd'       => $input['alamat_hrd'],
                'ttd_hrd'       => $input['ttd_hrd']

            ];

            if ($this->admin->insert('pkwt', $input_data)) {
                set_pesan('data berhasil disimpan.');
                redirect('pkwt');
            } else {
                set_pesan('data gagal disimpan', false);
                redirect('pkwt/add');
            }
        }
    }

    public function edit($getId)
    {
        $id = encode_php_tags($getId);
        $this->_validasi('edit');

        if ($this->form_validation->run() == false) {
            $data['title'] = "Edit PKWT";
            $data['pkwt'] = $this->admin->get('pkwt', ['id' => $id]);
            $this->template->load('templates/dashboard', 'pkwt/edit', $data);
        } else {
            $input = $this->input->post(null, true);
            $input_data = [
                'isi_pkwt'       => $input['isi_pkwt'],
                'nama_hrd'       => $input['nama_hrd'],
                'alamat_hrd'       => $input['alamat_hrd'],
                'ttd_hrd'       => $input['ttd_hrd']

            ];

            if ($this->admin->update('pkwt', 'id', $id, $input_data)) {
                set_pesan('data berhasil diubah.');
                redirect('pkwt');
            } else {
                set_pesan('data gagal diubah.', false);
                redirect('pkwt/edit/' . $id);
            }
        }
    }

    public function delete($getId)
    {
        $id = encode_php_tags($getId);
        if ($this->admin->delete('pkwt', 'id', $id)) {
            set_pesan('data berhasil dihapus.');
        } else {
            set_pesan('data gagal dihapus.', false);
        }
        redirect('pkwt');
    }
}
