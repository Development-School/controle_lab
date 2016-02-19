<?php
defined('BASEPATH') OR exit('No direct script access allowed');

if ( ! function_exists('setMensagem'))
{
  function setMensagem($local, $mensagem, $erro = false, $tempo = 5000)
  {
    $CI =& get_instance();
    return $CI->layout->setMensagem($local, $mensagem, $erro, $tempo);
  }
}

if ( ! function_exists('checkPermissao'))
{
  function checkPermissao($tipo, $local){
    $local = strtolower($local);
    $admin = 1;
    $professor = 2;
    $tecnico = 3;
    $permissoes = array(
      $admin => 'all',
      $professor => array(
        'aula/index',
        'aula/reservas_dia',
        'labs/index',
        'reserva_lab/index',
        'reserva_lab/receber',
        'usuario/index',
        'usuario/receber',
        'paineladm/index',
        'paineladm/apagar',
      ),
      $tecnico => array(
        'labs/index',
        'material/index',
        'material/receber',
        'material/cadastrar',
        'material/editar',
        'material/apagar',
        'usuario/index',
        'usuario/receber',
        'paineladm/index',
        'paineladm/apagar',
      ),
    );
    if ($tipo == $admin) {
      return true;
    }
    else{
      return in_array($local, $permissoes[$tipo], true);
    }
  }
}

/* End of file my_helper.php */
/* Location: ./application/helpers/my_helper.php */