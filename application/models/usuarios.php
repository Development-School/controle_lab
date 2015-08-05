<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Usuarios extends CI_Model {

  public function arruma($retono)
  {
    $rows = array(); //esta variavel manterá todos os resultados
    foreach($retono->result_array() as $row){    
      $rows[] = $row; //adicionar o resultado buscado para o vetor rows;
    }
   return $rows; // retorna rows, e nao a variavel row
  }

  # LOGIN DE USUÁRIO
  public function login($cpf,$senha) 
  {
    //$cpf = $this->input->post('cpf');
  	//$senha = $this->input->post('senha');
  	//pesquisa se o cpf e a senha estão no bd
  	$this->db->where('cpf',$cpf);
  	$this->db->where('senha',$senha);
    //se a pesquisa encontrar os resultados $usuario será igual a 1
  	$usuario = $this->db->get('tblusuario')->result();		
  	return $usuario; // RETORNA usuario         
    }
    public function verificaCpf($cpf){
    $this->db->where('cpf',$cpf);
    //se a pesquisa encontrar os resultados $usuario será igual a 1
    $usuario = $this->db->get('tblusuario')->result();    
    return $usuario; // RETORNA usuario     
  }
    
  # CADASTRO DE USUÁRIO
  public function cadastro($dados)
  {    	
    return $this->db->insert('tblusuario', $dados);
  }

  public function list_usuarios($id='')
  {  
    $this->db->select('                   
      tblusuario.usuarioid,              
      tbltipousuario.tipodesc,              
      tblusuario.tipoid,              
      tblusuario.nome,              
      tblusuario.cpf,              
      tblusuario.senha,              
      tblusuario.matricula,              
      tblusuario.email,              
      tblusuario.contato, 
      ');
    $this->db->from('tblusuario');          
    $this->db->join('tbltipousuario','tblusuario.tipoid = tbltipousuario.tipoid','inner');  
    if ($id) {
      $this->db->where('tblusuario.usuarioid =', $id);
    }
    $retono = $this->db->get();
    return $this->arruma($retono);  
  }

  /**
   * @todo Pega info de tabela
   * Esta Função pega os dados de uma tabela
   */
  public function gettabela($tabela){    
    $retono = $this->db->get($tabela);
    return $this->arruma($retono);
  }  
  /**
   * @todo apaga reserva
   * Esta Função apaga os dados de uma tabela
   */
  public function apaga($id){    
    $this->db->where('usuarioid', $id);
    return $this->db->delete('tblusuario');     
  }

  public function atualiza($id, $data){    
    $this->db->where('usuarioid', $id);
    return $this->db->update('tblusuario', $data);     
  }
       
}