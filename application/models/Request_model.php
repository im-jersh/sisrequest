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


        // If a request ID exist, UPDATE it; otherwise, INSERT
        if ($serializedObject['request_ID'] !== 'undefined') {
            $requestID = $serializedObject['request_ID'];
            if (self::updateRequestInfoForRequest($requestID, $requestInfo)) {
               return self::saveAccessTypesForRequestID($requestID, $serializedObject);
            } else {
                return false;
            }
        } else {
            $empID = $serializedObject['empID'];
            if (self::createRequestForEmployee($empID, $requestInfo)) {
                return self::saveAccessTypesForRequestID(NULL, $serializedObject);
            } else {
                return false;
            }
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

        return $this->db->insert('request', $requestInfo);

    }

    public function saveAccessTypesForRequestID($requestID, $serializedObject) {

        // If requestID is NULL, we should retrieve the request ID that was just created so that we can pass it to the access types functions for saving
        $update = true;
        if (!isset($requestID)) {
            $this->db->select('request_ID');
            $this->db->from('request');
            $this->db->where(array('empID' => $serializedObject['empID']));
            $query = $this->db->get();
            $requestID = $query->result_array()[0]['request_ID'];

            // Set the flag indicating we need to INSERT not UPDATE all subsequent access type records
            $update = false;
        }

        // Make sure we have an ID now
        if (isset($requestID)) {
            $this->load->model('admissions_model');
            return $this->admissions_model->saveAdmissionsInfo($requestID, $serializedObject, $update);
        } else {
            return false;
        }
    }

    public function createKeyValueArrayForCheckboxesInAccessType($keys, $serializedObject) {

        $arr = [];

        // Iterate through the array of keys, extract the values from the form
        foreach ($keys as $key) {

            // If view and update are set
            $value = 0;
            if (isset($serializedObject[$key . '_view']) && isset($serializedObject[$key . '_update'])) {
                $value = 7;
            } else if (isset($serializedObject[$key . '_view']) && !isset($serializedObject[$key . '_update'])) { // only view was set
                $value = 5;
            } else if (!isset($serializedObject[$key . '_view']) && isset($serializedObject[$key . '_update'])) { // only update was set
                $value = 6;
            }

            // Save the value
            $arr[$key] = $value;

        }

        return $arr;
    }


























}