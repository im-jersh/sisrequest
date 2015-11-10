<?php 

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
    public function validate(){
        // grab user input
        $pawprint = $this->security->xss_clean($this->input->post('username'));
        $password = $this->security->xss_clean($this->input->post('password'));
        
        // Prep the query
        $this->db->select('pawprint','password'); 
        $this->db->where('pawprint', $pawprint);
        $this->db->where('password', $password);
               
        // Run the query
        $query = $this->db->get('login');
        // Let's check if there are any results
        if($query->num_rows == 1)
        {
            // If there is a user, then create session data
            $row = $query->row();
            $data = array(
                    'pawprint' => $row->pawprint,
                    'password' => $row->password,        
                    );
            $this->session->set_userdata($data);
            return true;
        }  
        // If the previous process did not validate
        // then return false.
        return false;
    }
}

?>