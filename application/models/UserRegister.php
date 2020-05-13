    <?php
    class UserRegister extends CI_Model{
        public function add_user($data){
         
            return $this->db->insert('register', $data);
        }
       
    }