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
    $local = 2;
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
    $this->load->view('admin2/laboratorios',$dados);
  }  
}