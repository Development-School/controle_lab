<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario extends CI_Controller
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
    $this->load->model('Usuarios');
    $dados['tipo'] = $this->Usuarios->gettabela('tbltipousuario');
    if ($_SESSION['tipo'] == 1) {
      $dados['usuarios'] = $this->Usuarios->list_usuarios();
      $this->layout->view('admin/usuarios',$dados);
    }
    else{
      $dados['usuario'] = $this->Usuarios->list_usuarios($_SESSION['id']);
      $this->layout->view('admin/editar_cadastro_usuario',$dados);
    }
  }

  public function cadastrar() {
    $this->load->model('Usuarios');
    $dados['tipo'] = $this->Usuarios->gettabela('tbltipousuario');
    $this->layout->view('admin/cadastro_usuario',$dados);
  }

  public function receber(){
    //Regras da Validação
    $this->form_validation->set_rules('nome', 'NOME', 'required');
    $this->form_validation->set_rules('tipo', 'TIPO DE USUARIO', 'required');
    $this->form_validation->set_rules('cpf', 'CPF', 'required|valid_cpf');
    $this->form_validation->set_rules('email', 'EMAIL', 'required');
    $this->form_validation->set_rules('contato', 'CONTATO', 'required');
    // A função matches verifica se os campos são iguais
    $this->form_validation->set_rules('senha', 'SENHA', 'required|matches[senha2]');
    $this->form_validation->set_rules('senha2', 'CONFIRMAR', 'required');

    if ($this->form_validation->run() == FALSE) {
      //se não houver cpf ou senha retornara com msg de erro
      $this->load->model('Usuarios');
      $dados['tipo'] = $this->Usuarios->gettabela('tbltipousuario');
      $dados['tipouser'] = $this->input->post('tipo');
      if (isset($_POST['id'])) {
        $id = $this->input->post('id');
        $dados['id_oculto'] = form_hidden('id', $id);
      }
      $this->load->view('admin/cadastro_usuario',$dados);
    }
    else {
      //Se existir um id faça a atualização de cadastro
      if (isset($_POST['id'])) {
        $id = $this->input->post('id');
        $data['nome'] = $this->input->post('nome');
        $data['tipoid'] = $this->input->post('tipo');
        $data['cpf'] = $this->input->post('cpf');
        $data['matricula'] = $this->input->post('matricula');
        $data['email'] = $this->input->post('email');
        $data['contato'] = $this->input->post('contato');
        $data['senha'] = $this->input->post('senha');

        /* Carrega o modelo */
        $this->load->model('Usuarios');

        /* Chama a função inserir do modelo */
        if ($this->Usuarios->atualiza($id, $data)) {
          $dados['local'] = 'admin/Usuario';
          $dados['mensagem'] = 'Cadastro atualizado com sucesso!';
          $this->load->view('mensagem_ok',$dados);
        } else {
          echo "error";
        }
      }
      //Se não apenas cadastre
      else{
        $data['nome'] = $this->input->post('nome');
        $data['tipoid'] = $this->input->post('tipo');
        $data['cpf'] = $this->input->post('cpf');
        $data['matricula'] = $this->input->post('matricula');
        $data['email'] = $this->input->post('email');
        $data['contato'] = $this->input->post('contato');
        $data['senha'] = $this->input->post('senha');

        /* Carrega o modelo */
        $this->load->model('Usuarios');

        /* Chama a função inserir do modelo */
        if ($this->Usuarios->cadastro($data)) {
          $dados['local'] = 'admin/Usuario';
          $dados['mensagem'] = 'Cadastro realizado com sucesso!';
          $this->load->view('mensagem_ok',$dados);
        } else {echo "error";}
      }
    }
  }

  public function apaga($id){
    if ($id == $_SESSION['id']) {
      $dados['local'] = 'admin/Usuario';
      $dados['mensagem'] = 'Erro! vc nao pode se apagar!';
      $dados['erro'] = true;
      $this->load->view('mensagem_ok',$dados);
    }
    else{
      /* Carrega o modelo */
      $this->load->model('Usuarios');
      /* Chama a função inserir do modelo */
      if ($this->Usuarios->apaga($id)) {
        redirect(base_url('admin/Usuario'));
      } else {
        echo "error";
      }
    }
  }
}
/* End of file Usuario.php */
/* Location: ./application/controllers/admin/Usuario.php */
