<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Curso_model extends CI_Model {
	/**
   * @todo Arruma no vetor
   * Esta Função organiza o retorno num vetor
   * para que as informações sejam melhor manipuladas na view
   */
  function arruma($retono){
    $rows = array(); //esta variavel manterá todos os resultados
    foreach($retono->result_array() as $row){    
      $rows[] = $row; //adicionar o resultado buscado para o vetor rows;
    }
   return $rows; // retorna rows, e nao a variavel row
  }

  
  public function list_cursos($cursoid=''){  
    $this->db->select('
      tblcurso.cursoid, 
			tblcurso.cursodesc, 
			tblperiodo.periododesc              
      ');
    $this->db->from('tblcurso');          
    $this->db->join('tblfiltroperiodo','tblcurso.cursoid = tblfiltroperiodo.cursoid','inner');
    $this->db->join('tblperiodo','tblfiltroperiodo.periodoid = tblperiodo.periodoid','inner');
    if ($cursoid) {
    	$this->db->where('tblcurso.cursoid =', $cursoid);
    }
    $retono = $this->db->get();
    return $this->arruma($retono);  
  }

  public function grade($cursoid){  
    $this->db->select('
      tbldisciplina.disciplinadesc              
      ');
    $this->db->from('tblcurso');          
    $this->db->join('tblgrade','tblcurso.cursoid = tblgrade.cursoid','inner');
    $this->db->join('tbldisciplina','tblgrade.disciplinaid = tbldisciplina.disciplinaid','inner');
    $this->db->where('tblcurso.cursoid =', $cursoid);
    $retono = $this->db->get();
    return $this->arruma($retono);  
  }

  /**
   * @todo Pega info de tabela
   * Esta Função pega os dados de uma tabela
   */
  function gettabela($tabela){    
    $retono = $this->db->get($tabela);
    return $this->arruma($retono);
  }

  public function cadastro($dadoscurso, $dadosperiodo, $dadosdisc)
  {
  	$this->db->insert('tblcurso', $dadoscurso);
  	//A função insert_id() retorna o ultimo id inserido no bd
  	$curso_id = $this->db->insert_id();
  	$dadosperiodo['cursoid'] = $curso_id;
  	$this->db->insert('tblfiltroperiodo', $dadosperiodo);
  	/*echo "<pre>";
    var_dump($dadosdisc);
    echo "</pre>";*/
  	foreach ($dadosdisc as $dados) {
  		$grade['cursoid'] = $curso_id;
  		$grade['disciplinaid'] = $dados;
  		$this->db->insert('tblgrade', $grade);
	  	/*echo "<pre>";
	    var_dump($grade);
	    echo "</pre>";*/
  	}
  	return $erro = $this->db->error();   	 
  }
}
/* End of file Curso_model.php */
/* Location: ./application/models/Curso_model.php */