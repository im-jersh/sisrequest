<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: Emeka
 * Date: 11/11/15
 * Time: 5:15 PM
 */
class Landing_model extends CI_model
{
    public static $accessTypeKeys = [
        "act", "ielts", "ged", "sat", "lsat", "millers", "gre", "mcat", "prax", "gmat", "ap","pla_mu", "tofel", "clep", "base",
        "sf_general_inquiry", "sf_cash_group_post",
        "fa_cash", "fa_non_financial_aid_staff",
        "basic_inquiry", "advanced_inquiry", "3cs", "advisor_update", "dept_soc_update", "student_group_review", "service_indicators_holds", "view_study_list", "registrar_enrollment", "advisor_student_center", "class_permission", "class_permission_view", "class_roster", "block_enrollments", "report_manager", "self_service_advisor", "fiscal_advisor", "academic_advising_profile",
        "immunization_view", "transfer_credit_admission", "relationships", "student_groups", "accomodate_student_health", "support_staff_registrar", "advance_standing_report"
    ];

    public function _construct()
    {
        parent::__construct();
    }

    public function getEmployees($empID)
    {

        // Contstruct the query and execute
        $this->db->from('person');
        $this->db->where(array('person.admin_empID' => "$empID"));
        $this->db->join('request', 'person.empID = request.empID', 'left');
        $query = $this->db->get();


        // Return the list of employees
        return self::createEmployees($query->result());

    }

    public function createEmployees($result)
    {
        // Extract the data
        $employees = [];
        foreach ($result as $row)
        {
            // Fetch the employee's empID in the event that the person doesn't have a request
            $this->db->select('empID');
            $this->db->from('person');
            $this->db->where(array('pawprint' => "$row->pawprint"));
            $query = $this->db->get();
            $personID = $query->result_array()[0]['empID'];

            // The employee to add
            $employee = array(
                "empID" => $personID,
                "pawprint" => $row->pawprint,
                "fName" => $row->fName,
                "lName" => $row->lName,
                "title" => $row->title,
                "phone_number" => $row->phone_number,
                "campus_address" => $row->campus_address,
                "campus_address_apt" => $row->campus_address_apt,
                "campus_address_city" => $row->campus_address_city,
                "campus_address_zipcode" => $row->campus_address_zipcode,
                "campus_address_state" => $row->campus_address_state,
                "department" => $row->department,
                "ferpa_score" => $row->ferpa_score,
            );

            // Determine the status of this person's request
            // Null denotes that this person does not currently have a request in the DB
            $status;
            $request;

            if (!is_null($row->status)) {

                // A request exists
                switch ($row->status) {
                    case 0:
                        $status = "Pending";
                        break;
                    case 1:
                        $status = "Approved";
                        break;
                    case 2:
                        $status = "Denied";
                        break;
                }

                $request = array(
                    "request_ID" => $row->request_ID,
                    "request_date" => $row->request_date,
                    "update_date" => $row->update_date,
                    "request_description" => $row->request_description,
                    "is_student" => $row->is_student,
                    "status" => $row->status,
                    "UGRD" => $row->UGRD,
                    "GRAD" => $row->GRAD,
                    "MED" => $row->MED,
                    "VET_MED" => $row->VET_MED,
                    "LAW" => $row->LAW
                );

            } else {
                $status = "Not Created";
                $request = null;
            }

            $employee["status"] = $status;
            $employee["request"] = $request;

            // Add this person to the array using their pawprint as the key
            $employees[$row->pawprint] = $employee;
        }

        return $employees;
    }

    public function fetchRequestForID($requestID) {

        // Construct the query on the view and execute
        $this->db->from('requesttypes');
        $this->db->where(array('request_ID' => "$requestID"));
        $query = $this->db->get();

        $recordTypes = [
            'keys' => self::$accessTypeKeys,
            'data' => $query->result()
        ];

        return $recordTypes;

    }

    public function getDepartments()
    {

        //selects only 1 of each type of department from person table
        $this->db->distinct();
        $this->db->select('department');
        $query = $this->db->get('person');

        $departments = array();
        foreach ($query->result() as $row)
        {
            // Get the number of employees and pending requests for the department
            $department = array(
                'name' => $row->department,
                'employeeCount' => self::getEmployeeCountForDepartment($row->department),
                'pendingRequestCount' => self::getPendingRequestCountForDepartment($row->department)
            );

            array_push($departments, $department);
        }
        //return the list of departments
        return $departments;
    }

    public function getEmployeeCountForDepartment($department) {
        $this->db->where(array('department' => "$department"));
        $query = $this->db->get('person');

        return $query->num_rows();
    }

    public function getPendingRequestCountForDepartment($department) {

        // We need to join the person table with the request table
        $this->db->from('person');
        $this->db->where(array('person.department' => "$department"));
        $this->db->join('request', 'person.empID = request.empID', 'left');
        $this->db->where(array('status' => 0));
        $query = $this->db->get();

        return $query->num_rows();


    }

    public function getEmployeesForDepartment($department) {

        $this->db->from('person');
        $this->db->where(array('person.department' => "$department"));
        $this->db->join('request', 'person.empID = request.empID', 'left');
        $this->db->order_by("status", "asc");
        $query = $this->db->get();

        // re-add the person's empID in the event they don't have a request
        $employees = [];
        foreach ($query->result_array() as $row) {
            $pawprint = $row['pawprint'];

            $this->db->select('empID');
            $this->db->from('person');
            $this->db->where(array('pawprint' => "$pawprint"));
            $query = $this->db->get();
            $personID = $query->result_array()[0]['empID'];

            $employee = $row;
            $employee['empID'] = $personID;
            array_push($employees, $employee);
        }

        return $employees;
    }


}
