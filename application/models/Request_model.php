<?php

/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 12/3/15
 * Time: 11:49 PM
 */
class Request_model extends CI_Model {

    public function _construct() {
        parent::__construct();
    }


    public function saveRequestInfo($serializedObject) {

        // Extract the general request data
        $requestInfo = array(
            'request_description' => $serializedObject['descriptionTextbox'],
            'admin_empID' => $this->session->userdata('empID'),
            'status' => 0
        );

        if (isset($serializedObject['UGRD'])) {
            $requestInfo['UGRD'] = 1;
        } else {
            $requestInfo['UGRD'] = 0;
        }

        if (isset($serializedObject['GRAD'])) {
            $requestInfo['GRAD'] = 1;
        } else {
            $requestInfo['GRAD'] = 0;
        }

        if (isset($serializedObject['MED'])) {
            $requestInfo['MED'] = 1;
        } else {
            $requestInfo['MED'] = 0;
        }

        if (isset($serializedObject['VET_MED'])) {
            $requestInfo['VET_MED'] = 1;
        } else {
            $requestInfo['VET_MED'] = 0;
        }

        if (isset($serializedObject['LAW'])) {
            $requestInfo['LAW'] = 1;
        } else {
            $requestInfo['LAW'] = 0;
        }

        print_r($serializedObject);
        // If a request ID exist, UPDATE it; otherwise, INSERT
        if ($serializedObject['request_ID'] !== 'undefined') {
            $requestID = $serializedObject['request_ID'];
            return self::updateRequestInfoForRequest($requestID, $requestInfo);
        } else {
            $empID = $serializedObject['empID'];
            self::createRequestForEmployee($empID, $requestInfo);
        }

    }

    public function updateRequestInfoForRequest($requestID, $requestInfo) {

        // Build the query to UPDATE the row
        $this->db->where('request_ID', $requestID);
        $this->db->set('request_date', 'current_timestamp', FALSE);
        $this->db->set('update_date', 'current_timestamp', FALSE);
        return $this->db->update('request', $requestInfo);

    }

    public function createRequestForEmployee($empID, $requestInfo){

        $requestInfo['empID'] = $empID;

        // Build the query to INSERT a row
        $this->db->set('request_date', 'current_timestamp', FALSE);
        $this->db->set('update_date', 'current_timestamp', FALSE);

        $str = $this->db->insert_string('request', $requestInfo);
        echo($str);

        $this->db->insert('request', $requestInfo);
    }

}