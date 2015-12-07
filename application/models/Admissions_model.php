<?php

/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 12/4/15
 * Time: 10:23 AM
 */
class Admissions_model extends CI_Model {

    public static $admissionsFields = [
        "act", "ielts", "ged", "sat", "lsat", "millers", "gre", "mcat", "prax", "gmat", "ap","pla_mu", "tofel", "clep", "base"
    ];

    public function _construct() {
        parent::__construct();
    }

    public function saveAdmissionsInfo($requestID, $serializedObject, $update) {

        // Construct the array containing the key/value pairs
        $this->load->model('request_model');
        $admissionsInfo = $this->request_model->createKeyValueArrayForCheckboxesInAccessType(self::$admissionsFields, $serializedObject);

        // Save the record
        $this->load->model('cashiers_model');
        if ($update) {
            if (self::updateAdmissionsInfoForRequest($requestID, $admissionsInfo)) {
                return $this->cashiers_model->saveCashiersInfo($requestID, $serializedObject, $update);
            } else {
                return false;
            }
        } else  {
            if (self::createAdmissionForRequest($requestID, $admissionsInfo)) {
                return $this->cashiers_model->saveCashiersInfo($requestID, $serializedObject, $update);
            } else {
                return false;
            }
        }

    }

    public function updateAdmissionsInfoForRequest($requestID, $admissionsInfo) {

        // Build the query to UPDATE the row
        $this->db->where('request_ID', $requestID);

        return $this->db->update('admissions', $admissionsInfo);

    }

    public function createAdmissionForRequest($requestID, $admissionsInfo){

        // Build the query to INSERT a row
        $admissionsInfo['request_ID'] = $requestID;

        return $this->db->insert('admissions', $admissionsInfo);
    }

}