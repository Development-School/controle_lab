<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index(){
		$this->load->view('site/menu');
		$this->load->view('site/home');
		$this->load->view('site/footer');
	}
	public function calendario($ano= '',$mes = ''){
    if ($mes == '' && $ano == '') {
      $mes = date('m');
      $ano = date('Y');
    }
    $dados['reservado'] = '';
    $dados['calendario'] = $this->mycalendario($ano,$mes);		
		$this->load->view('site/calendario',$dados);
	}
	public function lista(){
		$this->load->view('site/menu');
		$this->load->view('site/lista');
		$this->load->view('site/footer');
	}
	public function sobre(){
		$this->load->view('site/menu');
		$this->load->view('site/sobre');
		$this->load->view('site/footer');
	}
	public function ajuda(){
    $this->load->view('site/menu');
    $this->load->view('site/ajuda');
    $this->load->view('site/footer');
  }
  public function login(){
		$this->load->view('site/menu');
		$this->load->view('site/login');
		$this->load->view('site/footer');
	}
	public function laboratorios(){
		$this->load->view('site/menu');
		$this->load->view('site/lista');
		$this->load->view('site/footer');
	}

	public function mycalendario($ano,$mes){    
    if ($mes == '' && $ano == '') {
      $mes = date('m');
      $ano = date('Y');
    }
    
    $prefs['show_next_prev'] = TRUE;
    $prefs['next_prev_url'] = base_url('Home/calendario');
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

      {cal_cell_content}<a class="btn btn-default btn-success" href="{content}" data-target="#myModal" role="button" data-toggle="modal">{day}</a>{/cal_cell_content}
      {cal_cell_content_today}<a class="btn btn-success" href="{content}" data-target="#myModal" role="button" data-toggle="modal">{day}</a>{/cal_cell_content_today}

      {cal_cell_no_content}<button class="btn btn-default">{day}</button>{/cal_cell_no_content}
      {cal_cell_no_content_today}<button class="btn btn-default">{day}</button>{/cal_cell_no_content_today}

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
        $data += array($d['dia'] => base_url('Home/reservas_dia').'/'.$ano.$mes.'0'.$d['dia'],);
      } 
      else $data += array($d['dia'] => base_url('Home/reservas_dia').'/'.$ano.$mes.$d['dia'],);
    }
    return $this->calendar->generate($ano,$mes,$data);
  }

  public function reservas_dia($dia){
    $ano = date('Y',strtotime($dia));  
    $mes = date('m',strtotime($dia));    
    $this->load->model('reserva');
    $reservado = $this->reserva->reserva_dia($dia);  
    //$dados['calendario'] = $this->mycalendario($ano,$mes);
    //$this->load->view('site/calendario',$dados);
    echo '<div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Reservas '.strftime('do dia %d de %B de %Y', strtotime($reservado[0]['data_aula'])).'</h4>
        </div>
        <div class="modal-body">';
    foreach($reservado as $reserva){
      echo '<dl class="dl-horizontal">
                <dt>Data da Aula:</dt>
                <dd>'.utf8_encode(strftime('%A, %d de %B de %Y', strtotime($reserva['data_aula']))).'</dd>
                <dt>Professor:</dt>
                <dd>'.$reserva['nome'].'</dd>
                <dt>Curso:</dt>
                <dd>'.$reserva['cursodesc'].'</dd>
                <dt>Disciplina:</dt>
                <dd>'.$reserva['disciplinadesc'].'</dd>
                <dt>Periodo:</dt>
                <dd>'.$reserva['periododesc'].'</dd>
                <dt>Turno:</dt>
                <dd>'.$reserva['turnodesc'].'</dd>
                <dt>Unidade:</dt>
                <dd>'.$reserva['unidadedesc'].'</dd>
                <dt>Laboratório:</dt>
                <dd>'.$reserva['labnome'].'</dd>
                <dt>Tema:</dt>
                <dd>'.$reserva['titulo_aula'].'</dd>
                <dt>Descrição:</dt>
                <dd>'.$reserva['descricao'].'</dd>
              </dl><hr>';
    }
    echo '</div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
        </div>';
    return;    
  }
}