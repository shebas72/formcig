    <?php
    class Cat_model extends CI_Model{
        public function add_cat($data){
         
            return $this->db->insert('cat', $data);
        }


         function getAllGroups(){
         
           $query = $this->db->query('SELECT name FROM project');
    return $query->result();
        }
       
    }