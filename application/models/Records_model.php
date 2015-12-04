<?php

/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 12/4/15
 * Time: 1:34 PM
 */
class Records_model extends CI_Model {

    public static $recordsFields = [
        "basic_inquiry", "advanced_inquiry", "3cs", "advisor_update", "dept_soc_update", "student_group_review", "service_indicators_holds", "view_study_list", "registrar_enrollment", "advisor_student_center", "class_permission", "class_permission_view", "class_roster", "block_enrollments", "report_manager", "self_service_advisor", "fiscal_advisor", "academic_advising_profile",
    ];

    public function _construct() {
        parent::__construct();
    }

    public function saveRecordsInfo($requestID, $serializedObject, $update) {

        // Construct the array containing the key/value pairs
        $this->load->model('request_model');
        $recordsInfo = $this->request_model->createKeyValueArrayForCheckboxesInAccessType(self::$recordsFields, $serializedObject);

        // Save the record
        $this->load->model('reserved_model');
        if ($update) {
            if (self::updateRecordsInfoForRequest($requestID, $recordsInfo)) {
                return $this->reserved_model->saveReservedInfo($requestID, $serializedObject, $update);
            } else {
                return false;
            }
        } else  {
            if (self::createRecordsForRequest($requestID, $recordsInfo)) {
                return $this->reserved_model->saveReservedInfo($requestID, $serializedObject, $update);
            } else {
                return false;
            }
        }

    }

    public function updateRecordsInfoForRequest($requestID, $recordsInfo) {

        // Build the query to UPDATE the row
        $this->db->where('request_ID', $requestID);

        return $this->db->update('records', $recordsInfo);

    }

    public function createRecordsForRequest($requestID, $recordsInfo){

        // Build the query to INSERT a row
        $recordsInfo['request_ID'] = $requestID;

        return $this->db->insert('records', $recordsInfo);
    }
}