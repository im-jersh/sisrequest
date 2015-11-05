<?php

/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 11/2/15
 * Time: 11:14 PM
 */
class Login extends CI_Controller {

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/login
     *	- or -
     * 		http://example.com/login/index
     *	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /welcome/<method_name>
     * @see http://codeigniter.com/user_guide/general/urls.html
     */
    public function index() {
        echo 'This is the Login page.';
    }

}