<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class : User_model (User Model)
 * User model class to get to handle user related data 
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class User_model extends CI_Model
{
    /**
     * This function is used to get the user listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
   
    function getUserInfoWithRole($userId)
    {
        $this->db->select('BaseTbl.userId, BaseTbl.email, BaseTbl.name, BaseTbl.mobile, BaseTbl.roleId, Roles.role');
        $this->db->from('tbl_users as BaseTbl');
        $this->db->join('tbl_roles as Roles','Roles.roleId = BaseTbl.roleId');
        $this->db->where('BaseTbl.userId', $userId);
        $this->db->where('BaseTbl.isDeleted', 0);
        $query = $this->db->get();
        
        return $query->row();
    }

    function getSoal($no)
    {
        return $this->db->where('id_soal', $no)->get('tbl_soal');
    }
    
    function userListing($searchText = '', $page, $segment)
    {
        $this->db->select('BaseTbl.userId, BaseTbl.email, BaseTbl.name, BaseTbl.mobile, BaseTbl.createdDtm, Role.role');
        $this->db->from('tbl_users as BaseTbl');
        $this->db->join('tbl_roles as Role', 'Role.roleId = BaseTbl.roleId','left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.email  LIKE '%".$searchText."%'
                            OR  BaseTbl.name  LIKE '%".$searchText."%'
                            OR  BaseTbl.mobile  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->where('BaseTbl.roleId !=', 1);
        $this->db->order_by('BaseTbl.userId', 'DESC');
        $this->db->limit($page, $segment);
        $query = $this->db->get();
        
        $result = $query->result();        
        return $result;
    }
    function userListingCount($searchText = '')
    {
        $this->db->select('BaseTbl.userId, BaseTbl.email, BaseTbl.name, BaseTbl.mobile, BaseTbl.createdDtm, Role.role');
        $this->db->from('tbl_users as BaseTbl');
        $this->db->join('tbl_roles as Role', 'Role.roleId = BaseTbl.roleId','left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.email  LIKE '%".$searchText."%'
                            OR  BaseTbl.name  LIKE '%".$searchText."%'
                            OR  BaseTbl.mobile  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->where('BaseTbl.roleId !=', 1);
        $query = $this->db->get();
        
        return $query->num_rows();
    }
    function getUserRoles()
    {
        $this->db->select('roleId, role');
        $this->db->from('tbl_roles');
        $this->db->where('roleId !=', 1);
        $query = $this->db->get();
        
        return $query->result();
    }
    function getUserInfo($userId)
    {
        $this->db->select('userId, name, email, mobile, roleId');
        $this->db->from('tbl_users');
        $this->db->where('isDeleted', 0);
		$this->db->where('roleId !=', 1);
        $this->db->where('userId', $userId);
        $query = $this->db->get();
        
        return $query->row();
    }
    function editUser($userInfo, $userId)
    {
        $this->db->where('userId', $userId);
        $this->db->update('tbl_users', $userInfo);
        
        return TRUE;
    }
    

    function deleteUser($userId, $userInfo)
    {
        $this->db->where('userId', $userId);
        $this->db->update('tbl_users', $userInfo);
        
        return $this->db->affected_rows();
    }

    public function insertSoal(){
        $data = array(
            'soal'=> $this->input->post('soal'),
            'a'=> $this->input->post('a'),
            'b'=> $this->input->post('b'),
            'c'=> $this->input->post('c'),
            'knc_jawaban' => $this->input->post('knc_jawaban')
        );
        $this->db->insert('tbl_soal', $data);

        if($this->db->affected_rows() > 0){
            return true;
        } else {
            return false;
        }
    }

    public function updateSoal($id){
        $data = array(
            'soal'=> $this->input->post('soal'),
            'a'=> $this->input->post('a'),
            'b'=> $this->input->post('b'),
            'c'=> $this->input->post('c'),
            'knc_jawaban' => $this->input->post('knc_jawaban')
        );
        $this->db->where('id_soal', $id)->update('tbl_soal', $data);

        if($this->db->affected_rows() > 0){
            return true;
        } else {
            return false;
        }
    }

    public function deleteSoal($id){
        $this->db->where('id_soal', $id)->delete('tbl_soal');

        if($this->db->affected_rows() > 0){
            return true;
        } else {
            return false;
        }
    }

    public function updateJawaban($id){
        //die($id.' '.$this->input->post('jawaban'));
        $data = array(
            'jawaban' => $this->input->post('jawaban')
        );

        $this->db->where('id_soal', $id)->update('tbl_jawaban', $data);
        
        //die($this->db->last_query());

        if($this->db->affected_rows() > 0){
            return true;
        } else {
            return false;
        }
    }

    public function initialJawaban($no){
        $data = array(
            'id_users' => $this->session->userdata('userId'),
            'id_soal' => $no,
            'jawaban' => 'a'
        );

        $this->db->insert('tbl_jawaban', $data);

        if($this->db->affected_rows() > 0){
            return true;
        } else {
            return false;
        }
    }

}
?>

  