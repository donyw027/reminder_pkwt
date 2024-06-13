<?php
defined('BASEPATH') or exit('No direct script access allowed');



// require_once 'application/third_party/fpdf/fpdf.php';


// require_once 'application/third_party/dompdf/autoload.inc.php';
// use Dompdf\Dompdf;

class Payroll extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        cek_login();
        $this->load->model('Admin_model', 'admin');
        $this->load->library('email');
        // $this->load->library('PHPExcel');
    }

    public function index()
    {

        $data['title'] = "Payroll";
        $role = $this->session->userdata('login_session')['role'];

        if (is_admin() == true) {
            $data['payroll'] = $this->admin->get('payroll');

            $this->template->load('templates/dashboard', 'payroll/data', $data);
        }
    }


    public function send_payrolls_by1($getId) {
        $id = encode_php_tags($getId);

        $payroll = $this->admin->get_payroll_by_id($id);
        // var_dump($payrolls->email); die();

            $this->send_payroll_email_by1($payroll);

        set_pesan('Email Berhasil Terkirim');
                redirect('payroll');
    }

    private function send_payroll_email_by1($payroll) {
        // var_dump($payroll); die();

        $this->email->from('aktindonesia@akt-id.com', 'PT. AKT Indonesia');
        $this->email->to($payroll->email);
        $this->email->subject('Slip Gaji ' . format_bulan(date('Y-m-d')));

        $message = $this->load->view('payroll/print_payrol', ['payroll' => $payroll], TRUE);
        $this->email->message($message);

        if (!$this->email->send()) {
            log_message('error', 'Failed to send payroll email to: ' . $payroll->email);
        }
    }
    

    public function send_payrolls() {

        $payrolls = $this->admin->get_all_payrolls();

        foreach ($payrolls as $payroll) {
            $this->send_payroll_email($payroll);
        }
        $this->email->clear(TRUE);

        set_pesan('Email Berhasil Terkirim');
                redirect('payroll');
    }

   

    private function send_payroll_email($payroll) {

        $this->email->from('aktindonesia@akt-id.com', 'PT. AKT Indonesia');
        $this->email->to($payroll->email);
        $this->email->subject('Slip Gaji ' . format_bulan(date('Y-m-d')));

        $message = $this->load->view('payroll/print_payrol', ['payroll' => $payroll], TRUE);
        $this->email->message($message);

        if (!$this->email->send()) {
            log_message('error', 'Failed to send payroll email to: ' . $payroll->email);
        }
    }

    public function upload_excel() {

        include APPPATH.'third_party/PHPExcel/Classes/PHPExcel.php';


        $config['upload_path'] = './uploads/';
        $config['allowed_types'] = 'xls|xlsx';
        $config['max_size'] = 10000;

        $this->upload->initialize($config);

        if (!$this->upload->do_upload('excel_file')) {
            $this->session->set_flashdata('message', $this->upload->display_errors());
            redirect('payroll');
        } else {
            $fileData = $this->upload->data();
            $filePath = './uploads/' . $fileData['file_name'];

            $this->load->library('excel');
            $objPHPExcel = PHPExcel_IOFactory::load($filePath);

            $sheetData = $objPHPExcel->getActiveSheet()->toArray(null, true, true, true);

            $data = [];
            foreach ($sheetData as $row) {
                $data[] = [
                    'id' => $row['A'],
                    'nama' => $row['B'],
                    'nik' => $row['C'],
                    'dept' => $row['D'],
                    'status' => $row['E'],
                    'gaji_pokok' => $row['F'],
                    'gaji_tidak_full' => $row['G'],
                    'uang_phl' => $row['H'],
                    'tunjangan' => $row['I'],
                    'sisa_cuti' => $row['J'],
                    'lembur' => $row['K'],
                    'koreksi_positif' => $row['L'],
                    'jumlah_pendapatan' => $row['M'],
                    'bpjs_tk' => $row['N'],
                    'bpjs_kes' => $row['O'],
                    'pph21' => $row['P'],
                    'absensi' => $row['Q'],
                    'koreksi_negatif' => $row['R'],
                    'jumlah_potongan' => $row['S'],
                    'take_home_pay' => $row['T'],
                    'email' => $row['U'],
                    'total_hari_kerja' => $row['V']
                ];
            }

            $this->admin->insert_batch($data);

            $this->session->set_flashdata('message', 'File berhasil diupload dan data dimasukkan ke database');
            redirect('payroll/');
        }
    }

    // public function upload_excel_form() {
    //     $this->load->view('payroll/upload_excel');
    // }
}
