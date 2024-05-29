<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Karyawan extends CI_Controller
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

        $data['title'] = "Karyawan";
        $role = $this->session->userdata('login_session')['role'];

        if (is_admin() == true) {
            $data['karyawan'] = $this->admin->get('karyawan');

            $this->template->load('templates/dashboard', 'karyawan/data', $data);
        }
    }

    public function data_pkwt()
    {

        $data['title'] = "Data Karyawan PKWT";
        $role = $this->session->userdata('login_session')['role'];

        if (is_admin() == true) {
            $data['karyawan'] = $this->admin->get('karyawan');
            

            $this->template->load('templates/dashboard', 'data_pkwt/data', $data);
        }
    }

    public function reminder_pkwt()
    {

        $data['title'] = "Data Reminder PKWT";
        $role = $this->session->userdata('login_session')['role'];

        if (is_admin() == true) {
            $data['karyawan'] = $this->admin->get('karyawan');
            // $query_reminder = $this->db->query("SELECT * FROM karyawan WHERE MONTH(end_kontrak) = 4");
            // $data['karyawan'] = $query_reminder->row()->end_kontrak;

            $this->template->load('templates/dashboard', 'reminderpkwt/data', $data);
        }
    }

    




    private function _validasi($mode)
    {
        $this->form_validation->set_rules('nama', 'nama', 'required|trim');

        if ($mode == 'add') {
            $this->form_validation->set_rules('nama', 'nama', 'required|trim');
        } else {
            $db = $this->admin->get('karyawan', ['nama' => $this->input->post('nama', true)]);
            $nama = $this->input->post('nama', true);
        }
    }

    public function add()
    {
        $this->_validasi('add');

        if ($this->form_validation->run() == false) {
            $data['title'] = "Tambah karyawan";
            $this->template->load('templates/dashboard', 'karyawan/add', $data);
        } else {
            $input = $this->input->post(null, true);
            $input_data = [
                'nik_akt'       => $input['nik_akt'],
                'nama'       => $input['nama'],
                'status_pkwt'       => $input['status_pkwt'],
                'divisi'       => $input['divisi'],
                'dept'       => $input['dept'],
                'post'       => $input['post'],
                'gaji'       => $input['gaji'],
                'nik_kk'       => $input['nik_kk'],
                'jk'       => $input['jk'],
                'ttl'       => $input['ttl'],
                'alamat'       => $input['alamat'],
                'email'       => $input['email'],
                'bpjstk'       => $input['bpjstk'],
                'bpjskes'       => $input['bpjskes'],
                'bank'       => $input['bank'],
                'start_kontrak'       => $input['start_kontrak'],
                'end_kontrak'       => $input['end_kontrak'],
                'status_karyawan'       => $input['status_karyawan'],
                'keterangan'       => $input['keterangan']

            ];

            if ($this->admin->insert('karyawan', $input_data)) {
                set_pesan('data berhasil disimpan.');
                redirect('karyawan');
            } else {
                set_pesan('data gagal disimpan', false);
                redirect('karyawan/add');
            }
        }
    }

    public function edit($getId)
    {
        $id = encode_php_tags($getId);
        $this->_validasi('edit');

        if ($this->form_validation->run() == false) {
            $data['title'] = "Edit Karyawan";
            $data['karyawan'] = $this->admin->get('karyawan', ['id' => $id]);
            $this->template->load('templates/dashboard', 'karyawan/edit', $data);
        } else {
            $input = $this->input->post(null, true);
            $input_data = [
                'nik_akt'       => $input['nik_akt'],
                'nama'       => $input['nama'],
                'status_pkwt'       => $input['status_pkwt'],
                'divisi'       => $input['divisi'],
                'dept'       => $input['dept'],
                'post'       => $input['post'],
                'gaji'       => $input['gaji'],
                'nik_kk'       => $input['nik_kk'],
                'jk'       => $input['jk'],
                'ttl'       => $input['ttl'],
                'alamat'       => $input['alamat'],
                'email'       => $input['email'],
                'bpjstk'       => $input['bpjstk'],
                'bpjskes'       => $input['bpjskes'],
                'bank'       => $input['bank'],
                'start_kontrak'       => $input['start_kontrak'],
                'end_kontrak'       => $input['end_kontrak'],
                'status_karyawan'       => $input['status_karyawan'],
                'keterangan'       => $input['keterangan']

            ];

            if ($this->admin->update('karyawan', 'id', $id, $input_data)) {
                set_pesan('data berhasil diubah.');
                redirect('karyawan');
            } else {
                set_pesan('data gagal diubah.', false);
                redirect('karyawan/edit/' . $id);
            }
        }
    }

    public function delete($getId)
    {
        $id = encode_php_tags($getId);
        if ($this->admin->delete('karyawan', 'id', $id)) {
            set_pesan('data berhasil dihapus.');
        } else {
            set_pesan('data gagal dihapus.', false);
        }
        redirect('karyawan');
    }
}
