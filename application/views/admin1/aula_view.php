<?php $this->load->view('head');//Chama a view head.html?>

  <title>Sistema Gerenciador de Laboratórios</title>
  
  <style>  
  .pdf {height:800px; width:100%;}
  </style>
</head>
<body>
  <div class="container main">
  <?php /* Chama a View da Barra de navegação*/
  $dados['ativo'] = 4; $this->load->view('admin1/navbar',$dados);?>
  <div class="row">  
    <div class="col-md-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4>Calendário de Aulas</h4>
      </div>     
      <div class="panel-body">
        <div class="table-responsive ">
        <?php echo $calendario;?></div>
      </div>
    </div>
    </div>
      <div class="col-md-6">
      <div class="panel panel-default">
      <div class="panel-heading">
        <h4>Reservas <?php if($reservado){echo strftime('do dia %d de %B de %Y', strtotime($reservado[0]['data_aula']));}?></h4>
      </div>
      <div class="panel-body">  
        <?php
        if($reservado){
          foreach($reservado as $reserva){
            echo '<dl class="dl-horizontal card ripple" data-ripple-color="#8ED8FF">
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
                      <dt>Descrição:</dt>
                      <dd>'.$reserva['descricao'].'</dd>
                    </dl><br><br>';
          }

        }else{
          echo 'Sem reservas';
        }

        ?>
        </div>
        </div>
      </div>
  </div>
</div>
<?php $this->load->view('footer');//Chama a view footer?>