<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 11/9/15
 * Time: 10:29 PM
 */
class Login extends CI_Controller {

    public function __construct() {
        parent::__construct();

        $this->load->helper('html');

        $this->load->model('login_model');
    }

    public function index()
    {

        // Get the posted values
        $pawprint = $this->input->post("txt_pawprint");
        $password = $this->input->post("txt_password");

        // Set validations
        $this->form_validation->set_rules("txt_pawprint", "Pawprint", "trim|required|strip_tags");
        $this->form_validation->set_rules("txt_password", "Password", "trim|required|strip_tags");

        if ($this->session->userdata('pawprint') != null){
            redirect('landing_page');
        }

        if ($this->form_validation->run() == FALSE) {
            // Validation failed
            $this->load->view('login_view');
        } else {
            // Successful validation
            if ($this->input->post('btn_login') == "Login") {
                // Check if pawprint and password is correct
                $usr_result = $this->login_model->get_user($pawprint, $password);

                // Active user record is present
                if ($usr_result) {
                    /* $sessiondata = array(
                         'pawprint' => $pawprint,
                         'loginuser' => TRUE
                     ); */

                    // $this->session->set_userdata($sessiondata);
                    if ($this->session->userdata('sis_authority') == 0) { // this user is an admin

                        redirect('landing_page');

                    } else if ($this->session->userdata('sis_authority') == 1) { // this user is SIS employee

                        redirect('Sis_landing_page');

                    }

                } else {
                    $this->session->set_flashdata('msg', '<div class="alert alert-danger text-center">Invalid username and password.</div>');
                    redirect('login/index');
                }
            } else {
                redirect('login/index');
            }
        }
    }
}

?>
