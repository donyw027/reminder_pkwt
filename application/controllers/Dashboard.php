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

       
        

        $this->template->load('templates/dashboard', 'dashboard', $data);
    }
}
