<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Labs extends CI_Controller
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

  public function index(){
    $this->load->model('Lab_model');
    $unidade = $this->Lab_model->gettabela('tblunidade');
    foreach ($unidade as $unidade) {
      $dados['labs'][$unidade['unidadeid']] = $this->Lab_model->labs_unid($unidade['unidadeid']);
    }
    $dados['unidade'] = $this->Lab_model->gettabela('tblunidade');
    if ($_SESSION['tipo'] != 1) {
      $this->layout->view('admin/laboratorios_list',$dados);
    }
    else{
      $this->layout->view('admin/laboratorios',$dados);
    }
  }

  public function cadastrar() {
    $this->load->model('Lab_model');
    $dados['tipo'] = $this->Lab_model->gettabela('tbltipolab');
    $dados['unidade'] = $this->Lab_model->gettabela('tblunidade');
    $dados['titulo'] = 'Cadastar Laboratorio';
    $dados['titulobtn'] = 'Cadastar';
    $this->layout->view('admin/cadastro_lab',$dados);
  }

  public function Editar($id = '') {
    $this->load->model('Lab_model');
    $dados['tipo'] = $this->Lab_model->gettabela('tbltipolab');
    $dados['unidade'] = $this->Lab_model->gettabela('tblunidade');
    if ($id != '') {
      $dados['id_oculto'] = form_hidden('id', $id);
      $dados['laboratorio'] = $this->Lab_model->labs_id($id);
    }
    $dados['titulo'] = 'Editar Laboratorio';
    $dados['titulobtn'] = 'Editar';
    $this->layout->view('admin/cadastro_lab',$dados);
  }

  public function receber(){
    //Regras da Validação
    $this->form_validation->set_rules('nome', 'NOME', 'required');
    $this->form_validation->set_rules('unidade', 'UNIDADE', 'required');
    $this->form_validation->set_rules('tipo', 'TIPO DE LABORATORIO', 'required');
    $this->form_validation->set_rules('capacidade', 'CAPACIDADE', 'required');

    if ($this->form_validation->run() == FALSE) {
      if (isset($_POST['id'])) {
        $this->Editar($_POST['id']);
      }else{
        $this->cadastrar();
      }
    }
    else {
      if (isset($_POST['id'])) {
        $id = $this->input->post('id');
        $data['labnome'] = $this->input->post('nome');
        $data['tipolabid'] = $this->input->post('tipo');
        $data['capacidade'] = $this->input->post('capacidade');
        $data['unidadeid'] = $this->input->post('unidade');

        /* Carrega o modelo */
        $this->load->model('Lab_model');

        /* Chama a função inserir do modelo */
        if ($this->Lab_model->atualiza($id, $data)) {
          $dados['local'] = 'admin/Labs';
          $dados['mensagem'] = 'Laboratorio Atualizado com sucesso!';
          $this->load->view('mensagem_ok',$dados);
        } else {echo "error";}
      }
      else{
        $data['labnome'] = $this->input->post('nome');
        $data['tipolabid'] = $this->input->post('tipo');
        $data['capacidade'] = $this->input->post('capacidade');
        $data['unidadeid'] = $this->input->post('unidade');

        /* Carrega o modelo */
        $this->load->model('Lab_model');

        /* Chama a função inserir do modelo */
        if ($this->Lab_model->cadastro($data)) {
          $dados['local'] = 'admin/Labs';
          $dados['mensagem'] = 'Laboratorio cadastrado com sucesso!';
          $this->load->view('mensagem_ok',$dados);
        } else {echo "error";}
      }
    }
  }

  public function apaga($id){
    /* Carrega o modelo */
    $this->load->model('Lab_model');

    /* Chama a função inserir do modelo */
    if ($this->Lab_model->apaga($id)) {
      redirect(base_url('admin/Labs'));
    } else {
      echo "error";
    }
  }
}
/* End of file Labs.php */
/* Location: ./application/controllers/admin/Labs.php */
