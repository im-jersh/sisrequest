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

        // Construct the sql query and execute
        // Data from the password field will be hashed, used in conjunction with sisrequest_sprint3_v2.sql
        $query = $this->db->get_where('login', array('pawprint' => $pawprint, 'password' => $password));

        // Extract the data and store it in a session
        if ($query->num_rows() > 0){
            $row = $query->row();
            $sessiondata = array (
                'pawprint' => $pawprint,
                'empID' => $row->admin_empID,
                'sis_authority' => $row->sis_authority,
            );

            $this->session->set_userdata($sessiondata);
            return TRUE;
        }
        return FALSE;
    }

}
?>
