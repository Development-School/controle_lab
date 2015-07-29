<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Labs extends CI_Controller {
	/**
     * Cronograma - Area Administrativa
     *
     * @package     CodeIgniter
     * @subpackage  Controllers
     * @category    Area Administrativa
     * @author      Escritório Escola Dev Team
     * @link        http://www.semanatrans.esy.es
     * 
     * Este Controller foi projetado para exibir o Cronograma do evento!
     */
    
  public function __construct(){
    parent::__construct();
    /* Esta condição verifica se algum
     * Usuario está logado
     * Caso não esteja logado é carregada a view de login
     * Caso o tipo não seja igual ao local da area admim
     * o usuario e redirecionado
     */
    $local = 1;
    $tipo = $_SESSION['tipo'];           
    if(!isset($_SESSION['logado'])){            
      redirect(base_url());            
    }elseif($tipo != $local){            
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
    $this->load->view('admin1/laboratorios',$dados);
  }

  public function cadastrar() {
    $this->load->model('Lab_model');   
    $dados['tipo'] = $this->Lab_model->gettabela('tbltipolab');    
    $dados['unidade'] = $this->Lab_model->gettabela('tblunidade');    
    $dados['titulo'] = 'Cadastar Laboratorio';    
    $dados['titulobtn'] = 'Cadastar';    
    $this->load->view('admin1/cadastro_lab',$dados);      
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
    $this->load->view('admin1/cadastro_lab',$dados);      
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
          $dados['local'] = 'admin1/Labs';
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
          $dados['local'] = 'admin1/Labs';
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
      redirect(base_url('admin1/Labs'));
    } else {
      echo "error";
    }
  }	
}