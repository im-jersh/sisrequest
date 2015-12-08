<?php

/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 12/2/15
 * Time: 8:52 PM
 */
class Person_model extends CI_Model {

    public function _construct() {
        parent::__construct();
    }

    public function saveGeneralInfo($serializedObject) {

        // Extract our required general info data
        $pawprint = $serializedObject['pawprint'];
        $genInfo = array(
            'title' => $serializedObject['title'],
            'phone_number' => $serializedObject['phone_number'],
            'campus_address' => $serializedObject['campus_address'],
            'campus_address_city' => $serializedObject['campus_address_city'],
            'campus_address_zipcode' => $serializedObject['campus_address_zipcode'],
            'campus_address_state' => $serializedObject['campus_address_state']
        );

        if (isset($serializedObject['campus_address_apt'])) {
            $genInfo['campus_address_apt'] = $serializedObject['campus_address_apt'];
        }


        // Build the query to update fields for a person with $pawprint
        $this->db->where('pawprint', $pawprint);

        return $this->db->update('person', $genInfo);

    }

    public function fetchEmployeeWithID($empID) {

        $this->db->where(array('empID' => "$empID"));
        $query = $this->db->get('person');

        return $query->result_array()[0];

    }


}