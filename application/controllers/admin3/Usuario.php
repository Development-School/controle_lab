<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario extends CI_Controller {
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

	public function index()
	{
		$this->load->model('Usuarios');
    $dados['usuario'] = $this->Usuarios->list_usuarios($_SESSION['id']);
    $this->load->view('admin3/cadastro_usuario',$dados); 
	}

	public function receber(){
    //Regras da Validação
    $this->form_validation->set_rules('nome', 'NOME', 'required');
    //$this->form_validation->set_rules('tipo', 'TIPO DE USUARIO', 'required'); 
    $this->form_validation->set_rules('cpf', 'CPF', 'required|valid_cpf'); 
    $this->form_validation->set_rules('email', 'EMAIL', 'required');
    $this->form_validation->set_rules('contato', 'CONTATO', 'required');       
    // A função matches verifica se os campos são iguais
    $this->form_validation->set_rules('senha', 'SENHA', 'required|matches[senha2]');
    $this->form_validation->set_rules('senha2', 'CONFIRMAR', 'required');
       
    if ($this->form_validation->run() == FALSE) {
    	$this->index();
    } 
    else {      
      $id = $this->input->post('id');
      $data['nome'] = $this->input->post('nome');
      //$data['tipoid'] = $this->input->post('tipo');
      $data['cpf'] = $this->input->post('cpf');
      $data['matricula'] = $this->input->post('matricula');
      $data['email'] = $this->input->post('email');
      $data['contato'] = $this->input->post('contato');
      $data['senha'] = $this->input->post('senha');
     
      /* Carrega o modelo */
      $this->load->model('Usuarios');            

      /* Chama a função inserir do modelo */
      if ($this->Usuarios->atualiza($id, $data)) {
        $dados['local'] = 'admin3/Usuario';
        $dados['mensagem'] = 'Cadastro atualizado com sucesso!';
        $this->load->view('mensagem_ok',$dados);
      } else {
        echo "error";
      }
    }
  } 
}

/* End of file Usuario.php */
/* Location: ./application/controllers/admin2/Usuario.php */