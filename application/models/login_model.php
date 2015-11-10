<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 11/9/15
 * Time: 10:23 PM
 */
class login_model extends CI_Model {

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

        return $query->num_rows();

    }

}