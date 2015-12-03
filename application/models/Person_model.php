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

    public function saveGeneralInfoForPerson($pawprint, $genInfo) {

        // Build the query to update fields for a person with $pawprint
        $this->db->where('pawprint', $pawprint);

        if ($this->db->update('person', $genInfo) ) {
            return true;
        }


    }


}