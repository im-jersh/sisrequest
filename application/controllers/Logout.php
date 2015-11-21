<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Logout extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index()
    {
        // Delete the DB cache files
        $this->db->cache_delete('landing_page','getRowDataForKey');
        $this->db->cache_delete('landing_page', 'index');

        // Destroy the session data
        $this->session->sess_destroy();
        redirect('login');

    }
}

