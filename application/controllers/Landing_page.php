<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 11/9/15
 * Time: 10:54 PM
 */
class Landing_page extends CI_Controller {

    // This is an array that contains all the data that that will populate the list of employees/departments
    public $listData = array();

    public function __construct() {
        parent::__construct();
        $this->load->model('landing_model');
    }

    public function index() {

        // Check who logged in
        if ($this->session->userdata('sis_authority') == 0) { // this user is an admin

            $this->adminLoggedIn();

        } else if ($this->session->userdata('sis_authority') == 1) { // this user is SIS employee

            $this->sisLoggedIn();

        }

    }


    public function adminLoggedIn() {

        // Get the employees associated with this user
        $empID = $this->session->userdata('empID');
        $this->listData = $this->landing_model->getEmployees($empID);

        // Load the page
        $this->loadView();
    }

    public function sisLoggedIn() {

        // Get all the department


        // Load the page
        $this->loadView();
    }

    public function loadView() {

        $data['listData'] = $this->listData;
        $this->load->view('home_view', $data);


    }
}

?>
