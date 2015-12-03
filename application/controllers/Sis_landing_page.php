<?php

/**
 * Created by PhpStorm.
 * User: Emeka
 * Date: 12/3/15
 * Time: 3:53 PM
 */
class Sis_landing_page extends CI_Controller
{
    // This is an array that contains all the data that that will populate the list of employees/departments
    protected static $listData = [];
    public $printListData = [];
    public $navigationItem;

    public function __construct() {
        parent::__construct();
        $this->load->model('landing_model');
    }

    public function index()
    {
        // Set up the navigation menu
        $this->navigationItem = 'Departments';

        // Get all the department
        $this->listData = $this->landing_model->getDepartments();

        foreach ($this->listData as $item) {
            array_push($this->printListData,
                '<tr id="'. $item .'" class="outerRow">' . '<td>' . $item . '</td><td></td></tr>'
            );
        };
        // Load the page
        $this->loadView();

    }

    public function loadView() {

        $data['navigationItem'] = $this->navigationItem;
        $data['printListData'] = $this->printListData;
        $this->load->view('home_view', $data);

    }
}