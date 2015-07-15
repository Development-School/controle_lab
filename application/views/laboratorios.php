<?= $this->load->view('head');//Chama a view head.html?>

<title>Laboratórios</title>
  <link rel="stylesheet" href="<?php echo base_url('assets/css/estilo.css') ?>" >
  <style>  
  .pdf {height:800px; width:100%;}
  </style>
</head>
<body>
  <div class="container main">
  <?php /* Chama a View da Barra de navegação*/
  $dados['ativo'] = 2; $this->load->view('navbar',$dados);?>
  <div class="row">
  <div class="col-xs-12 col-sm-12 col-md-12">
     <?php 
     echo '<h4>Esses são os Laboratórios da Faculdade Pitagoras:</h4>';
     
     foreach ($lab as $lab) {
        echo '<li><h4>'.$lab['labnome'].'</h4></li>';
     }


      ?>
  </div>
  </div>
</div>  	

<?= $this->load->view('footer');//Chama a view footer?>