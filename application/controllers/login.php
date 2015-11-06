<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller{
    
        function __construct(){
                parent::__construct();
        }
    
        public function index(){
                // Load login view
                $this->load->view('login_view');
        }
    
        public function process(){
                // Load the model
                $this->load->model('login_model');
                // Validate login info
                $result = $this->login_model->validate();
                // Now we verify the result
                if(! $result){
                        //Incorrect login info, redirect back to login page
                        redirect('login');
                }else{
                        //Correct login info, redirect home page
                        redirect('home');
                }        
        }
}

?>