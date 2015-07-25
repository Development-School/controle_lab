<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller{

	public function index(){
		/*Carregando uma view olamundo.php*/
		$this->load->view('site/menu');
		$this->load->view('site/home');
		$this->load->view('site/footer');
	}

	public function calendario(){
		$this->load->view('site/menu');
		$this->load->view('site/calendario');
		$this->load->view('site/footer');
	}
	
	public function sobre(){
		$this->load->view('site/menu');
		$this->load->view('site/sobre');
		$this->load->view('site/footer');
	}

	public function ajuda(){
		$this->load->view('site/menu');
		$this->load->view('site/ajuda');
		$this->load->view('site/footer');
	}

	public function login(){
		//carrega a view login_de_usuario.php
    $data['erro'] = NULL;
	  $this->load->view('login_de_usuario',$data);
		/*$this->load->view('site/menu');
		$this->load->view('site/login');
		$this->load->view('site/footer');*/
	}

	/*calendários por área*/
	public function ciencias_exatas(){
		$this->load->view('site/menu');
		$this->load->view('site/ciencias_exatas');
		$this->load->view('site/footer');
	}

	public function ciencias_biologicas(){
		$this->load->view('site/menu');
		$this->load->view('site/ciencias_biologicas');
		$this->load->view('site/footer');
	}

	public function ciencias_humanas(){
		$this->load->view('site/menu');
		$this->load->view('site/ciencias_humanas');
		$this->load->view('site/footer');
	}
}