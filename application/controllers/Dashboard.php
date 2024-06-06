<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        cek_login();

    
 

        $this->load->model('Admin_model', 'admin');
    }

    public function index()
    {
        
        $data['title'] = "Dashboard";
        $role = $this->session->userdata('login_session')['role'];

           $bulan=date('m');
        $tahun=date('Y');
        $hari=date('d');
        $data['jumlah_karyawan_aktif'] = $this->db->query("SELECT COUNT(nik_akt) as jumlah FROM karyawan WHERE status_karyawan='aktif'")->row()->jumlah;
        $data['jumlah_karyawan_naktif'] = $this->db->query("SELECT COUNT(nik_akt) as jumlah FROM karyawan WHERE status_karyawan='tidak'")->row()->jumlah;
        $data['jumlah_reminder'] = $this->db->query("SELECT COUNT(nik_akt) as jumlah FROM karyawan WHERE status_karyawan='aktif' AND MONTH(end_kontrak)='$bulan' AND status_pkwt != 'PMNT'")->row()->jumlah;
        $data['jumlah_pkwt'] = $this->db->query("SELECT COUNT(nik_akt) as jumlah FROM karyawan WHERE status_karyawan='aktif' and status_pkwt ='PKWT'")->row()->jumlah;
        $data['jumlah_pmnt'] = $this->db->query("SELECT COUNT(nik_akt) as jumlah FROM karyawan WHERE status_karyawan='aktif' and status_pkwt ='PMNT'")->row()->jumlah;

        $data['jumlah_1a'] = $this->db->query("SELECT COUNT(nik_akt) as jumlah FROM karyawan WHERE status_karyawan='aktif' and status_pkwt ='1A'")->row()->jumlah;
        $data['jumlah_2a'] = $this->db->query("SELECT COUNT(nik_akt) as jumlah FROM karyawan WHERE status_karyawan='aktif' and status_pkwt ='2A'")->row()->jumlah;
        $data['jumlah_3a'] = $this->db->query("SELECT COUNT(nik_akt) as jumlah FROM karyawan WHERE status_karyawan='aktif' and status_pkwt ='3A'")->row()->jumlah;
        $data['jumlah_4a'] = $this->db->query("SELECT COUNT(nik_akt) as jumlah FROM karyawan WHERE status_karyawan='aktif' and status_pkwt ='4A'")->row()->jumlah;


        

       
        

        $this->template->load('templates/dashboard', 'dashboard', $data);
    }
}
