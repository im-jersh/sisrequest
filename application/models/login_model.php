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

        /*commented out in order to attempt to add security to the login query -- dec5x8
         * // Construct the sql query
        $sql = "select * from login where pawprint = '" . $pawprint . "' and password = '" . $password . "'";

        // Run the query
        $query = $this->db->query($sql);
        */
        //Construct query using query binding
        $sql = "SELECT * FROM login WHERE pawprint = ? AND password = ?";
        //run using query binding
        $query = $this->db->query($sql, array($pawprint, $password));

        return $query->num_rows();

    }

}