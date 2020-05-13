    <?php
    class Project_modelsss extends CI_Model{
        public function add_project($data){
         
            return $this->db->insert('project', $data);
        }
       
    }