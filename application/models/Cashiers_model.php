<?php

/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 12/4/15
 * Time: 11:47 AM
 */
class Cashiers_model extends CI_Model {

    public static $cashiersFields = [
        "sf_general_inquiry", "sf_cash_group_post"
    ];

    public function _construct() {
        parent::__construct();
    }

    public function saveCashiersInfo($requestID, $serializedObject, $update) {

        // Construct the array containing the key/value pairs
        $this->load->model('request_model');
        $cashiersInfo = $this->request_model->createKeyValueArrayForCheckboxesInAccessType(self::$cashiersFields, $serializedObject);

        // Save the record
        $this->load->model('financialAid_model');
        if ($update) {
            if (self::updateCashiersInfoForRequest($requestID, $cashiersInfo)) {
                return $this->financialAid_model->saveFinancialAidInfo($requestID, $serializedObject, $update);
            } else {
                return false;
            }
        } else  {
            if (self::createCashiersForRequest($requestID, $cashiersInfo)) {
                return $this->financialAid_model->saveFinancialAidInfo($requestID, $serializedObject, $update);
            } else {
                return false;
            }
        }

    }

    public function updateCashiersInfoForRequest($requestID, $cashiersInfo) {

        // Build the query to UPDATE the row
        $this->db->where('request_ID', $requestID);

        return $this->db->update('cashiers', $cashiersInfo);

    }

    public function createCashiersForRequest($requestID, $cashiersInfo){

        // Build the query to INSERT a row
        $cashiersInfo['request_ID'] = $requestID;

        return $this->db->insert('cashiers', $cashiersInfo);
    }



}