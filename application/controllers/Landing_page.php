<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 11/9/15
 * Time: 10:54 PM
 */
class Landing_page extends CI_Controller {

    // This is an array that contains all the data that that will populate the list of employees/departments
    protected static $listData = [];
    public $printListData = [];
    public $navigationItem;

    public function __construct() {
        parent::__construct();
        $this->load->model('landing_model');
    }

    public function index() {

        // Check who logged in
        if ($this->session->userdata('sis_authority') == 0) { // this user is an admin

            $this->adminLoggedIn();

        } else if ($this->session->userdata('sis_authority') == 1) { // this user is SIS employee

            $this->sisLoggedIn();

        }

    }


    public function adminLoggedIn() {

        // Get the employees associated with this user
        $empID = $this->session->userdata('empID');
        self::$listData['employees'] = $this->landing_model->getEmployees($empID);

        // Set up the navigation menu
        $this->navigationItem = '<span class="glyphicon glyphicon-user">  Employees</span>';

        // Prepare the list data for display
        foreach (self::$listData['employees'] as $item) {
            array_push($this->printListData,
                '<tr id="'. $item['pawprint'] .'" class="outerRow">' .
                    '<td>' .
                        '<table class="inner-table name-title">' .
                            '<tr class="mainName"><td class="employeeTD">' .
                                $item['fName'] . ' ' . $item['lName'] .
                            '</td></tr>' .
                            '<tr class="subTitle"><td>' .
                                $item['title'] .
                            '</td></tr>' .
                        '</table>' .
                    '</td>' .
                    '<td>' .
                        $item['status'] .
                    '</td>'.
                '</tr>'
            );
        };

        // Load the page
        $this->loadView();
    }

    public function sisLoggedIn() {

        // Set up the navigation menu
        $this->navigationItem = 'Departments';

        // Get all the department
        $this->listData = $this->landing_model->getDepartments();

        foreach ($this->listData as $item) {
            array_push($this->printListData,
                '<tr onmouseover="ChangeBackgroundColor(this)" onmouseout="RestoreBackgroundColor(this)">' .
                '<td style="color: black; padding-left: 90px; font-size: 20px;">' .
                $item . '</td>' . '</tr>'
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

    public function getRowDataForKey() {

        // Extract the pawprint key
        $pawprint = $this->input->post('pawprint');

        // Get the collection of employees again
        $empID = $this->session->userdata('empID');
        $employees = $this->landing_model->getEmployees($empID);

        // Extract the employee we are looking for
        $employee = $employees[$pawprint];

        // Get the request and the associated request types for the employee
        $returnData = [];
        if (!is_null($employee['request'])) {

            $request = $employee['request'];
            $requestID = $request['request_ID'];

            // Retrieve from the database
            $requestRecord = $this->landing_model->fetchRequestForID($requestID);

            $returnData['record'] = $requestRecord;

        } else { // the selected person does not have an existing request yet

        }

        echo json_encode($returnData);
    }

}

