<?php

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

    public function view_admin($empID)
    {
        $this->db->select('fName','lName','title','status');
        $query = $this->db->get_where('person', array('admin_empID' => "$empID"));
        $employees = array();
        foreach ($query->result() as $row)
        {
            array_push($employees, array(
                "fName" => $row->fName,
                "lName" => $row->lName,
                "title" => $row->title,
                "status"=> $row->status
            ));
        }
        return $employees;

    }

    /*public function view_sis()
    {

    }*/


}