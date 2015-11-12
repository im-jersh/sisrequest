<?php

/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 11/9/15
 * Time: 10:54 PM
 */
class landing_page extends CI_Controller {


    public function __construct() {
        parent::__construct();
        $this->load->model('landing_model');
    }

    public function index() {

        $empID = $this->session->userdata('empID');
        $listData = $this->landing_model->view_admin($empID);
        $data = array("listData" => $listData);
        $this->load->view('landing_page_view', $data);

    }

}

?>