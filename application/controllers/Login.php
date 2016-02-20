<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller
{
	public function index()
  {
    $this->layout->setHeader();
    $this->layout->view('login_de_usuario');
	}

  public function logar()
  {
		// Regras da Validação
    $this->form_validation->set_rules('cpf', 'CPF', 'required|valid_cpf' );
    $this->form_validation->set_rules('senha', 'SENHA', 'required');

    if ($this->form_validation->run() == FALSE) {
    	//se não houver cpf ou senha retornara com msg de erro
        $this->index();
    } else {
      $cpf   = $this->input->post('cpf');
		  $senha = $this->input->post('senha');

      //Consulta no Banco de Dados
      $this->load->model('Usuarios');
      $usuario = $this->Usuarios->login($cpf,$senha);

      if(count($usuario)===1){ // VERIFICA LOGIN E SENHA
        //Adiciona o cpf ao cookie do usuario
        $this->load->library('session');
        $dados = array(
          'id'=>$usuario[0]->usuarioid,
          'nome'=> $usuario[0]->nome,
          'tipo'=> $usuario[0]->tipoid,
          'logado'=>TRUE
        );//array com os dados do cookie
        $this->session->set_userdata($dados);//passando a array para o cookie
        redirect('admin/paineladm');
      }
      else{
        $data['erro'] = 'CPF ou Senha incorretos';
        $this->load->view('login_de_usuario',$data);
      }
    }
  }

  public function sair(){
    //Função de logout do sistema
    $this->session->sess_destroy();
    redirect(base_url(),'refresh');
  }
}
/* End of file Login.php */
/* Location: ./application/controllers/Login.php */
