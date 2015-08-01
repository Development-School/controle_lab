<?php $this->load->view('head');//Chama a view head.html?>

<title>Cursos</title>
  <link rel="stylesheet" href="<?php echo base_url('assets/css/estilo.css') ?>" >
  <style>  
  .pdf {height:800px; width:100%;}
  </style>
</head>
<body>
  <div class="container main">
  <?php /* Chama a View da Barra de navegação*/
  $dados['ativo'] = 9; $this->load->view('admin1/navbar',$dados);?>
  <div class="row">
  <div class="col-xs-12 col-sm-12 col-md-12">
     <div class="panel panel-default">
      <div class="panel-heading">
        <h3><?php echo $curso[0]['cursodesc']; ?></h3>
        <p><?php echo $curso[0]['periododesc']; ?>- Aqui aparece todas as disciplinas do curso</p>
      </div>
    <div class="panel-body">
    <?php if( $disciplinas){ 
    echo '<div class="table-responsive">
    <table class="table table-hover">
      <tr class="active">
        <th>DISCIPLINAS</th>                         
      </tr>';       
      foreach($disciplinas as $disciplinas) {
        echo "<tr>";
        echo '<td>'.$disciplinas['disciplinadesc'].'</td>';
        echo "</tr>";
        }
    echo "</table></div>";
    }else{
        echo "<center><h4><span class='label label-danger'>Nenhuma Disciplina encontrada!</span></h4></center>"; 
        }
        /*
        echo "<pre>";
        var_dump($disciplinas);
        echo "</pre>";*/
        ?>
    </div>
      </div>
      </div>
    </div>
  </div>
<?php $this->load->view('footer');//Chama a view footer?>