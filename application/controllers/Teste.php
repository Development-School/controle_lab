<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Teste extends CI_Controller
{
	public function index()
	{
    $this->layout->setHeader();
		setMensagem('Home', 'ola mundo !', false, '100000');
	}
}

/* End of file Teste.php */
/* Location: ./application/controllers/Teste.php */