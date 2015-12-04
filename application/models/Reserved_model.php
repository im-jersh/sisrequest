<?php

/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 12/4/15
 * Time: 2:23 PM
 */
class Reserved_model extends CI_Model {

    public static $reservedFields = [
        "immunization_view", "transfer_credit_admission", "relationships", "student_groups", "accomodate_student_health", "support_staff_registrar", "advance_standing_report"
    ];

    public function _construct() {
        parent::__construct();
    }

    public function saveReservedInfo($requestID, $serializedObject, $update) {

        // Construct the array containing the key/value pairs
        $this->load->model('request_model');
        $reservedInfo = $this->request_model->createKeyValueArrayForCheckboxesInAccessType(self::$reservedFields, $serializedObject);

        // Save the record
        if ($update) {
            return self::updateReservedInfoForRequest($requestID, $reservedInfo);
        } else  {
            return self::createReservedForRequest($requestID, $reservedInfo);
        }

    }

    public function updateReservedInfoForRequest($requestID, $reservedInfo) {

        // Build the query to UPDATE the row
        $this->db->where('request_ID', $requestID);

        return $this->db->update('reserved', $reservedInfo);

    }

    public function createReservedForRequest($requestID, $reservedInfo){

        // Build the query to INSERT a row
        $reservedInfo['request_ID'] = $requestID;

        return $this->db->insert('reserved', $reservedInfo);
    }
}