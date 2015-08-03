<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Material extends CI_Controller {

	public function __construct(){
    parent::__construct();
    /* Esta condição verifica se algum
     * Usuario está logado
     * Caso não esteja logado é carregada a view de login
     * Caso o tipo não seja igual ao local da area admim
     * o usuario e redirecionado
     */
    $local = 3;
    $tipo = $_SESSION['tipo'];           
    if(!isset($_SESSION['logado'])){            
      redirect(base_url());            
    }elseif($tipo != $local){            
      redirect(base_url());            
    }      
  }

  public function index() {   
    $this->load->model('Lab_model');        
    $dados['material'] = $this->Lab_model->gettabela('tblmaterial');
    $this->load->view('admin3/material_view',$dados); 
  }

  public function cadastrar() {
    $dados['titulo'] = 'Cadastar Material';    
    $dados['titulobtn'] = 'Cadastar';    
    $this->load->view('admin3/cadastro_material',$dados);      
  }

  public function Editar($id = '') {
    $this->load->model('Lab_model');
    if ($id != '') {
      $dados['id_oculto'] = form_hidden('id', $id);
      $dados['material'] = $this->Lab_model->get_material($id);   
    }
    $dados['titulo'] = 'Editar Laboratorio'; 
    $dados['titulobtn'] = 'Editar'; 
    $this->load->view('admin3/cadastro_material',$dados);      
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
          $dados['local'] = 'admin3/Material';
          $dados['mensagem'] = 'Material Atualizado com sucesso!';
          $this->load->view('mensagem_ok',$dados);
        } else {echo "error";}
      }
      else{
        $data['materialnome'] = $this->input->post('nome');
        $data['quantidade'] = $this->input->post('quantidade');
       
        /* Carrega o modelo */
        $this->load->model('Lab_model');            

        /* Chama a função inserir do modelo */
        if ($this->Lab_model->cadastro_material($data)) {
          $dados['local'] = 'admin3/Material';
          $dados['mensagem'] = 'Material cadastrado com sucesso!';
          $this->load->view('mensagem_ok',$dados);
        } else {echo "error";}
      }            
    }       
  }

  public function apaga($id){
    /* Carrega o modelo */
    $this->load->model('Lab_model');            

    /* Chama a função inserir do modelo */
    if ($this->Lab_model->apaga_material($id)) {
      redirect(base_url('admin3/Material'));
    } else {
      echo "error";
    }
  }
}