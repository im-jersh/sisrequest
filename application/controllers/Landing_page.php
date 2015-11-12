<?php

/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 11/9/15
 * Time: 10:54 PM
 */
class Landing_page extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index() {
        $this->load->view('home_view');
    }

}

?>
