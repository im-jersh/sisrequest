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
        return self::createEmployees($query->result() );

    }

    public function createEmployees($result)
    {
        // Extract the data
        $employees = [];
        foreach ($result as $row)
        {
            // The employee to add
            $employee = array(
                "empID" => $row->empID,
                "pawprint" => $row->pawprint,
                "fName" => $row->fName,
                "lName" => $row->lName,
                "title" => $row->title,
                "phone_number" => $row->phone_number,
                "campus_address" => $row->campus_address,
                "department" => $row->department,
                "ferpa_score" => $row->ferpa_score
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
                    "status" => $row->status
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

    public function getDepartments()
    {

        //selects only 1 of each type of department from person table
        $this->db->distinct();
        $this->db->select('department');
        $query = $this->db->get('person');

        $departments = array();
        foreach ($query->result() as $row)
        {
            array_push($departments, $row->department);
        }
        //return the list of departments
        return $departments;
    }


}
