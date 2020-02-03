<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Ujian extends BaseController
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
            
        $no = $this->session->userdata('nomer');
        $data['soal'] = $this->user_model->getSoal($no)->row();

        $data['last_number'] = $this->db->get('tbl_soal')->num_rows();

        $this->global['pageTitle'] = 'Ujian ';    
        $this->loadViews("ujian_page", $this->global, $data, NULL);

        //$this->output->enable_profiler(TRUE);
    }

    public function mulai(){
        $data = array(
            'nomer' => 1
        );

        $this->session->set_userdata($data);

        $this->db->empty_table('tbl_jawaban'); 

        $rows = $this->db->get('tbl_soal')->num_rows();
        for($i=1;$i<=$rows;$i++){
            $this->user_model->initialJawaban($i);
        }

        $data['last_number'] = $this->db->get('tbl_soal')->num_rows();

        $uid = $this->global['uid'];
        $data["userinfo"] = $this->user_model->getUserInfoWithRole($this->vendorId);
        $data["userId"] = $uid;
            
        $no = $this->session->userdata('nomer');
        $data['soal'] = $this->user_model->getSoal($no)->row();

        $this->global['pageTitle'] = 'Ujian';    
        $this->loadViews("ujian_page", $this->global, $data, NULL);


    }
    
    public function next(){
        $id = $this->session->userdata('nomer');
        $no = $this->session->userdata('nomer')+1;

        $data = array(
            'nomer' => $no
        );

        $this->session->set_userdata($data);

        if($this->user_model->updateJawaban($id) == true){
            redirect('ujian');
        } else {
            redirect('ujian');
        }
    }

    public function back(){
        $id = $this->session->userdata('nomer');
        $no = $this->session->userdata('nomer')-1;
        $data = array(
            'nomer' => $no
        );

        $this->session->set_userdata($data);

        if($this->user_model->updateJawaban($id)){
            redirect('ujian');
        } else {
            redirect('ujian');
        }
    }

    public function finish(){
        $query = $this->db->query("SELECT jawaban,knc_jawaban 
        FROM `tbl_jawaban`
        join `tbl_soal` on
        `tbl_jawaban`.id_soal=`tbl_soal`.id_soal")->result();

        $nilai = 0;
        $jumlah = $this->db->get('tbl_soal')->num_rows();
        foreach($query as $data){
            echo $data->jawaban;
            echo ' ';
            echo $data->knc_jawaban;
            echo '<br>';

            if($data->jawaban == $data->knc_jawaban){
                $nilai +=1;
            }
        };

        echo $nilai.'<br>';
        echo $nilai/$jumlah*100;
    }

    public function satu(){
        $data = array(
            'nomer' => 1
        );

        $this->session->set_userdata($data);
    }

    public function profile(){
        $this->output->enable_profiler(TRUE);
    }

}

?>