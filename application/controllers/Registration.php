<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Registration extends CI_Controller {


function __construct() {
parent::__construct();

// Load url helper
$this->load->helper('url');
        $this->load->library(['form_validation','session']);
        $this->load->database();
        $this->load->model('UserRegister', 'registration');
}

	public function index()
	{
	 $data['title'] = 'Registration';
        $this->load->view('welcome_message', $data);

	}


    public function doRegister() {
        //set the form validation here
        $this->form_validation->set_rules('fname', 'fname', 'required|min_length[3]');
        $this->form_validation->set_rules('lname', 'lname', 'required');
        $this->form_validation->set_rules('pname', 'pname', 'required|min_length[3]');
       
        $this->form_validation->set_rules('shopurl', 'shopurl', 'required|min_length[3]');
       
        $this->form_validation->set_rules('city', 'city', 'required|min_length[3]');
        $this->form_validation->set_rules('street', 'street', 'required|min_length[3]');
        $this->form_validation->set_rules('state', 'state', 'required|min_length[3]');
        $this->form_validation->set_rules('zip', 'zip', 'required|min_length[3]');
      
        $this->form_validation->set_message('is_unique', 'Email already exists.');
        $this->form_validation->set_rules('email', 'email', 'required|valid_email|is_unique[register.email]');
        $this->form_validation->set_rules('password', 'password', 'required|min_length[4]');
        //if the above validation fails, redirect to register page
        //with vaildation_errors();
        if ($this->form_validation->run() == FALSE) {
            //set the validation errors in flashdata (one time session)
            $this->session->set_flashdata('errors', validation_errors());
            redirect(base_url() . 'welcome_message');
        } else {
            //if not get the input values
            $fname = $this->input->post('fname');
            $lname = $this->input->post('lname');
            $pname = $this->input->post('pname');
            $shopurl = $this->input->post('shopurl');
            $dob = $this->input->post('dob');
            $city = $this->input->post('city');
            $street = $this->input->post('street');
            $state = $this->input->post('state');
            $zip = $this->input->post('zip');
            $country = $this->input->post('country');
            $company = $this->input->post('company');
            $telephone = $this->input->post('telephone');
            $email = $this->input->post('email');
            $password = sha1($this->input->post('password'));
            $data = [
                'fname' => $fname, 'lname' => $lname, 'pname' => $pname, 'shopurl' => $shopurl, 'dob' => $dob, 'city' => $city, 'street' => $street, 'state' => $state, 'zip' => $zip, 'country' => $country, 'company' => $company, 'telephone' => $telephone, 'email' => $email, 'password' => $password, 'date_time' => date('Y-m-d H:i:s')
            ];
            //pass the input values to the register model
            $insert_data = $this->registration->add_user($data);
            //if data inserted then set the success message and redirect to login page
            if ($insert_data) {
                $this->session->set_flashdata('msg', 'Successfully Register!');
               redirect(base_url() . 'index.php');
            }
        }
    }
}