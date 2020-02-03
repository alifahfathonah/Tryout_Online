<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class User extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        $this->load->model('contacts_model');
      
        $this->isLoggedIn();   
    }
    
    /**
     * This function used to load the first screen of the user
     */
    public function index()
    {
        $this->global['pageTitle'] = 'Ujian';
        
        $countUsers = $this->user_model->userListingCount('');
        $uid = $this->global['uid'];
        $countContacts = $this->contacts_model->contactTotalCount('',$uid);
        $balance = $this->saldo_model->getSaldoInfo($uid);
        $countTrans = $this->transaction_model->totalTrans('',$uid);

        $data['totalUsers'] = $countUsers;
        $data['totalContacts'] = $countContacts;
        $data['totalBalance'] = number_format($balance->saldo,2,',','.');  
        $data['totalTrans']  = $countTrans;  
        $this->loadViews("dashboard", $this->global, $data , NULL);
    }
    

    public function insertSoal(){
        if($this->user_model->insertSoal()){
            $this->session->set_flashdata('success','Berhasil di input');
            redirect('userListing');
        } else {
            $this->session->set_flashdata('fail','Gagal di input');
            redirect('userListing');
        }
    }

    public function updateSoal($id){
        if($this->user_model->updateSoal($id)){
            $this->session->set_flashdata('success','Berhasil di update');
            redirect('userListing');
        } else {
            $this->session->set_flashdata('fail','Gagal di update');
            redirect('userListing');
        }
    }

    public function deleteSoal($id){
        if($this->user_model->deleteSoal($id)){
            $this->session->set_flashdata('success','Berhasil di hapus');
            redirect('userListing');
        } else {
            $this->session->set_flashdata('fail','Gagal di hapus');
            redirect('userListing');
        }
    }

    /**
     * This function is used to load the user list
     */
    function userListing()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {        
            $searchText = $this->security->xss_clean($this->input->post('searchText'));
            $data['searchText'] = $searchText;
            
            $this->load->library('pagination');
            
            $count = $this->user_model->userListingCount($searchText);

			$returns = $this->paginationCompress ( "userListing/", $count, 10 );
            
            //$data['userRecords'] = $this->user_model->userListing($searchText, $returns["page"], $returns["segment"]);
            
            $data['soal'] = $this->db->get('tbl_soal')->result();

            $this->global['pageTitle'] = 'CIAS2 : User Listing';
            
            $this->loadViews("users", $this->global, $data, NULL);
        }
    }

    /**
     * This function is used to load the add new form
     */
    function addNew()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $this->load->model('user_model');
            $data['roles'] = $this->user_model->getUserRoles();
            
            $this->global['pageTitle'] = 'CIAS2 : Add New User';

            $this->loadViews("addNew", $this->global, $data, NULL);
        }
    }

    /**
     * This function is used to check whether email already exist or not
     */
    
    /**
     * This function is used to add new user to the system
     */
    
    
    function profile($active = "details")
    {
        $data["userInfo"] = $this->user_model->getUserInfoWithRole($this->vendorId);
        $data["active"] = $active;
        
        $this->global['pageTitle'] = $active == "details" ? 'CIAS2 : My Profile' : 'CIAS2 : Change Password';
        $this->loadViews("profile", $this->global, $data, NULL);
    }

    }

   