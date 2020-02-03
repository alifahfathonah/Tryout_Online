<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Topup extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
       
       
        $this->isLoggedIn();   
    }
    
    public function index()
    {
        $uid = $this->global['uid'];
        $data["userinfo"] = $this->user_model->getUserInfoWithRole($this->vendorId);
        $data["userId"] = $uid;
            
        $this->global['pageTitle'] = 'Ujian';    
        $this->loadViews("mulai_page", $this->global, $data, NULL);
    }

    public function finish(){
  
        
        $id = $this->session->userdata('nomer');
        if($this->user_model->updateJawaban($id)){
            
        } 
        
        $uid = $this->global['uid'];
        $data["userinfo"] = $this->user_model->getUserInfoWithRole($this->vendorId);
        $data["userId"] = $uid;
            
        $this->global['pageTitle'] = 'Ujian';    
        $this->loadViews("nilai_page", $this->global, $data, NULL);
    }
    
}

?>