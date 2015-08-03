<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Lab_model extends CI_Model {
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

  public function labs_unid($unidade){  
    $this->db->select('
      tbllaboratorio.labnome,  
      tbltipolab.descricao,  
      tbllaboratorio.capacidade,  
      tblunidade.unidadedesc,  
      tbllaboratorio.labid  
      ');
    $this->db->from('tbllaboratorio');          
    $this->db->join('tbltipolab','tbllaboratorio.tipolabid = tbltipolab.tipolabid','inner');    
    $this->db->join('tblunidade','tbllaboratorio.unidadeid = tblunidade.unidadeid','inner');    
    $this->db->where('tbllaboratorio.unidadeid =', $unidade);
    $retono = $this->db->get();
    return $this->arruma($retono);  
  }

	public function labs_id($id){  
    $this->db->select('
      tbllaboratorio.labnome,  
      tbltipolab.descricao,  
      tbllaboratorio.tipolabid,  
      tbllaboratorio.capacidade,  
      tblunidade.unidadedesc,  
      tblunidade.unidadeid,  
      tbllaboratorio.labid  
      ');
    $this->db->from('tbllaboratorio');          
    $this->db->join('tbltipolab','tbllaboratorio.tipolabid = tbltipolab.tipolabid','inner');    
    $this->db->join('tblunidade','tbllaboratorio.unidadeid = tblunidade.unidadeid','inner');    
    $this->db->where('tbllaboratorio.labid =', $id);
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

  # CADASTRO DE labs
  function cadastro($dados){      
    return $this->db->insert('tbllaboratorio', $dados);
  }

  # CADASTRO DE labs
  function cadastro_material($dados){      
    return $this->db->insert('tblmaterial', $dados);
  }
  function get_material($id){
    $retono = $this->db->get_where('tblmaterial', array('materialid' => $id));
    return $this->arruma($retono);
  }
  
  /**
   * @todo apaga reserva
   * Esta Função apaga os dados de uma tabela
   */
  function apaga($id){    
    $this->db->where('labid', $id);
    return $this->db->delete('tbllaboratorio');     
  }

  function apaga_material($id){    
    $this->db->where('materialid', $id);
    return $this->db->delete('tblmaterial');     
  }

  function atualiza($id, $data){    
    $this->db->where('labid', $id);
    return $this->db->update('tbllaboratorio', $data);
  }

  function atualiza_material($id, $data){    
    $this->db->where('materialid', $id);
    return $this->db->update('tblmaterial', $data);
  }

}
