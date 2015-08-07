<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Reserva_lab extends CI_Controller {
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
	$this->load->model('reserva');
	$dados['curso'] = $this->reserva->gettabela('tblcurso');
	//$dados['disciplina'] = $this->reserva->gettabela('tbldisciplina');
	$dados['turno'] = $this->reserva->gettabela('tblturno');
	$dados['unidade'] = $this->reserva->gettabela('tblunidade');
	$dados['periodo'] = $this->reserva->gettabela('tblperiodo');
	$dados['lab'] = $this->reserva->gettabela('tbllaboratorio');
	$this->load->view('admin1/cadastro_reserva',$dados);      
  }

  public function getDisciplina($id_curso)
  {
		$this->load->model('Curso_model');
		$cidades = $this->Curso_model->grade($id_curso);
		if( empty ( $cidades ) ) 
			return '{ "nome": "Nenhuma cidade encontrada" }';
		echo json_encode($cidades);
		return;
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
		$data['disciplinaid'] = $this->input->post('disciplina');
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
		  $dados['local'] = 'admin1/Paineladm';
		  $dados['mensagem'] = 'Reserva feita com sucesso!';
		  $this->load->view('mensagem_ok',$dados);
		} else {
		  echo "error";
		}
	}       
  }
}
/* End of file Reserva_lab.php */
/* Location: ./application/controllers/admin1/Reserva_lab.php */