<?php $this->load->view('head');//Chama a view head.html?>
<title>Laboratórios</title>
</head>
<body>
  <div class="container main">
  <?php /* Chama a View da Barra de navegação*/
  $dados['ativo'] = 2; $this->load->view('admin1/navbar',$dados);?>
  <div class="row">
     <?php foreach ($unidade as $unidade) {
     echo '
     <div class="col-sm-12"> 
      <div class="panel panel-default">
        <div class="panel-heading"><h4>'.$unidade['unidadedesc'].'</h4></div>
        <div class="panel-body">';
          //echo '<pre>';
          //print_r( $labs[$unidade['unidadeid']] );
          //echo '</pre>';
          foreach($labs[$unidade['unidadeid']] as $laboratorio){       
            echo '<div class="col-sm-6 col-md-4"><dl class="dl-horizontal card ripple" data-ripple-color="#8ED8FF">';
            foreach($laboratorio as $key => $dados){
              switch ($key) {
                case 'labnome':
                  echo '<dt>Nome:</dt>';
                  echo '<dd>'.$dados."</dd>";
                  break;              
                case 'descricao':
                  echo '<dt>Tipo:</dt>';
                  echo '<dd>'.$dados."</dd>";
                  break;              
                case 'capacidade':
                  if (isset($dados)) {                    
                    echo '<dt>Capacidade:</dt>';
                    echo '<dd>'.$dados."</dd>";
                  }else{
                    echo '<dt>Capacidade:</dt>';
                    echo '<dd>Não informada!</dd>';}                  
                  break;
              }              
            } echo '</dl></div>';            
          }
        echo '</div></div></div>';
     }?>
  </div>
</div>
<?php $this->load->view('footer');//Chama a view footer?>