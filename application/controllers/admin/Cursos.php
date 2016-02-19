<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cursos extends CI_Controller
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

	public function index()
	{
		$this->load->model('Curso_model');
    $dados['curso'] = $this->Curso_model->list_cursos();
    $this->layout->view('admin/cursos_view',$dados);
	}

	public function cadastrar()
	{
		$this->load->model('Curso_model');
    $dados['periodo'] = $this->Curso_model->gettabela('tblperiodo');
    $dados['titulo'] = 'Cadastar Curso';
    $dados['titulobtn'] = 'Cadastar';
    $this->layout->view('admin/cadastro_curso',$dados);
	}

	public function receber()
	{
		//Regras da Validação
    $this->form_validation->set_rules('nome', 'NOME', 'required');
    $this->form_validation->set_rules('periodo', 'PERIODOS DO CURSO', 'required');
    $this->form_validation->set_rules('disciplina', 'DISCIPLINA', 'required');

    if ($this->form_validation->run() == FALSE) {
			if (isset($_POST['id'])) {
				$this->editar($_POST['id']);
			}
			else{$this->cadastrar();}
    }
    else {
    	if (isset($_POST['id'])) {
    		$idcurso = $this->input->post('id');
    		$tblcurso['cursodesc'] = $this->input->post('nome');
		    $tblfiltroperiodo['periodoid'] = $this->input->post('periodo');
		    //array_unique — Remove o valores duplicados de um array
		    $tblgrade = array_unique($this->input->post('disciplina[]'));
		    $this->load->model('Curso_model');
		     if ($this->Curso_model->atualizar($idcurso, $tblcurso, $tblfiltroperiodo, $tblgrade)) {
		      $dados['local'] = 'admin/Cursos';
		      $dados['mensagem'] = 'Curso Atualizado com sucesso!';
		      $this->load->view('mensagem_ok',$dados);
		    } else {
		      echo "error";
		    }
    	}
    	else{
				$tblcurso['cursodesc'] = $this->input->post('nome');
		    $tblfiltroperiodo['periodoid'] = $this->input->post('periodo');
		    //array_unique — Remove o valores duplicados de um array
		    $tblgrade = array_unique($this->input->post('disciplina[]'));
		    $this->load->model('Curso_model');
		    /* Chama a função inserir do modelo */
		    if ($this->Curso_model->cadastro($tblcurso, $tblfiltroperiodo, $tblgrade)) {
		      $dados['local'] = 'admin/Cursos';
		      $dados['mensagem'] = 'Curso Cadastrado com sucesso!';
		      $this->load->view('mensagem_ok',$dados);
		    } else {
		      echo "error";
		    }
	  	}
  	}
	}

	public function excluir($id)
	{
    $this->load->model('Curso_model');
    if ($this->Curso_model->excluir($id)) {
      redirect(base_url('admin/Cursos'));
    } else {
      echo "error";
    }
	}

	public function editar($id)
	{
    $this->load->model('Curso_model');
    $dados['periodo'] = $this->Curso_model->gettabela('tblperiodo');
    if ($id) {
      $dados['id_oculto'] = form_hidden('id', $id);
      $dados['curso'] = $this->Curso_model->list_cursos($id);
    }
    $dados['titulo'] = 'Editar Curso';
    $dados['titulobtn'] = 'Editar';
    $this->layout->view('admin/cadastro_curso',$dados);
	}
}

/* End of file Cursos.php */
/* Location: ./application/controllers/admin/Cursos.php */