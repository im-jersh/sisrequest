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
        $this->db->select('fName,lName,title');
        $query = $this->db->get_where('person', array('admin_empID' => "$empID"));

        // Extract the data
        $employees = array();
        foreach ($query->result() as $row)
        {
            array_push($employees, array(
                "fName" => $row->fName,
                "lName" => $row->lName,
                "title" => $row->title
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