<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ajuda extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $tipo = $_SESSION['tipo'];
    if ($tipo == 2) {
      $this->layout->setHeader('navbar_professor');
    }
    if ($tipo == 3) {
      $this->layout->setHeader('navbar_tecnico');
    }
    if(!isset($_SESSION['logado'])){
      redirect(base_url());
    }
  }

  public function index(){
    $this->layout->view('ajuda');
  }
}
/* End of file Ajuda.php */
/* Location: ./application/controllers/Ajuda.php */