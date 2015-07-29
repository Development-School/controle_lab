<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Usuario extends CI_Controller {
    /**
     * Cadastro Evento
     *
     * @package     CodeIgniter
     * @subpackage  Controllers
     * @category    reserva de laboratorios
     * @author      Escritório Escola Dev Team
     * @link        http://www.semanatrans.esy.es
     * 
     * Este Controller foi projetado para ser a Area de reserva de laboratorios!
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

  public function index() {
    $this->load->model('Usuarios');
    $dados['usuarios'] = $this->Usuarios->list_usuarios();
    $dados['tipo'] = $this->Usuarios->gettabela('tbltipousuario');
    $this->load->view('admin1/usuarios',$dados);      
  }

  public function cadastrar() {
    $this->load->model('Usuarios');   
    $dados['tipo'] = $this->Usuarios->gettabela('tbltipousuario');    
    $this->load->view('admin1/cadastro_usuario',$dados);      
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
      $this->load->view('admin1/cadastro_usuario',$dados);      
    } 
    else {
      $cpf = $this->input->post('cpf'); 
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
          $dados['local'] = 'admin1/Usuario';
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
          $dados['local'] = 'admin1/Usuario';
          $dados['mensagem'] = 'Cadastro realizado com sucesso!';
          $this->load->view('mensagem_ok',$dados);
        } else {echo "error";}
      }      
    }       
  }

  public function apaga($id){
        /* Carrega o modelo */
        $this->load->model('Usuarios');            

        /* Chama a função inserir do modelo */
        if ($this->Usuarios->apaga($id)) {
            redirect(base_url('admin1/Usuario'));
        } else {
            echo "error";
        }
    }
}