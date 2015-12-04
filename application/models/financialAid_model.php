<?php

/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 12/4/15
 * Time: 1:31 PM
 */
class FinancialAid_model extends CI_Model {

    public static $finacialAidFields = [
        "fa_cash", "fa_non_financial_aid_staff"
    ];

    public function _construct() {
        parent::__construct();
    }

    public function saveFinancialAidInfo($requestID, $serializedObject, $update) {

        // Construct the array containing the key/value pairs
        $this->load->model('request_model');
        $financialAidInfo = $this->request_model->createKeyValueArrayForCheckboxesInAccessType(self::$finacialAidFields, $serializedObject);

        // Save the record
        $this->load->model('records_model');
        if ($update) {
            if (self::updateFinancialAidInfoForRequest($requestID, $financialAidInfo)) {
                return $this->records_model->saveRecordsInfo($requestID, $serializedObject, $update);
            } else {
                return false;
            }
        } else  {
            if (self::createFinancialAidForRequest($requestID, $financialAidInfo)) {
                return $this->records_model->saveRecordsInfo($requestID, $serializedObject, $update);
            } else {
                return false;
            }
        }

    }

    public function updateFinancialAidInfoForRequest($requestID, $financialAidInfo) {

        // Build the query to UPDATE the row
        $this->db->where('request_ID', $requestID);

        return $this->db->update('financialAid', $financialAidInfo);

    }

    public function createFinancialAidForRequest($requestID, $financialAidInfo){

        // Build the query to INSERT a row
        $financialAidInfo['request_ID'] = $requestID;

        return $this->db->insert('financialAid', $financialAidInfo);
    }

}