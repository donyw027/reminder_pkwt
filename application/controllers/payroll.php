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

    

    public function send_payrolls() {
        $payrolls = $this->admin->get_all_payrolls();

        foreach ($payrolls as $payroll) {
            $this->send_payroll_email($payroll);
        }
        $this->email->clear(TRUE);

        // echo "Payroll emails sent successfully.";
        set_pesan('Payroll emails sent successfully..');
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
}
