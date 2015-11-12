<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 11/9/15
 * Time: 10:23 PM
 */
class Login_model extends CI_Model {

    function __construct() {
        // Call the Model constructor
        parent::__construct();
    }

    // Get the pawprint & password from 'login' table
    function get_user($pawprint, $password) {

        // Construct the sql query
        $sql = "select * from login where pawprint = '" . $pawprint . "' and password = '" . $password . "'";

        // Run the query
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0){
                $row = $query->row();
                $sessiondata = array (
                        'pawprint' => $pawprint,
                        'empID' => $row->admin_empID,
                      );
                $this->session->set_userdata($sessiondata);
                return TRUE;
         }
         return FALSE;
    }

}
