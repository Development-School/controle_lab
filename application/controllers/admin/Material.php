<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Material extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $local = $this->router->class.'/'.$this->router->method;
    $tipo = $_SESSION['tipo'];
    if ($tipo == 2) $this->layout->setHeader('navbar_professor');
    if ($tipo == 3) $this->layout->setHeader('navbar_tecnico');
    if ( !checkPermissao($tipo, $local) ) redirect(base_url());
  }

  public function index() {
    $this->load->model('Lab_model');
    $dados['material'] = $this->Lab_model->gettabela('tblmaterial');
    $this->layout->view('admin/material_view',$dados);
  }

  public function cadastrar() {
    $dados['titulo'] = 'Cadastar Material';
    $dados['titulobtn'] = 'Cadastar';
    $this->layout->view('admin/cadastro_material',$dados);
  }

  public function Editar($id = '') {
    $this->load->model('Lab_model');
    if ($id != '') {
      $dados['id_oculto'] = form_hidden('id', $id);
      $dados['material'] = $this->Lab_model->get_material($id);
    }
    $dados['titulo'] = 'Editar Laboratorio';
    $dados['titulobtn'] = 'Editar';
    $this->layout->view('admin/cadastro_material',$dados);
  }

  public function receber(){
    //Regras da Validação
    $this->form_validation->set_rules('nome', 'NOME', 'required');
    $this->form_validation->set_rules('quantidade', 'QUANTIDADE', 'required');
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
        $data['materialnome'] = $this->input->post('nome');
        $data['quantidade'] = $this->input->post('quantidade');

        /* Carrega o modelo */
        $this->load->model('Lab_model');

        /* Chama a função inserir do modelo */
        if ($this->Lab_model->atualiza_material($id, $data)) {
          setMensagem('admin/material', 'Material Atualizado com sucesso!');
        } else {
          setMensagem('admin/material', 'Ocorreu um Erro', TRUE);
        }
      }
      else{
        $data['materialnome'] = $this->input->post('nome');
        $data['quantidade'] = $this->input->post('quantidade');

        /* Carrega o modelo */
        $this->load->model('Lab_model');

        /* Chama a função inserir do modelo */
        if ($this->Lab_model->cadastro_material($data)) {
          setMensagem('admin/material', 'Material cadastrado com sucesso!');
        } else {
          setMensagem('admin/material', 'Ocorreu um Erro', TRUE);
        }
      }
    }
  }

  public function apaga($id){
    /* Carrega o modelo */
    $this->load->model('Lab_model');

    /* Chama a função inserir do modelo */
    if ($this->Lab_model->apaga_material($id)) {
      setMensagem('admin/material', 'Material apagado com sucesso!');
    } else {
      setMensagem('admin/material', 'Ocorreu um Erro', TRUE);
    }
  }
}
/* End of file Material.php */
/* Location: ./application/controllers/admin/Material.php */
