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

    public function printRequestWithID() {

        // extract the empID from POST data
        $empID = $this->input->post('empID');

        // Get the employee's info
        $this->load->model('person_model');
        $employee = $this->person_model->fetchEmployeeWithID($empID);

        // Get the employee's request info
        $this->load->model('request_model');
        $employee['request'] = $this->request_model->fetchRequestWithEmpID($empID);


        // We now have the employee's info and request
        // LETS MAKE AN FDF FILE!!!
        $this->downloadPDF($employee);

    }

    public function downloadPDF($employee) {

//        // FDF header section
//        $fdf_header = '
//            %FDF-1.2
//            %,,oe"
//            1 0 obj
//            <<
//            /FDF << /Fields [';
//
//        // FDF footer section
//        $fdf_footer = '] >> >>
//            endobj
//            trailer
//            <</Root 1 0 R>>
//            %%EOF';
//
//        $name = $employee['fName'] . " " . $employee['lName'];
//
//        $address = $employee['campus_address'];
//        if (isset($employee['campus_address_apt'])) {
//            $address .= ', ' . $employee['campus_address_apt'];
//        }
//        $address .= $employee['campus_address_city'] . ', ' . $employee['campus_address_state'] . ' ' . $employee['campus_address_zipcode'];
//
//        $request = $employee['request'];
//
//
//        $fdf_content  = "<</T(employeeName)/V({$name})>>";
//        $fdf_content .= "<</T(title)/V({$employee['title']})>>";
//        $fdf_content .= "<</T(department)/V({$employee['department']})>>";
//        $fdf_content .= "<</T(pawprint)/V({$employee['pawprint']})>>";
//        $fdf_content .= "<</T(empID)/V({$employee['empID']})>>";
//
//        $fdf_content .= "<</T(campus_address)/V({$address})>>";
//        $fdf_content .= "<</T(phone_number)/V({$employee['phone_number']})>>";
//        $fdf_content .= "<</T(ferpa_score)/V({$employee['ferpa_score']})>>";
//        $fdf_content .= "<</T(age)/V({$request['request_description']})>>";
//        $fdf_content .= "<</T(UGRD)/V({$request['UGRD']})>>";
//
//        $fdf_content .= "<</T(GRAD)/V({$request['GRAD']})>>";
//        $fdf_content .= "<</T(MED)/V({$request['MED']})>>";
//        $fdf_content .= "<</T(VET_MED)/V({$request['VET_MED']})>>";
//        $fdf_content .= "<</T(LAW)/V({$request['LAW']})>>";
//
//        $accessTypes = $request['types']['data'][0];
//        foreach (landing_model::$accessTypeKeys as $key) {
//            $value = $accessTypes[$key];
//
//            $viewKey = $key . '_view';
//            $updateKey = $key . '_update';
//
//            switch ($value) {
//                case "1":
//                case "5":
//                    $fdf_content .= "<</T({$viewKey})/V(1)>>";
//                    break;
//                case "3":
//                case "6":
//                    $fdf_content .= "<</T({$updateKey})/V(1)>>";
//                    break;
//                case "7":
//                    $fdf_content .= "<</T({$viewKey})/V(1)>>";
//                    $fdf_content .= "<</T({$updateKey})/V(1)>>";
//                    break;
//            }
//
//        }
//
//        // create the fdf file content
//        $content = $fdf_header . $fdf_content . $fdf_footer;
//        //echo $content;
//
//        // Creating a temporary file for our FDF file
//        $fdfTmpFileName = $name . '_' . $employee['pawprint'] . '_' . $employee['empID'];
//        $FDFfile = tempnam("./assets/tmp", $fdfTmpFileName);
//        //echo $FDFfile;
//
//        // Write contents to file
//        $handle = fopen($FDFfile, "w");
//        fwrite($handle, $content);
//        fclose($handle);
//
//        // Create unique file name
//        $fileName = "./assets/tmp/" . $name . '_' . $employee['pawprint'] . '_' . $employee['empID'] . '.pdf';
//
//        // Merging the FDF file with the raw PDF form
//        exec("pdftk ./application/controllers/sisreuquest.pdf fill_form $FDFfile output $fileName flatten");
//
//
//        // Force Download the output file
//        header('Content-Description: File Transfer');
//        header('Content-Type: application/octet-stream');
//        header('Content-Disposition: attachment; filename=' . $fileName );
//        header('Expires: 0');
//        header('Cache-Control: must-revalidate');
//        header('Pragma: public');
//        header('Content-Length: ' . filesize($fileName));
//
//        readfile($fileName);
//
//        exit;

    }


}