<?php $this->load->view('head');//Chama a view head.html?>

<title>Materiais</title>
  <link rel="stylesheet" href="<?php echo base_url('assets/css/estilo.css') ?>" >
  <style>  
  .pdf {height:800px; width:100%;}
  </style>
</head>
<body>
  <div class="container main">
  <?php /* Chama a View da Barra de navegação*/
  $dados['ativo'] = 3; $this->load->view('admin3/navbar',$dados);?>
  <div class="row">
  <div class="col-xs-12 col-sm-12 col-md-12">
     <div class="panel panel-default">
      <div class="panel-heading">
        <h3>Lista de Materiais</h3>
        <p>Aqui aparece todos os Materiais cadastrados no sistema</p>
      </div>
    <div class="panel-body">
    <?php if( $material){ 
    echo '<div class="table-responsive">
    <table class="table table-hover">
      <tr class="active">
        <th>NOME DO MATERIAL</th>
        <th>QUANTIDADE</th>
        <th></th>                    
        <th></th>                    
      </tr>';       
      foreach($material as $material) {
        echo "<tr>";
        echo '<td>'.$material['materialnome'].'</td>';
        echo '<td>'.$material['quantidade'].'</td>';
        $atts = array(
                  'title' => 'Editar',
                  'class' => 'pull-left btn btn-primary'
                );
        echo '<td>'.anchor('admin3/Material/editar/'.$material['materialid'], '<i class="fa fa-cog fa-fw fa-lg"></i>&nbsp;Editar', $atts).'</td>';
        $atts = array(
                  'title' => 'Excluir',
                  'class' => 'pull-left btn btn-danger'
                );
        echo '<td>'.anchor('admin3/Material/apaga/'.$material['materialid'], '<i class="fa fa-trash-o fa-fw fa-lg"></i>&nbsp;Excluir', $atts).'</td>';
        echo "</tr>";
        }
    echo "</table></div>";
    }else{
        echo "<center><h4><span class='label label-danger'>Nenhum Reserva foi feita ainda!</span></h4></center>"; 
        }?>
    </div>
      </div>
      </div>
    </div>
  </div>
<?php $this->load->view('footer');//Chama a view footer?>