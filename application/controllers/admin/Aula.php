<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Aula extends CI_Controller
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

  public function index($ano= '',$mes = ''){
    if ($mes == '' && $ano == '') {
      $mes = date('m');
      $ano = date('Y');
    }
    $dados['reservado'] = '';
    $dados['calendario'] = $this->calendario($ano,$mes);
    $this->layout->view('admin/aula_view',$dados);
    /*
    $this->load->model('reserva');
    $reservado = $this->reserva->reserva_mes(2015,07);
    echo "<pre>";
    print_r ($reservado);
    echo "</pre>";
    foreach ($reservado as $diarese) {
      echo $diarese['dia'].'<br>';
    }*/
  }

  public function calendario($ano,$mes){
    if ($mes == '' && $ano == '') {
      $mes = date('m');
      $ano = date('Y');
    }

    $prefs['show_next_prev'] = TRUE;
    $prefs['next_prev_url'] = base_url('admin/aula/index');
    $prefs['day_type'] = 'long';
    $prefs['template'] = '
      {table_open}<table class="table table-striped">{/table_open}

      {heading_row_start}<tr>{/heading_row_start}

      {heading_previous_cell}<th><a href="{previous_url}"><i class="pull-left fa fa-chevron-left fa-fw fa-2x"></i></a></th>{/heading_previous_cell}
      {heading_title_cell}<th colspan="{colspan}" style="font-size:20px" class="text-center">{heading}</th>{/heading_title_cell}
      {heading_next_cell}<th><a href="{next_url}"><i class="pull-right fa fa-chevron-right fa-fw fa-2x"></i></a></th>{/heading_next_cell}

      {heading_row_end}</tr>{/heading_row_end}

      {week_row_start}<tr>{/week_row_start}
      {week_day_cell}<td class="text-center" style="width:14.28571428571429%">{week_day}</td>{/week_day_cell}
      {week_row_end}</tr>{/week_row_end}

      {cal_row_start}<tr>{/cal_row_start}
      {cal_cell_start}<td>{/cal_cell_start}

      {cal_cell_content}<a class="btn btn-default btn-success btn-block" href="{content}">{day}</a>{/cal_cell_content}
      {cal_cell_content_today}<a class="btn btn-success btn-block" href="{content}">{day}</a>{/cal_cell_content_today}

      {cal_cell_no_content}<button class="btn btn-default btn-block">{day}</button>{/cal_cell_no_content}
      {cal_cell_no_content_today}<button class="btn btn-default btn-block">{day}</button>{/cal_cell_no_content_today}

      {cal_cell_blank}&nbsp;{/cal_cell_blank}

      {cal_cell_end}</td>{/cal_cell_end}
      {cal_row_end}</tr>{/cal_row_end}

      {table_close}</table>{/table_close}
    ';
    $this->load->library('calendar', $prefs);
    $this->load->model('reserva');
    $dias = $this->reserva->reserva_mes($ano,$mes);
    $data = array();
    foreach ($dias as $d) {
      if ($d['dia'] < 10) {
        $data += array($d['dia'] => base_url('admin/aula/reservas_dia').'/'.$ano.$mes.'0'.$d['dia'],);
      }
      else $data += array($d['dia'] => base_url('admin/aula/reservas_dia').'/'.$ano.$mes.$d['dia'],);
    }
    return $this->calendar->generate($ano,$mes,$data);
  }

  public function reservas_dia($dia){
    $ano = date('Y',strtotime($dia));
    $mes = date('m',strtotime($dia));
    $this->load->model('reserva');
    $dados['reservado'] = $this->reserva->reserva_dia($dia);
    $dados['calendario'] = $this->calendario($ano,$mes);
    $this->layout->view('admin/aula_view',$dados);
  }
}
/* End of file Aula.php */
/* Location: ./application/controllers/admin/Aula.php */