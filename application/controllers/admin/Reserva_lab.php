<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reserva_lab extends CI_Controller
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
	$this->load->model('reserva');
	$dados['curso'] = $this->reserva->gettabela('tblcurso');
	$dados['turno'] = $this->reserva->gettabela('tblturno');
	$dados['unidade'] = $this->reserva->gettabela('tblunidade');
	$dados['periodo'] = $this->reserva->gettabela('tblperiodo');
	$dados['lab'] = $this->reserva->gettabela('tbllaboratorio');
	$this->layout->view('admin/cadastro_reserva',$dados);
  }

  public function receber(){
	//Regras da Validação
	$this->form_validation->set_rules('unidade', 'UNIDADE', 'required');
	$this->form_validation->set_rules('curso', 'CURSO', 'required');
	$this->form_validation->set_rules('disciplina', 'DISCIPLINA', 'required');
	$this->form_validation->set_rules('periodo', 'PERIODO', 'required');
	$this->form_validation->set_rules('dataaula', 'DATA', 'required');
	$this->form_validation->set_rules('turno', 'TURNO', 'required');
	$this->form_validation->set_rules('laboratorio', 'LABORATÓRIO', 'required');
	$this->form_validation->set_rules('titulo', 'TITULO DA AULA', 'required');
	$this->form_validation->set_rules('descricao', 'DESCRICAO', 'required');

	if ($this->form_validation->run() == FALSE) {
	  $this->index();
	} else {
		//Recebe os dados da views
		$data['usuarioid'] = $this->session->id;
		$data['unidadeid'] = $this->input->post('unidade');
		$data['cursoid'] = $this->input->post('curso');
		$data['disciplina'] = $this->input->post('disciplina');
		$data['data_aula'] = $this->input->post('dataaula');
		$data['turnoid'] = $this->input->post('turno');
		$data['periodoid'] = $this->input->post('periodo');
		$data['labid'] = $this->input->post('laboratorio');
		$data['titulo_aula'] = $this->input->post('titulo');
		$data['descricao'] = $this->input->post('descricao');

		/* Carrega o modelo */
		$this->load->model('reserva');

		/* Chama a função inserir do modelo */
		if ($this->reserva->cadastro($data)) {
		  $dados['local'] = 'admin/Paineladm';
		  $dados['mensagem'] = 'Reserva feita com sucesso!';
		  $this->layout->view('mensagem_ok',$dados);
		} else {
		  echo "error";
		}
	}
  }
}
/* End of file Reserva_lab.php */
/* Location: ./application/controllers/admin/Reserva_lab.php */