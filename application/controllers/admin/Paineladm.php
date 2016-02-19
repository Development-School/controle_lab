<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Paineladm extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $local = $this->router->class.'/'.$this->router->method;
    $tipo = $_SESSION['tipo'];
    if ($tipo == 2) {
      $this->layout->setHeader('navbar_professor');
    }
    if ($tipo == 3) {
      $this->layout->setHeader('navbar_tecnico');
    }
    if ( !checkPermissao($tipo, $local) ) {
      redirect(base_url());
    }
  }

  public function index() {
    $id = $this->session->userdata('id');
    $this->load->model('reserva');
    $dados['reservado'] = $this->reserva->list_reserva($id);
    $this->layout->view('admin/paineladm',$dados);
  }

  public function apaga($id){
    /* Carrega o modelo */
    $this->load->model('reserva');
    /* Chama a função inserir do modelo */
    if ($this->reserva->apaga($id)) {
      redirect('admin/paineladm');
    } else {
      echo "error";
    }
  }
}
/* End of file Paineladm.php */
/* Location: ./application/controllers/admin1/Paineladm.php */
