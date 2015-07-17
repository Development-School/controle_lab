<?= $this->load->view('head');//Chama a view head.html?>

  <title>Sistema Gerenciador de Laboratórios</title>
  
  <style>  
  .pdf {height:800px; width:100%;}
  </style>
</head>
<body>
  <div class="container main">
  <?php /* Chama a View da Barra de navegação*/
  $dados['ativo'] = 4; $this->load->view('navbar',$dados);?>
  <div class="row">
  <div class="col-xs-12 col-sm-12 col-md-12">
      <h2>Calendário de Aulas</h2>     
      <h4>Em construção  </h4>
      
  </div>
  </div>
</div>
<?= $this->load->view('footer');//Chama a view footer?>