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
          echo '<div class="table-responsive">
          <table class="table table-hover">
            <tr class="active">
              <th>NOME</th>
              <th>TIPO</th>              
              <th>CAPACIDADE</th>
              <th></th>
              <th></th>              
            </tr>';
          foreach($labs[$unidade['unidadeid']] as $laboratorio){
            echo "<tr>";       
            foreach($laboratorio as $key => $dados){
              switch ($key) {
                case 'labnome':                  
                  echo '<td>'.$dados."</td>";
                  break;              
                case 'descricao':           
                  echo '<td>'.$dados."</td>";
                  break; 
                case 'capacidade':
                  if (isset($dados)) {  
                    echo '<td>'.$dados."</td>";
                  }else{
                    echo '<td>Não informada!</td>';}                  
                  break;
                case 'labid':           
                  $atts = array(
                  'title' => 'Editar',
                  'class' => 'pull-left btn btn-primary'
                  );
                  echo '<td>'.anchor('admin1/Labs/Editar/'.$dados, '<i class="fa fa-cog fa-fw fa-lg"></i>&nbsp;Editar', $atts).'</td>';
                  $atts = array(
                  'title' => 'Excluir',
                  'class' => 'pull-left btn btn-danger'
                  );
                  echo '<td>'.anchor('admin1/Labs/apaga/'.$dados, '<i class="fa fa-trash-o fa-fw fa-lg"></i>&nbsp;Excluir', $atts).'</td>';
                  break;              
              }                                          
            } echo '</tr>';            
          }
        echo '</table></div></div></div></div>';
     }?>
  </div>
</div>
<?php $this->load->view('footer');//Chama a view footer?>