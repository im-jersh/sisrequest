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
        if (!is_null($employee['request'])) { // the employee has a previous request

            $request = $employee['request'];
            $requestID = $request['request_ID'];

            // Retrieve from the database
            $requestRecord = $this->landing_model->fetchRequestForID($requestID);

            // Attach the request types to the employee's request
            $employee['request']['types'] = $requestRecord;


        } else { // the employee does not have a request yet
            $accessTypeKeys = Landing_model::$accessTypeKeys;

            $types = array(
                'data' => array(),
                'keys' => $accessTypeKeys
            );

            $employee['request'] = array(
                'types' => $types
            );
        }

        $returnData['employee'] = $employee;

        echo json_encode($returnData);
    }

    public function validateForm() {

        // todo: validate ALL address fields

        // Set the rules for the form field
        $this->form_validation->set_rules('title', 'Job Title', 'trim|required');
        $this->form_validation->set_rules('phone_number', 'Phone Number', 'required|exact_length[14]|trim');
        $this->form_validation->set_rules('campus_address', 'Campus Address', 'required|trim');


        // Run the validation
        if ($this->form_validation->run() == FALSE) { // Invalid form
            echo validation_errors();

        } else { // Valid form

            echo 'true';

        }

    }

    public function submitForm() {

        // Load the the model's for saving
        $this->load->model('person_model');

        // Extract the form data from the global POST
        $serializedObject = $this->input->post('formData');

        // Extract our required general info data
        $pawprint = $serializedObject['pawprint'];
        $genInfo = array(
            'title' => $serializedObject['title'],
            'phone_number' => $serializedObject['phone_number'],
            'campus_address' => $serializedObject['campus_address']
        );

        // Save to database
        $this->person_model->saveGeneralInfoForPerson($pawprint, $genInfo);


        echo json_encode($serializedObject);

    }

}

