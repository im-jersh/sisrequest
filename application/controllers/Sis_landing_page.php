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
        self::$listData = $this->landing_model->getDepartments();

        foreach (self::$listData as $item) {
            array_push($this->printListData,
                '<tr id="'. $item['name'] .'" class="outerRow">' .
                '<td>' .
                '<table class="inner-table name-title">' .
                '<tr class="mainName"><td class="employeeTD">' .
                $item['name'] .
                '</td></tr>' .
                '<tr class="subTitle"><td>' .
                $item['employeeCount'] . " Employees" .
                '</td></tr>' .
                '</table>' .
                '</td>' .
                '<td>' .
                $item['pendingRequestCount'] .
                '</td>'.
                '</tr>'
            );
        };
        // Load the page
        $this->loadView();

    }

    public function loadView() {

        $data['navigationItem'] = $this->navigationItem;
        $data['printListData'] = $this->printListData;
        $this->load->view('sis_home_view', $data);

    }

    public function getRowDataForKey() {

        // Extract the pawprint key
        $department = $this->input->post('department');

        // Get all the employees for the department
        $employees = $this->landing_model->getEmployeesForDepartment($department);


        $returnData['employees'] = $employees;

        echo json_encode($returnData);
    }

    public function fetchEmployeeInfoAndRequest() {

        // extract the empID from POST data
        $empID = $this->input->post('empID');

        // Get the employee's info
        $this->load->model('person_model');
        $employee = $this->person_model->fetchEmployeeWithID($empID);

        // Get the employee's request info
        $this->load->model('request_model');
        $employee['request'] = $this->request_model->fetchRequestWithEmpID($empID);



        echo json_encode($employee);
    }

    public function approveRequestWithID() {

        // get the request ID
        $requestID = $this->input->post('requestID');

        // Update the request
        $this->load->model('request_model');
        $message = $this->request_model->approveRequestWithID($requestID);

        echo $message;

    }

    public function denyRequestWithID() {

        // get the request ID
        $requestID = $this->input->post('requestID');

        // Update the request
        $this->load->model('request_model');
        $message = $this->request_model->denyRequestWithID($requestID);

        echo $message;

    }


}