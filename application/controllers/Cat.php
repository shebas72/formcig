<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cat extends CI_Controller {


function __construct() {
parent::__construct();

// Load url helper
$this->load->helper('url');
        $this->load->library(['form_validation','session']);
        $this->load->database();
        $this->load->model('Cat_model');
}

	public function index()
	{
	 $data['title'] = 'Category';
        
 $this->load->helper('form');
  $data['groups'] = $this->Cat_model->getAllGroups();
  $this->load->view('cat', $data);
	}


    public function doRegister() {
        //set the form validation here
        
        $this->form_validation->set_message('is_unique', 'Project already exists.');
        $this->form_validation->set_rules('name', 'name', 'required|is_unique[project.name]');
       $this->form_validation->set_rules('project', 'project', 'required');
        //if the above validation fails, redirect to register page
        //with vaildation_errors();
        if ($this->form_validation->run() == FALSE) {
            //set the validation errors in flashdata (one time session)
            $this->session->set_flashdata('errors', validation_errors());
            redirect(base_url() . 'cat');
        } else {
            //if not get the input values
            $name = $this->input->post('name');
            $project = $this->input->post('project');
            $description = $this->input->post('description');
          
            $data = [
                'name' => $name, 'project' => $project,'description' => $description
            ];
            //pass the input values to the register model
            $insert_data = $this->Cat_model->add_cat($data);
            //if data inserted then set the success message and redirect to login page
            if ($insert_data) {
                $this->session->set_flashdata('msg', 'Category added Successfully!');
               redirect(base_url() . 'index.php/cat');
            }
        }
    }
}