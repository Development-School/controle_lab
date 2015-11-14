<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Teste extends CI_Controller {

	public function index()
	{
		echo "<pre>";
		print_r ($_SERVER);
		echo "</pre>";
	}

}

/* End of file Teste.php */
/* Location: ./application/controllers/Teste.php */