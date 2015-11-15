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

        // Extract the data
        $employees = array();
        foreach ($query->result() as $row)
        {

            // Determine the status of this person's request
            $status;
            if (!is_null($row->status)) {
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
            } else {$status = "Not Created";}




            array_push($employees, array(
                "fName" => $row->fName,
                "lName" => $row->lName,
                "title" => $row->title,
                "status" => $status
            ));
        }

        // Return the list of employees
        return $employees;

    }

    public function getDepartments()
    {

    }


}
?>